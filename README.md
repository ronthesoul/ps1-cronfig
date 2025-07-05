# 🚀 PS1-Cronfig - PowerShell Prompt & Terminal Enhancements

**PS1-Cronfig** is a PowerShell framework that brings beauty, utility, and convenience to your terminal. It includes a stylish prompt using Oh My Posh, Vim with plugins, and tons of aliases and functions to make you faster in the shell.

## ✨ Features

- 🎨 Beautiful PowerShell Prompt powered by Oh My Posh
- 🧠 Useful Aliases & Functions for Git, networking, and navigation
- 💻 Custom Vim Configuration with plugins and key mappings
- 🔔 Slack Integration for command notifications
- 🚀 One-Line Setup Script to configure everything automatically

## 📁 Contents

- `ps1-cronfig.ps1` — The main installer
- `my_theme.json` — Oh My Posh theme file
- `Microsoft.PowerShell_profile.ps1` — PowerShell profile with all aliases/functions
- `_vimrc` — Vim config file with plugins and shortcuts

## 🔧 Prerequisites

- Windows with PowerShell 5+ or PowerShell Core
- Git
- Internet access
- Optional: [Slack Incoming Webhook](https://api.slack.com/messaging/webhooks) for command notifications

## 🛠 Installation

```powershell
git clone https://github.com/ronthesoul/ps1-cronfig.git
cd ps1-cronfig
./ps1-cronfig.ps1
```

This will:

- Install Vim (if not installed)
- Install and apply your Oh My Posh theme
- Set your PowerShell profile
- Copy your `_vimrc` into the Vim install directory

Then, restart PowerShell.

## 🖥 Aliases & Shortcuts

| Alias    | Command                                      |                   |
| -------- | -------------------------------------------- | ----------------- |
| `gs`     | `git status`                                 |                   |
| `ga`     | `git add`                                    |                   |
| `gc`     | `git commit`                                 |                   |
| `gp`     | `git push -u`                                |                   |
| `gpf`    | `git fetch origin && git pull --rebase`      |                   |
| `gl`     | `git log --oneline --graph --decorate --all` |                   |
| `gr`     | `git remote -v`                              |                   |
| `gitcon` | `ssh -T git@github.com`                      |                   |
| `..`     | `cd ..; ls`                                  |                   |
| `...`    | `cd ../..; ls`                               |                   |
| `....`   | `cd ../../..; ls`                            |                   |
| `home`   | `cd ~; ls`                                   |                   |
| `ports`  | `ss -tulpn`                                  |                   |
| `ipd`    | `ip route show default`                      |                   |
| `ipc`    | `ip -br -c addr`                             |                   |
| `ipn`    | \`cat /etc/resolv.conf                       | grep nameserver\` |

## 🔔 Slack Notifications (Optional)

To get Slack messages when a command finishes:

```powershell
$env:NOTS_SLACK_URL = "https://hooks.slack.com/services/XXXXX/YYYYY/ZZZZZ"
```

The function `nots` is included in your profile.

## 📝 Vim Setup

Custom `_vimrc` includes:

- Line numbers, indentation
- Copy/paste shortcuts
- Plugin manager (`vim-plug`)
- Plugins: `nerdtree`, `fzf`, `vim-airline`, `undotree`, and more

To install plugins:

```vim
:PlugInstall
```

## 👤 Author

Created by [ronthesoul](https://github.com/ronthesoul)

