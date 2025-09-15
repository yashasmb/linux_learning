
# I/O Redirection & Pipes



## 🔹 Standard File Streams
Linux uses three standard file streams:

| Name            | Symbolic Name | Value | Example   |
|-----------------|---------------|-------|-----------|
| Standard Input  | stdin         | 0     | Keyboard  |
| Standard Output | stdout        | 1     | Terminal  |
| Standard Error  | stderr        | 2     | Log file  |



## 🔹 I/O Redirection

I/O redirection allows changing the source of input or the destination of output/error.

### Redirect Input
```bash
$ command < input-file
````

Takes input from `input-file` instead of keyboard.


### Redirect Output

```bash
$ command > output-file
```

Sends standard output to `output-file`.

### Redirect Both

```bash
$ command < input-file > output-file
```

Takes input from `input-file` and writes output to `output-file`.

### Redirect stderr

```bash
$ command 2> error-file
```

Sends error messages to `error-file`.

> Note:
> `1>` is the same as `>` (stdout redirection).
> To redirect **stderr (2)** to the same place as **stdout (1)**:
>
> ```bash
> $ command > all-output-file 2>&1
> ```
>
> Bash shorthand:
>
> ```bash
> $ command >& all-output-file
> ```

---

## 🔹 Pipes (`|`)

Pipes connect the output of one command to the input of another.

```bash
$ command1 | command2 | command3
```

* Output of `command1` → input of `command2` → input of `command3`.
* Forms a **pipeline** for powerful combinations of commands.
* No need for temporary files → saves disk usage.
* Commands run **concurrently**, improving speed on multi-core CPUs.

### Example

```bash
$ locate zip | grep bin
```

Finds all files containing `zip` and filters only those also containing `bin`.

---

✅ **Key Takeaway**:
Redirection lets you control where input/output/errors flow.
Pipes let you chain simple commands together to achieve complex results.

