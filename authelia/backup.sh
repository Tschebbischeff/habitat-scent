#!/usr/bin/env bash

BASE_PATH="/data"
RETENTION_DAYS="${AUTHELIA_BACKUP_RETENTION_DAYS:-2}"
BACKUP_DIR="/backups/${BASE_PATH#/}/$(TZ="UTC" date +"%Y-%m-%dT%H:%M:%SZ")"
mkdir -p "$BACKUP_DIR"

backupFailed() {
    originFilePath="$1"; shift
    originExitCode="$1"; shift
    echo "Backup of file '$originFilePath' failed with exit code '$originExitCode', continuing to next file..."
}

echo "Starting backup of '$BASE_PATH' to '$BACKUP_DIR'..."

find "$BASE_PATH" -type f | sort | while read -r filePath; do
    backupPath="$BACKUP_DIR/${filePath#"$BASE_PATH"/}"
    fileExtension=""
    [[ "$(basename "$filePath")" == ?*.* ]] && fileExtension="${filePath##*.}"
    echo "Backing up '$filePath' to '$backupPath'"
    mkdir -p "$(dirname "$backupPath")"
    if [ "$fileExtension" == "db" ] || [ "$fileExtension" == "sqlite" ] || [ "$fileExtension" == "sqlite3" ]; then
        echo "Extension is '$fileExtension' => Hot backup of SQLite database"
        sqlite3 "$filePath" ".backup '$backupPath'" || backupFailed "$filePath" "$?"
    else
        echo "Extension is '${fileExtension:-(empty)}' => Simple copy operation"
        cp -a "$filePath" "$backupPath" || backupFailed "$filePath" "$?"
    fi
done

echo "Cleaning up backups older than $RETENTION_DAYS days..."
find "/backups/${BASE_PATH#/}" -type d -mindepth 1 -maxdepth 1 -mtime +"$RETENTION_DAYS" -exec rm -rf {} +

echo "Backup job completed successfully."