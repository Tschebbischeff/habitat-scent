[![License: AGPL-3.0](https://img.shields.io/badge/License-AGPL--3.0-blue?style=flat)](./LICENSE)
![Development: Prototyping](https://img.shields.io/badge/Development-Prototyping-orange?style=flat)
![Version](https://img.shields.io/badge/dynamic/json?label=Version&color=yellow&style=flat&url=https%3A%2F%2Fraw.githubusercontent.com%2Ftschebbischeff%2Fhabitat-scent%2Frefs%2Fheads%2Fmain%2Fmetadata.json&query=%24.version)

# Habitat: Scent

**🚧
This project is currently under heavy development, any information may be subject to change.
🚧**

Habitat provides modular functionality for deployment on home lab devices. \
Each of the modules is designed as an opinionated docker stack that can be deployed on its own or together with other modules by sharing the same docker network.

## Available Modules

 - **[Path](https://github.com/Tschebbischeff/habitat-path)** \
 Connectivity and Routing
 - **[Scent](https://github.com/Tschebbischeff/habitat-scent)** \
 Authentication and User Management
 - **[Chatter](https://github.com/Tschebbischeff/habitat-chatter)** \
 Communication between modules
 - **[Hoard](https://github.com/Tschebbischeff/habitat-hoard)** \
 Data storage
 - **[Vigil](https://github.com/Tschebbischeff/habitat-vigil)** \
 Monitoring
 - **[Vista](https://github.com/Tschebbischeff/habitat-vista)** \
 Dashboards and User Interfaces

## Our Principles

![TODO](https://img.shields.io/badge/TODO-Coming_Soon_(TM)-red?style=flat)

## Features

[![Authelia](https://img.shields.io/badge/Authelia-_?style=flat&logo=authelia&logoColor=113155&logoSize=auto&color=gray&labelColor=gray)](https://www.authelia.com/)
[![LLDAP](https://img.shields.io/badge/LLDAP-_?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAxODEuOSA3MCI+PGcgaWQ9InN2Z0dyb3VwIiBzdHJva2UtbGluZWNhcD0icm91bmQiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZm9udC1zaXplPSI5cHQiIHN0cm9rZT0iIzIyMjIyMiIgc3Ryb2tlLXdpZHRoPSIwbW0iIGZpbGw9IiMyMjIyMjIiIHN0eWxlPSJzdHJva2U6IzIyMjIyMjtzdHJva2Utd2lkdGg6MG1tO2ZpbGw6IzIyMjIyMiI+PHBhdGggZD0iTSAwIDcwLjAwMSBMIDAgMC4wMDEgTCAxMSAwLjAwMSBMIDExIDYwLjAwMSBMIDI5LjEgNjAuMDAxIEwgMjkuMSA3MC4wMDEgTCAwIDcwLjAwMSBaIiBpZD0iMCIgdmVjdG9yLWVmZmVjdD0ibm9uLXNjYWxpbmctc3Ryb2tlIi8+PHBhdGggZD0iTSAzNC40IDcwLjAwMSBMIDM0LjQgMC4wMDEgTCA0NS40IDAuMDAxIEwgNDUuNCA2MC4wMDEgTCA2My41IDYwLjAwMSBMIDYzLjUgNzAuMDAxIEwgMzQuNCA3MC4wMDEgWiIgaWQ9IjEiIHZlY3Rvci1lZmZlY3Q9Im5vbi1zY2FsaW5nLXN0cm9rZSIvPjxwYXRoIGQ9Ik0gNjguOCA3MC4wMDEgTCA2OC44IDAuMDAxIEwgODUuNiAwLjAwMSBRIDkzLjggMC4wMDEgOTcuOSA0LjQwMSBRIDEwMiA4LjgwMSAxMDIgMTcuMzAxIEwgMTAyIDUyLjcwMSBRIDEwMiA2MS4yMDEgOTcuOSA2NS42MDEgUSA5My44IDcwLjAwMSA4NS42IDcwLjAwMSBMIDY4LjggNzAuMDAxIFogTSA3OS44IDYwLjAwMSBMIDg1LjQgNjAuMDAxIFEgODguMSA2MC4wMDEgODkuNTUgNTguNDAxIFEgOTEgNTYuODAxIDkxIDUzLjIwMSBMIDkxIDE2LjgwMSBRIDkxIDEzLjIwMSA4OS41NSAxMS42MDEgUSA4OC4xIDEwLjAwMSA4NS40IDEwLjAwMSBMIDc5LjggMTAuMDAxIEwgNzkuOCA2MC4wMDEgWiIgaWQ9IjIiIHZlY3Rvci1lZmZlY3Q9Im5vbi1zY2FsaW5nLXN0cm9rZSIvPjxwYXRoIGQ9Ik0gMTA2LjMgNzAuMDAxIEwgMTE3LjcgMC4wMDEgTCAxMzIuNiAwLjAwMSBMIDE0NCA3MC4wMDEgTCAxMzMgNzAuMDAxIEwgMTMxIDU2LjEwMSBMIDEzMSA1Ni4zMDEgTCAxMTguNSA1Ni4zMDEgTCAxMTYuNSA3MC4wMDEgTCAxMDYuMyA3MC4wMDEgWiBNIDExOS44IDQ2LjgwMSBMIDEyOS43IDQ2LjgwMSBMIDEyNC44IDEyLjIwMSBMIDEyNC42IDEyLjIwMSBMIDExOS44IDQ2LjgwMSBaIiBpZD0iMyIgdmVjdG9yLWVmZmVjdD0ibm9uLXNjYWxpbmctc3Ryb2tlIi8+PHBhdGggZD0iTSAxNDkuMyA3MC4wMDEgTCAxNDkuMyAwLjAwMSBMIDE2NS41IDAuMDAxIFEgMTczLjcgMC4wMDEgMTc3LjggNC40MDEgUSAxODEuOSA4LjgwMSAxODEuOSAxNy4zMDEgTCAxODEuOSAyNC4yMDEgUSAxODEuOSAzMi43MDEgMTc3LjggMzcuMTAxIFEgMTczLjcgNDEuNTAxIDE2NS41IDQxLjUwMSBMIDE2MC4zIDQxLjUwMSBMIDE2MC4zIDcwLjAwMSBMIDE0OS4zIDcwLjAwMSBaIE0gMTYwLjMgMzEuNTAxIEwgMTY1LjUgMzEuNTAxIFEgMTY4LjIgMzEuNTAxIDE2OS41NSAzMC4wMDEgUSAxNzAuOSAyOC41MDEgMTcwLjkgMjQuOTAxIEwgMTcwLjkgMTYuNjAxIFEgMTcwLjkgMTMuMDAxIDE2OS41NSAxMS41MDEgUSAxNjguMiAxMC4wMDEgMTY1LjUgMTAuMDAxIEwgMTYwLjMgMTAuMDAxIEwgMTYwLjMgMzEuNTAxIFoiIGlkPSI0IiB2ZWN0b3ItZWZmZWN0PSJub24tc2NhbGluZy1zdHJva2UiLz48L2c+PC9zdmc+&logoColor=EB5424&logoSize=auto&color=gray&labelColor=gray)](https://github.com/lldap/lldap)

 - **Local Single Sign-On** \
 Log in once to access all available apps according to the users permissions
 - **User Management** \
 Add additional users and assign access permissions via LLDAP

### Planned
 - **Fine-Grained Access Control** \
 Control access to services via LLDAP group assignments

## Getting Started

### Requirements

 - [![Habitat-Module: Path](https://img.shields.io/badge/Habitat--Module-Path-_?style=flat&logo=data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTUwIiBoZWlnaHQ9IjE1MCIgdmlld0JveD0iMjUgMjAgMTUwIDE1MCIgZmlsbD0ibm9uZSIKICAgIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+CiAgICA8cGF0aCBkPSJNMTAwIDIwTDMwIDc1VjE3MEgxNzBWNzVMMTAwIDIwWiIgZmlsbD0iIzc3ZTE5OSIvPgoKICAgIDxwYXRoIGQ9Ik0xMDAgNjVMMTQ1IDkwVjE0MEwxMDAgMTY1TDU1IDE0MFY5MEwxMDAgNjVaIiBmaWxsPSIjMzE4MkNFIi8+CgogICAgPHBhdGggZD0iTTEwMCA2NUwxNDUgOTBMMTAwIDExNUw1NSA5MEwxMDAgNjVaIiBmaWxsPSIjNjNCM0VEIi8+CiAgICA8cGF0aCBkPSJNMTAwIDExNVYxNjVMNTUgMTQwVjkwTDEwMCAxMTVaIiBmaWxsPSIjMkI2Q0IwIi8+CgogICAgPHBhdGggZD0iTTEwMCA2NUwxNDUgOTBMMTAwIDExNUw1NSA5MEwxMDAgNjVaIiBzdHJva2U9IiM3N2UxOTkiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIvPgogICAgPHBhdGggZD0iTTEwMCAxMTVWMTY1IiBzdHJva2U9IiM3N2UxOTkiIHN0cm9rZS13aWR0aD0iNCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIi8+Cjwvc3ZnPgo=&logoColor=113155&logoSize=auto&color=gray&labelColor=gray)](https://github.com/Tschebbischeff/habitat-path)

### Configuration

The application is designed to be controlled exclusively with environment variables and secrets.

All secrets are expected to be files within a single folder. This folder can be set via environment variable (`SECRETS_DIR`) itself and defaults to `./.secrets` (git-ignored folder).

 - [List of environment variables](#environment-variables)
 - [List of secrets](#secrets)

#### Shell Exports

The existing [.env](./.env) file contains sane defaults for most necessary environment variables and is designed to let you overwrite any of those environment variables via exports from your shell before running the application.

*Example:*
```sh
export APP_HOST="my-habitat.example.com"
export APP_NAME_LABEL="MyHabitat"
export TIMEZONE="Europe/London"
export SECRETS_DIR="/run/secrets"
docker compose up
```

#### Repository ._env File

You can also create the file `._env` in the root directory of the cloned repository and instruct docker compose to use this file instead via the `--env-file` argument, i.e `docker compose up --env-file "./._env"` ([Compose documentation](https://docs.docker.com/compose/how-tos/environment-variables/variable-interpolation/)).

> ℹ️ The file `._env` is included in [.gitignore](./.gitignore) and is guaranteed to not interfere with future updates via `git pull`.

> *⚠️
> If this method is used you need to define **all** necessary environment variables from the [.env](./.env) file, as docker compose will not use that file as a fallback, it is therefore recommended to copy the current `.env` file and replace all variable values.
> ⚠️*

*Example:* [See .env](./.env)

#### Local .env File

It is also possible to create a `.env` file in an unrelated directory ([Compose documentation](https://docs.docker.com/compose/how-tos/environment-variables/variable-interpolation/#local-env-file-versus-project-directory-env-file)).

> ℹ️ In this case you need to set the additional variable `COMPOSE_FILE` to the path of the repository's compose file and all variables inside the [.env](./.env) file will be loaded as fallback, if your own `.env` file does not define them.

> ℹ️ You do not need to instruct docker compose to use this file as long as you run `docker compose up` from the directory containing your `.env` file.

*Example:*
```sh
# /path/to/your/.env
COMPOSE_FILE="/path/to/repository/compose.yml"
APP_HOST="my-habitat.example.com"
APP_NAME_LABEL="MyHabitat"
TIMEZONE="Europe/Madrid"
SECRETS_DIR="/run/secrets"
```

### Environment Variables

At build-time Docker requires the following environment variables to be populated:

| Name | Description | Example | Default |
| :-- | :-- | :-- | :-- |
| `APP_HOST` | The main URL the device will be reachable at. | `my-habitat.example.com` | *Empty* |
| `APP_MODULE_NAME` | The name of this habitat module to differentiate it from other modules. Used for differentiating sources of injected files for example. | `core` | `path` |
| `APP_NAME_HOST` | The prefix for all docker networks and containers, that this application will create. Also used as the internal hostname within all containers. | `my-habitat` | `habitat` |
| `APP_NAME_LABEL` | The human readable name of the device. | `My Habitat` | `Habitat` |
| `TIMEZONE` | Timezone identifier passed on to containers. | `Europe/Paris` | `Europe/Berlin` |
| `VOLUME_DIR` | The directory in which [bind mounts](https://docs.docker.com/engine/storage/bind-mounts/) are placed *(Currently only named volumes are used)*. | `/path/to/my/volumes` | `./volumes` |
| `ENV_DIR` | The directory in which .env files for containers can be placed to override the default runtime config. | `/path/to/my/env` | `./env.d` |
| `SECRETS_DIR` | The directory in which files containing secrets for containers are placed. | `/run/secret` | `./secrets` |

### Secrets

The following secrets must exist within the `SECRETS_DIR` directory at build-time, otherwise running the stack will fail.
They are expected to be files with the secret value being the content of the file.

| (File) Name | Description | Documentation / How to Obtain |
| :-- | :-- | :-- |
| `AUTHELIA_OIDC_HMAC_SECRET` | Randomly generated HMAC key to secure OIDC. | [Authelia Docs: Generate Random Alphanumeric String](https://www.authelia.com/reference/guides/generating-secure-values/#generating-a-random-alphanumeric-string) |
| `AUTHELIA_OIDC_JWKS_KEY_PRIVATE` | Randomly generated private key to sign and verify OIDC tokens (multiline). | [Authelia Docs: Generate RSA Keypair](https://www.authelia.com/reference/guides/generating-secure-values/#generating-an-rsa-keypair) |
| `GRAFANA_OAUTH_CLIENT_ID` | Randomly generated OAuth client ID for Grafana. | [Authelia Docs: Generate Client ID](https://www.authelia.com/integration/openid-connect/frequently-asked-questions/#client-id--identifier) |
| `GRAFANA_OAUTH_CLIENT_SECRET_HASHED_PBKDF2` | PBKDF2 digest of `GRAFANA_OAUTH_CLIENT_SECRET`. | [Authelia Docs: Generate Client Secret](https://www.authelia.com/integration/openid-connect/frequently-asked-questions/#client-secret) |
| `LLDAP_JWT_SECRET` | Randomly generated string. | [LLDAP generate_secrets.sh](https://github.com/lldap/lldap/blob/main/generate_secrets.sh) |
| `LLDAP_KEY_SEED` | Randomly generated string. | [LLDAP generate_secrets.sh](https://github.com/lldap/lldap/blob/main/generate_secrets.sh) |
| `LLDAP_ADMIN_PASSWORD` | Password for the initial admin account. | Your preferred method. |

### Run the Application

 - Run `docker compose up` from the root directory of the repository or from the directory containing your `.env` file
 - Run `docker compose logs` and wait for the application to finish first-time setup and settle
 - Visit `lldap.${APP_HOST}` and login with username `admin` and the password set up via `LLDAP_ADMIN_PASSWORD` for user management

## Acknowledgments and Licensing

This project is licensed under the [GNU Affero General Public License v3.0 (AGPL-3.0)](./LICENSE).

Copyright (c) 2026, [Tschebbischeff](https://github.com/Tschebbischeff). \
All rights reserved to the extent permitted by the AGPLv3.

For third-party license details and attribution, please see [Third-Party Licenses](./THIRD-PARTY-LICENSES.md).