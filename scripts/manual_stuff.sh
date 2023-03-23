
#!/usr/bin/env bash

SCRIPT=$(realpath "$0")
SCRIPT_DIR_PATH=$(dirname "$SCRIPT")

PROJECT_ROOT_ABS_PATH=$(realpath "$SCRIPT_DIR_PATH/../")
docker run -ti -d --name da2023 -v $PROJECT_ROOT_ABS_PATH:/root/DA2023 iszagh/cmdstan_python:1


# manual stuff
# configuration
docker volume create --driver local -o o=bind -o type=none -o device=D:\Documents\Krzysiek-STUDIA___\2023_lato\DA-DataAnalytics\AiR_ISZ_DA AiR_ISZ_DA
docker run -ti -d --name DA2023 -v AiR_ISZ_DA:/home iszagh/cmdstan_python:1

# after work is complete
wsl --shutdown
optimise-vhd -Path .\ext4.vhdx -Mode full