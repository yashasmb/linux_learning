# Linux Command Line – pushd & popd (Directory Stack)

### pushd
* Saves current directory on stack and changes to a new directory
```bash
pushd <directory>
````

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

### popd

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

### View Stack

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
[⬅ Previous: 12_cd.md](12_cd.md)

<hr>
<div style="display: flex; justify-content: flex-start;">[⬅ Previous: 12_cd.md](12_cd.md)</div>

<hr>
<div style='display: flex; justify-content: flex-start;'><a href='12_cd.md'>⬅ Previous: 12_cd.md</a></div>

---
| [Previous: 12_cd.md](12_cd.md) |  |
|--------|--|
