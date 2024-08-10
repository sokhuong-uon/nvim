#!/usr/bin/env bash
set -eo pipefail

NVIM_CONFIG_DIR="$HOME/.config/nvim"
REPO_URL="https://github.com/sokhuong-uon/nvim.git"

function main() {
  check_dependencies
  backup_existing_config
  clone_repository
  print_success_message
}

function check_dependencies() {
  for cmd in git; do
    command -v "$cmd" >/dev/null 2>&1 || { echo >&2 "$cmd is required but not installed. Aborting."; exit 1; }
  done
}

function backup_existing_config() {
  if [ -d "$NVIM_CONFIG_DIR" ]; then
    echo "Backing up existing configuration..."
    mv "$NVIM_CONFIG_DIR" "${NVIM_CONFIG_DIR}.old"
  fi
}

function clone_repository() {
  echo "Cloning Nvim configuration..."
  git clone "$REPO_URL" "$NVIM_CONFIG_DIR"
}

function print_success_message() {
  echo "Nvim configuration has been successfully installed!"
  echo "Next steps:"
  echo "  - (optional) Install whichkey extension in VSCode"
  echo "  - (optional) Add whichkey keybindings to your settings.json in VSCode"
  echo "  - Open an issue on GitHub if you have any questions or problems"
}

main