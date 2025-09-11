# Linux Command Line – Shutdown

**Basic syntax:**
```bash
sudo shutdown [OPTION] [TIME] [MESSAGE]
````

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
[⬅ Previous: 10_wildcards_regex.md](10_wildcards_regex.md) | [Next: 12_cd.md ➡](12_cd.md)

<hr>
<div style="display: flex; justify-content: space-between;"><div>[⬅ Previous: 10_wildcards_regex.md](10_wildcards_regex.md)</div><div>[Next: 12_cd.md ➡](12_cd.md)</div></div>
