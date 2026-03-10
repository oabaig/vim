# LazyVim Setup

A personal Neovim config built on [LazyVim](https://lazyvim.github.io/).

---

## Prerequisites

All platforms need:
- [Neovim](https://neovim.io/) >= 0.9
- [Git](https://git-scm.com/)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- Node.js (for LSPs)
- A [Nerd Font](https://www.nerdfonts.com/) set in your terminal

---

## Installation

### Linux

#### Ubuntu / Linux Mint / Debian

Distro repos often have outdated Neovim. Install from the official release:

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
sudo tar -C /opt -xzf nvim-linux-x86_64.tar.gz
sudo ln -sf /opt/nvim-linux-x86_64/bin/nvim /usr/local/bin/nvim
```

Install dependencies:

```bash
sudo apt install git ripgrep fd-find nodejs npm unzip
sudo ln -s $(which fdfind) /usr/local/bin/fd
```

#### Arch Linux / Manjaro

```bash
sudo pacman -S neovim git ripgrep fd nodejs npm unzip
```

#### Fedora

```bash
sudo dnf install neovim git ripgrep fd-find nodejs npm unzip
```

#### openSUSE

```bash
sudo zypper install neovim git ripgrep fd nodejs npm unzip
```

---

### macOS

Install dependencies via [Homebrew](https://brew.sh/):

```bash
brew install neovim git ripgrep fd node
```

---

### Windows

Install dependencies via [Scoop](https://scoop.sh/) (recommended) or [Chocolatey](https://chocolatey.org/).

**Scoop:**
```powershell
scoop install neovim git ripgrep fd nodejs
```

**Chocolatey:**
```powershell
choco install neovim git ripgrep fd nodejs
```

> **Note:** Use Windows Terminal with a Nerd Font for best results. WSL2 is an alternative if you prefer a Linux environment.

---

## Setup

**1. Install a Nerd Font**

Download a font from [nerdfonts.com](https://www.nerdfonts.com/), install it, and set it in your terminal emulator.

- Linux: extract to `~/.local/share/fonts/` then run `fc-cache -fv`
- macOS: open the font file and click Install
- Windows: right-click the font file → Install

**2. Back up existing Neovim config (if any)**

```bash
# Linux / macOS
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

```powershell
# Windows (PowerShell)
Move-Item $env:LOCALAPPDATA\nvim $env:LOCALAPPDATA\nvim.bak
Move-Item $env:LOCALAPPDATA\nvim-data $env:LOCALAPPDATA\nvim-data.bak
```

**3. Clone this config**

```bash
# Linux / macOS
git clone https://github.com/omarx/vim ~/.config/nvim
```

```powershell
# Windows (PowerShell)
git clone https://github.com/omarx/vim $env:LOCALAPPDATA\nvim
```

**4. Launch Neovim**

```bash
nvim
```

Plugins will install automatically on first launch.

---

## Updating

```bash
nvim  # then run :LazySync inside Neovim
```
