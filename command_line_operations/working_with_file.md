Here’s your Linux Command Line cheat sheet, neatly formatted and organized with consistent headings, tables, and code blocks:

---

# Linux Command Line Cheat Sheet

---

## 1. File Viewing & Content

| Command | Purpose                                | Example                |
| ------- | -------------------------------------- | ---------------------- |
| `cat`   | Display file contents or combine files | `cat file1.txt`        |
| `head`  | Show first few lines of a file         | `head -n 10 file1.txt` |
| `tail`  | Show last few lines of a file          | `tail -n 10 file1.txt` |
| `wc`    | Count lines, words, characters         | `wc -l file1.txt`      |

---

## 2. File & Directory Management

| Command | Purpose                 | Example                       |
| ------- | ----------------------- | ----------------------------- |
| `pwd`   | Print working directory | `pwd`                         |
| `touch` | Create empty file       | `touch file1`                 |
| `mv`    | Move or rename file     | `mv file1.txt backup/`        |
| `rm`    | Remove file/directory   | `rm -rf old_logs/`            |
| `ls`    | List directory contents | `ls -lR dir` or `ls -lR dir*` |
| `cp`    | Copy file/directory     | `cp -i file1.txt /tmp/`       |

**Notes:**

* `dir` → one directory
* `dir*` → all files/directories starting with `dir`

---

## 3. Links

| Command | Purpose                         | Example                     |
| ------- | ------------------------------- | --------------------------- |
| `ln`    | Create **hard link**            | `ln file1 file2`            |
| `ln -s` | Create **symbolic (soft) link** | `ln -s file1 link_to_file1` |

---

## 4. Shell Prompt & Customization

* **PS1** → controls shell prompt appearance

```bash
PS1="\u@\h:\w $ "  # user@host:current_dir $
PS1="🐧 \[\e[0;35m\]\u\[\e[0m\]@\[\e[0;36m\]\h\[\e[0m\]:\[\e[0;33m\]\w\[\e[0m\] \$ "
```

* `\u` → username
* `\h` → hostname
* `\w` → current working directory
* Colors via `\[\e[<color code>m\] ... \[\e[0m\]`

---

## 5. User & Permissions

| Command | Purpose             | Example           |
| ------- | ------------------- | ----------------- |
| `sudo`  | Run command as root | `sudo apt update` |
| `su`    | Switch user         | `su root`         |

---

## 6. Package Management

### APT (Debian/Ubuntu)

| Command                      | Purpose                 |
| ---------------------------- | ----------------------- |
| `sudo apt install <package>` | Install package         |
| `sudo apt remove <package>`  | Remove package          |
| `apt list --installed`       | List installed packages |
| `apt show <package>`         | Show package info       |

### Python (pip)

| Command                           | Purpose                           |
| --------------------------------- | --------------------------------- |
| `pip list`                        | List installed Python packages    |
| `pip install <package>`           | Install Python package            |
| `pip freeze > requirements.txt`   | Save current environment packages |
| `pip install -r requirements.txt` | Install from saved list           |

---

## 7. Virtual Terminals

* **VT** → multiple text consoles outside GUI
* Switch between text VTs: **Ctrl+Alt+F1–F6**
* Switch back to GUI: **Ctrl+Alt+F7** (or F1 on some systems)

---

## 8. Boot Process Overview

**Boot sequence:**

```
BIOS/UEFI → Bootloader (MBR/GPT) → Kernel → Init → User Login
```

* **BIOS/UEFI** → firmware, hardware init
* **Bootloader** → loads OS kernel
* **Kernel** → core of OS
* **Init/Systemd** → starts system services
* **User Login** → shell or GUI

---

## 9. Searching & Locating

| Command             | Purpose                             | Example        |
| ------------------- | ----------------------------------- | -------------- |
| `which <command>`   | Shows **path of executable**        | `which python` |
| `whereis <command>` | Shows **binary, man pages, source** | `whereis man`  |

