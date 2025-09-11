# Linux Command Line – Shell Prompt & Customization

* **PS1** → controls shell prompt appearance

```bash
PS1="\u@\h:\w $ "  # user@host:current_dir $
PS1="🐧 \[[0;35m\]\u\[[0m\]@\[[0;36m\]\h\[[0m\]:\[[0;33m\]\w\[[0m\] \$ "
````

* `\u` → username
* `\h` → hostname
* `\w` → current working directory
* Colors via `\[[<color code>m\] ... \[[0m\]`
---
[⬅ Previous: 03_links.md](03_links.md) | [Next: 05_user_permissions.md ➡](05_user_permissions.md)
