#!/usr/bin/env bash

split() {
  # Usage: split "string" "output" "delimiter"
  # Retuns: output (array)
  IFS=$'\n' read -d "" -ra "$2" <<< "${1//$3/$'\n'}"
}

get_pkg_list() {
  # Usage: get_pkg_list "$@"
  # Returns: pkg_list (array)
  pkg_list=()
  local entry pkg
  for entry in "$@"; do
    split "$entry" "pkg" "\/"
    if [[ ${pkg[-1]} == "PKGBUILD" ]] && [[ ${#pkg[@]} -gt 3 ]]; then
      pkg_list+=("${pkg[-2]}")
    fi
  done
}

# Run
output="$(git diff-tree --name-only --no-commit-id -r HEAD)"

split "$output" "output" "\n"
get_pkg_list "${output[@]}"

# Test
echo "${pkg_list[@]}"

