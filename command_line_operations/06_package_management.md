# Linux Command Line – Package Management

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