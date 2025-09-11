#!/bin/bash

DIR="./"

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
  
  if [ $i -eq 0 ]; then
    PREV="<a href='index.md'>⬅ Home</a>"
  else
    PREV="<a href='${FILES[$i-1]}'>⬅ Previous: ${FILES[$i-1]}</a>"
  fi

  if [ $i -eq $((${#FILES[@]} - 1)) ]; then
    NEXT=""
  else
    NEXT="<a href='${FILES[$i+1]}'>Next: ${FILES[$i+1]} ➡</a>"
  fi

  # HTML flexbox for left/right links
  if [ -z "$NEXT" ]; then
    NAV="<hr>
<div style='display: flex; justify-content: flex-start;'>$PREV</div>"
  else
    NAV="<hr>
<div style='display: flex; justify-content: space-between;'>
  <div>$PREV</div>
  <div>$NEXT</div>
</div>"
  fi

  echo -e "\n$NAV" >> "$DIR/$FILE"
done

echo "Clickable left/right navigation links added to all files!"