**Notes:**

* `.gz` files → compressed manual pages
* Numbers after man (1–8) → section of manual

---

## 10. Shell Wildcards & Regex

| Type    | Matches                 | Example                               |
| ------- | ----------------------- | ------------------------------------- |
| `*`     | Zero or more characters | `dir*` → dir, dir1, dirABC            |
| `?`     | Exactly one character   | `?.txt` → a.txt, b.txt                |
| `[abc]` | Any one of listed       | `file[12].txt` → file1.txt, file2.txt |

**Regex difference:**

* `.*` → zero or more characters (inside text)
* More powerful → used in `grep`, `sed`, `awk`

---

## 11. Shutdown

**Basic syntax:**

```bash
sudo shutdown [OPTION] [TIME] [MESSAGE]
```

| Option | Description                      | Example                                                     |
| ------ | -------------------------------- | ----------------------------------------------------------- |
| `-h`   | Halt the system (power off)      | `sudo shutdown -h now`                                      |
| `-r`   | Reboot the system                | `sudo shutdown -r now`                                      |
| `-c`   | Cancel a scheduled shutdown      | `sudo shutdown -c`                                          |
| `+m`   | Schedule shutdown in `m` minutes | `sudo shutdown -h +10 "System will shutdown in 10 minutes"` |

**Examples:**

```bash
sudo shutdown -h now        # Immediately power off
sudo shutdown -r now        # Immediately restart
sudo shutdown -h +5         # Shutdown after 5 minutes
sudo shutdown -c            # Cancel scheduled shutdown
```

**Notes:**

* `now` → immediate action
* Broadcast message can notify all logged-in users

---

## 12. `cd` – Change Directory

### 1. Basic Usage

```bash
cd <directory>
```

* Moves the shell to the specified directory

### 2. Special Shortcuts

| Shortcut   | Meaning                                   | Example        |
| ---------- | ----------------------------------------- | -------------- |
| `cd`       | Go to **home directory**                  | `cd` or `cd ~` |
| `cd /`     | Go to **root**                            | `cd /`         |
| `cd ~user` | Go to **specific user's home directory**  | `cd ~ymb`      |
| `cd -`     | Go to **previous directory**              | `cd -`         |
| `cd ..`    | Move **up one directory level**           | `cd ..`        |
| `cd ../..` | Move **up two levels**                    | `cd ../..`     |
| `cd .`     | Stay in **current directory** (no change) | `cd .`         |

### 3. Absolute vs Relative Paths

| Type          | Description                        | Example              |
| ------------- | ---------------------------------- | -------------------- |
| Absolute Path | Full path from root `/`            | `cd /usr/local/bin`  |
| Relative Path | Path relative to current directory | `cd ../../Documents` |

### 4. Using `pwd` with `cd`

```bash
cd /usr/local
pwd
# Output: /usr/local
```

### 5. Tab Completion

```bash
cd Doc<Tab> → cd Documents/
```

### 6. Combining with Other Commands

```bash
cd /var/log && ls -l
```

### 7. Environment Variables

```bash
cd $HOME
```

---

## 13. `pushd` & `popd` – Directory Stack

### 1. `pushd`

* Saves current directory on a stack and changes to a new directory

```bash
pushd <directory>
```

**Example:**

```bash
pwd
# /home/ymb
pushd /etc
pwd
# /etc
```

* Swap top two directories:

```bash
pushd
```

---

### 2. `popd`

* Removes top directory from stack and changes back

```bash
popd
```

**Example:**

```bash
popd
pwd
# /home/ymb
```

---

### 3. View Stack

```bash
dirs
# /etc /home/ymb
```

**Summary Table:**

| Command       | Action                             |
| ------------- | ---------------------------------- |
| `pushd <dir>` | Save current dir & move to `<dir>` |
| `popd`        | Go back to last saved dir          |
| `dirs`        | Show the directory stack           |

---
