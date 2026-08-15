#!/usr/bin/env sh

export ANY_FAILURE=""
BASE_PATH="/data"
RETENTION_DAYS="${AUTHELIA_BACKUP_RETENTION_DAYS:-2}"
BACKUP_DIR="/backups/$(basename "$BASE_PATH")/$(TZ="UTC" date +"%Y-%m-%dT%H:%M:%SZ")"
mkdir -p "$BACKUP_DIR"
chmod 755 "/backups/$(basename "$BASE_PATH")"
chmod 755 "$BACKUP_DIR"

backupFailed() {
    ANY_FAILURE="_"
    originFilePath="$1"; shift
    originExitCode="$1"; shift
    echo "Backup of file '$originFilePath' failed with exit code '$originExitCode', continuing to next file..."
}

echo "Starting backup of '$BASE_PATH' to '$BACKUP_DIR'..."

find "$BASE_PATH" -type f | sort | while read -r filePath; do
    backupPath="$BACKUP_DIR/${filePath#"$BASE_PATH"/}"
    fileExtension=""
    case "$(basename "$filePath")" in
        ?*.*)
            fileExtension="${filePath##*.}" ;;
    esac
    echo "Backing up '$filePath' to '$backupPath'"
    mkdir -p "$(dirname "$backupPath")"
    if [ "$fileExtension" = "db" ] || [ "$fileExtension" = "sqlite" ] || [ "$fileExtension" = "sqlite3" ]; then
        echo "Extension is '$fileExtension' => Hot backup of SQLite database"
        sqlite3 "$filePath" ".backup '$backupPath'"
        exitCode="$?"; [ "$exitCode" -ne "0" ] && backupFailed "$filePath" "$exitCode"
    else
        echo "Extension is '${fileExtension:-(empty)}' => Simple copy operation"
        cp -a "$filePath" "$backupPath"
        exitCode="$?"; [ "$exitCode" -ne "0" ] && backupFailed "$filePath" "$exitCode"
    fi
done

echo "Cleaning up backups older than $RETENTION_DAYS days..."
find "/backups/$(basename "$BASE_PATH")" -mindepth 1 -maxdepth 1 -type d -mtime +"$RETENTION_DAYS" -exec rm -rf {} +

{ [ -z "$ANY_FAILURE" ] && echo "Backup job completed successfully."; } || { echo "Backup job caused errors." && exit 1; }
