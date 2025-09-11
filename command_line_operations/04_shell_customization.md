# Linux Command Line – Shell Prompt & Customization

* **PS1** → controls shell prompt appearance

```bash
PS1="\u@\h:\w $ "  # user@host:current_dir $
PS1="🐧 \[\e[0;35m\]\u\[\e[0m\]@\[\e[0;36m\]\h\[\e[0m\]:\[\e[0;33m\]\w\[\e[0m\] \$ "
````

* `\u` → username
* `\h` → hostname
* `\w` → current working directory
* Colors via `\[\e[<color code>m\] ... \[\e[0m\]`



---
[⬅ Previous: 03_links.md](03_links.md) | [Next: 05_user_permissions.md ➡](05_user_permissions.md)

<hr>
<div style="display: flex; justify-content: space-between;"><div>[⬅ Previous: 03_links.md](03_links.md)</div><div>[Next: 05_user_permissions.md ➡](05_user_permissions.md)</div></div>

<hr>
<div style='display: flex; justify-content: space-between;'>
  <div><a href='03_links.md'>⬅ Previous: 03_links.md</a></div>
  <div><a href='05_user_permissions.md'>Next: 05_user_permissions.md ➡</a></div>
</div>

---
| [Previous: 03_links.md](03_links.md) | [Next: 05_user_permissions.md](05_user_permissions.md) |
|--------|---------|
