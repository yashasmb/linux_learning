# Linux Command Line – Shell Wildcards & Regex

| Type    | Matches                 | Example                               |
| ------- | ----------------------- | ------------------------------------- |
| `*`     | Zero or more characters | `dir*` → dir, dir1, dirABC            |
| `?`     | Exactly one character   | `?.txt` → a.txt, b.txt                |
| `[abc]` | Any one of listed       | `file[12].txt` → file1.txt, file2.txt |

**Regex difference:**  
- `.*` → zero or more characters (inside text)  
- More powerful → used in `grep`, `sed`, `awk`
---
[⬅ Previous: 09_search_locate.md](09_search_locate.md) | [Next: 11_shutdown.md ➡](11_shutdown.md)
