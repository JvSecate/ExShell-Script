#!/bin/bash
read -p "Insira um diretorio: " dir

gerararv() {
  local dir="$1"
  local indent="$2"

  for item in "$dir"/*; do
    echo "$indent$(basename "$item")"
    if [ -d "$item" ]; then
      gerararv "$item" "$indent  "
    fi
  done
}

echo ""
gerararv "$dir" ""
