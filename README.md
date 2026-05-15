# ghuge (GitHub User Git Emails)

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Shell Check](https://img.shields.io/badge/shellcheck-passed-brightgreen.svg)](https://github.com/koalaman/shellcheck)
[![Platform](https://img.shields.io/badge/platform-linux%20%7C%20macos-lightgrey.svg)](https://www.kernel.org/)

`ghuge` is a minimalist, high-efficiency OSINT and reconnaissance Bash utility designed for security auditors, red teamers, and open-source researchers. It automates the process of fetching all public repositories of a target GitHub username, cloning them defensively, and extracting unique email addresses exposed within the Git commit history.

## ⚡ Features

- **Automated Enumeration**: Fetches the complete list of a user's public repositories via the GitHub REST API.
- **Commit History Audit**: Extracts unique author emails (`%ae`) directly from `git log`.
- **Clean Output**: Automatically deduplicates and filters results.
- **Zero Footprint**: Clones repositories silently and ensures full cleanup (`rm -rf`) after analysis.

## 🚀 Prerequisites

Ensure you have the required dependencies installed on your system:

- `curl` (for API requests)
- `jq` (for JSON parsing)
- `git` (for repository cloning and log analysis)

### Installation (Ubuntu/Debian)
```bash
sudo apt-get update && sudo apt-get install -y curl jq git
```

### Installation (macOS)
```bash
brew install jq git
```

## 💻 Installation & Usage

### Setup
```bash
# Clone the repository
git clone [https://github.com/bret99/ghuge.git](https://github.com/bret99/ghuge.git)
cd ghuge

# Make the script executable
chmod +x ghuge.sh
```

### Execution
```bash
./get_github_email.sh <github-username>
```

### Example
```bash
./get_github_email.sh torvalds
```

## 💎 Support the Project

If this tool helps protect your infrastructure, consider supporting the developer! 

### Crypto Wallets
| Asset | Network | Address |
| :--- | :--- | :--- |
| **BTC** | Bitcoin | `bc1qjwl80sv06xj2yhumn6k6xemchryem923wwts5x` |
| **USDT / ETH** | Ethereum (ERC20) | `0xc01b996c7b08ccfad463f27e54f1e74e6ac6f9ff` |
| **USDT / SOL** | Solana | `D7a5CdLaDwkKehnH82y6VJEF3hADWuupuhWCXecHvEnt` |
| **TON** | TON Network | `UQBhPLwdFiJdh6sZ96sZfxrxD9Lu6NFtaUecWeoHSM-EPc0P` |
| **LTC** | Litecoin | `ltc1qkm58ks5kuc64rjwd74sfalc5xsn7h6sr4vt45w` |
| **SOL** | Solana | `D7a5CdLaDwkKehnH82y6VJEF3hADWuupuhWCXecHvEnt` |

---

📜 License

This project is licensed under the MIT License - see the LICENSE file for details.
