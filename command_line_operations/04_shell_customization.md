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


