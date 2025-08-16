# YemeniSecToolkit 🛡️

Lightweight open-source security utilities for low-bandwidth environments, built with ❤️ in Yemen.

## Quick Start
```bash
git clone https://github.com/YOUR_USERNAME/yemeni-sec-toolkit.git
cd yemeni-sec-toolkit
python3 cve-search.py apache

Tools
| Tool                 | Purpose                           |
| -------------------- | --------------------------------- |
| `cve-search.py`      | Fetch latest CVEs by product name |
| `passive-map.sh`     | Passive ARP network mapping       |
| `ar-phish-detect.py` | Detect Arabic phishing keywords   |

## 💚 Support My Mission
Low-bandwidth regions deserve world-class security tools too.  
Your support helps me maintain servers & add Arabic/English documentation.

[![Sponsor](https://img.shields.io/badge/GitHub-Sponsor-EA4AAA?logo=github)](https://github.com/sponsors/alzeer711)
[![Open Collective](https://img.shields.io/badge/Support-Open%20Collective-7FADF2?logo=opencollective)](https://opencollective.com/yemeni-sec-toolkit)
[![Buy Me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?logo=buy-me-a-coffee&logoColor=000)](https://buymeacoffee.com/alzeer711)

#### B. cve-search.py
1. **Add file → Create new file**.
2. اسم الملف: `cve-search.py`
3. المحتوى:

```python
#!/usr/bin/env python3
import requests, sys
product = sys.argv[1] if len(sys.argv) > 1 else "apache"
url = f"https://cve.circl.lu/api/search/{product}"
data = requests.get(url, timeout=10).json()
for cve in data[:5]:
    print(f"{cve['id']} - {cve['summary'][:80]}...")
