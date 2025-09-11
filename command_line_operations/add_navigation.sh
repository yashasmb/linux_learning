#!/bin/bash

DIR="./"  # directory with your Markdown files

FILES=(
  "01_file_viewing.md"
  "02_file_directory_management.md"
  "03_links.md"
  "04_shell_customization.md"
  "05_user_permissions.md"
  "06_package_management.md"
  "07_virtual_terminals.md"
  "08_boot_process.md"
  "09_search_locate.md"
  "10_wildcards_regex.md"
  "11_shutdown.md"
  "12_cd.md"
  "13_pushd_popd.md"
)

for i in "${!FILES[@]}"; do
  FILE="${FILES[$i]}"
  
  # Determine previous link
  if [ $i -eq 0 ]; then
    PREV="[Home](index.md)"
  else
    PREV="[Previous: ${FILES[$i-1]}](${FILES[$i-1]})"
  fi

  # Determine next link
  if [ $i -eq $((${#FILES[@]} - 1)) ]; then
    NEXT=""
  else
    NEXT="[Next: ${FILES[$i+1]}](${FILES[$i+1]})"
  fi

  # Create navigation table
  if [ -z "$NEXT" ]; then
    NAV="\n---\n| $PREV |  |\n|--------|--|"
  else
    NAV="\n---\n| $PREV | $NEXT |\n|--------|---------|"
  fi

  # Append table to file
  echo -e "$NAV" >> "$DIR/$FILE"
done

echo "GitHub-compatible previous/next navigation tables added to all files!"
