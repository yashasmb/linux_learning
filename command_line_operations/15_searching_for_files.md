
# Searching for Files


## 🔹 Why Search?
Efficient file searching saves time and improves productivity. Linux provides multiple tools for locating files and directories based on name, type, time, and size.



## 🔹 `locate`
- Uses a pre-built **database** of files/directories.  
- Very fast, but results may be outdated until `updatedb` refreshes the database.  

### Usage
```bash
$ locate filename
````

Filter results with `grep`:

```bash
$ locate zip | grep bin
```

Update database (root privilege usually required):

```bash
$ sudo updatedb
```
## 🔹 Wildcards and Matching Files

| Wildcard  | Result | Example |
|-----------|---------|---------|
| `?`       | Matches any **single character** | `ls file?.txt` → matches `file1.txt`, `fileA.txt`, but not `file12.txt` |
| `*`       | Matches any **string of characters** | `ls *.txt` → matches `a.txt`, `notes.txt`, `data123.txt` |
| `[set]`   | Matches any **character in the set** | `ls file[adf].txt` → matches `filea.txt`, `filed.txt`, `filef.txt` |
| `[!set]`  | Matches any character **not in the set** | `ls file[!ad].txt` → matches `fileb.txt`, `filez.txt`, but not `filea.txt` or `filed.txt` |

✅ Wildcards are expanded **by the shell** before commands run → powerful for pattern matching.  



## 🔹 `find`

* Searches the filesystem **in real-time**.
* Can match by name, type, time, size, and even run commands on found files.
* Default search path = current directory.

### Basic Usage

```bash
$ find /usr -name gcc
$ find /usr -iname gcc        # Case-insensitive
```

### Restrict by Type

```bash
$ find /usr -type d -name gcc   # Directories only
$ find /usr -type f -name gcc   # Files only
```



## 🔹 Running Commands with `-exec`

Execute a command on every match.

```bash
$ find -name "*.swp" -exec rm {} \;
```

* `{}` → placeholder for each result.
* Must end with `\;` or `';'`.
* Use `-ok` instead of `-exec` for confirmation before each action.



## 🔹 Searching by Time

* `-atime` → last accessed
* `-mtime` → last modified
* `-ctime` → last metadata change

Syntax:

* `n` → exactly n days
* `+n` → more than n days
* `-n` → less than n days

### Example

```bash
$ find / -ctime 3      # Changed 3 days ago
$ find / -mtime -7     # Modified within last 7 days
```



## 🔹 Searching by Size

* Units:

  * `c` = bytes, `k` = KB, `M` = MB, `G` = GB
  * Default = 512-byte blocks

### Example

```bash
$ find / -size +10M           # Larger than 10 MB
$ find / -size -100k          # Smaller than 100 KB
$ find / -size 0              # Empty files
```

Combine with actions:

```bash
$ find / -size +10M -exec ls -lh {} \;
```



## 🔹 Common Combinations

* Remove all `.swp` files:

  ```bash
  $ find -name "*.swp" -exec rm {} \;
  ```
* Find old log files:

  ```bash
  $ find /var/log -name "*.log" -mtime +30
  ```
* Find big files in home directory:

  ```bash
  $ find ~ -size +100M
  ```



✅ **Key Takeaways**

* Use `locate` for **quick, name-based searches** (depends on database).
* Use `find` for **real-time, flexible searches** (name, type, time, size, and actions).
* Combine with `grep` and pipes for even more powerful filtering.

