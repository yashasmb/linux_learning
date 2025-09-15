# Linux Command Line – File & Directory Management

| Command | Purpose                  | Example                       |
| ------- | ------------------------ | ----------------------------- |
| `pwd`   | Print working directory  | `pwd`                         |
| `touch` | Create empty file        | `touch file1`                 |
| `mv`    | Move or rename file      | `mv file1.txt backup/`        |
| `rm`    | Remove file/directory    | `rm -rf old_logs/`            |
| `ls`    | List directory contents  | `ls -lR dir` or `ls -lR dir*`|
| `cp`    | Copy file/directory      | `cp -i file1.txt /tmp/`       |

**Notes:**
- `dir` → one directory  
- `dir*` → all files/directories starting with `dir`




## 🔹 Checking Disk Usage with `du`

The `du` (disk usage) command estimates **space used by files and directories**.

### Basic Usage
```bash
$ du file.txt
````

➡ Shows size of `file.txt` in **kilobytes** (default block size).

### Directory Usage

```bash
$ du /home/user
```

➡ Recursively lists sizes of all subdirectories under `/home/user`.

### Human-Readable Format

```bash
$ du -h /var/log
```

➡ Displays sizes in KB, MB, or GB.

### Summary Only (Total Size)

```bash
$ du -sh /var/log
```

* `-s` → summarize (only total, not subfolders)
* `-h` → human-readable

### Sorting by Size

```bash
$ du -sh * | sort -h
```

➡ Lists sizes of all items in current directory, sorted smallest → largest.

---

✅ **Key Takeaways**

* `du` shows how much space files/directories take.
* Use `-h` for readability.
* Combine with `sort` to quickly find space-hogging files/directories.


---
[⬅ Previous: 01_file_viewing.md](01_file_viewing.md) | [Next: 03_links.md ➡](03_links.md)
