## NvChad Custom Config

This repository is a custom config that uses the main [NvChad/NvChad](https://github.com/NvChad/NvChad) repo as a plugin base.

---

## Required dependencies

`<leader>fw` uses `Telescope live_grep`, which requires **ripgrep** (`rg`) on your system.

Install dependencies before opening Neovim:

### macOS (Homebrew)

```bash
brew install neovim ripgrep fd
```

### Linux

Ubuntu / Debian:

```bash
sudo apt update && sudo apt install -y neovim ripgrep fd-find
```

Arch:

```bash
sudo pacman -S --noconfirm neovim ripgrep fd
```

Fedora:

```bash
sudo dnf install -y neovim ripgrep fd-find
```

After install, verify:

```bash
nvim --version
rg --version
```

---

## Clone for **new users** (macOS + Linux)

If you do not have any Neovim config yet:

```bash
git clone https://github.com/Lyhua-tech/nvchad-dots ~/.config/nvim
nvim
```

On first launch, plugins will install automatically.

---

## Clone for users with an **existing NvChad config** (macOS + Linux)

If you already use NvChad (or already have `~/.config/nvim`):

1. Backup your current config:

```bash
mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d-%H%M%S)
```

2. Clone this config:

```bash
git clone https://github.com/Lyhua-tech/nvchad-dots ~/.config/nvim
```

3. Start Neovim:

```bash
nvim
```

Optional (fresh start for plugins/cache):

```bash
mv ~/.local/share/nvim ~/.local/share/nvim.backup.$(date +%Y%m%d-%H%M%S) 2>/dev/null
mv ~/.local/state/nvim ~/.local/state/nvim.backup.$(date +%Y%m%d-%H%M%S) 2>/dev/null
mv ~/.cache/nvim ~/.cache/nvim.backup.$(date +%Y%m%d-%H%M%S) 2>/dev/null
```

---

## Notes

- Paths above are the same on both **macOS** and **Linux**.
- You can remove this repo's `.git` folder after cloning if you only want a local config copy.

## GitHub Copilot (official Neovim plugin)

This config uses the official plugin: `github/copilot.vim`.

After opening Neovim:

```vim
:Copilot setup
```

If needed, run:

```vim
:Copilot auth
```

Default keymaps in this config:

- `Ctrl+j`: accept suggestion
- `Ctrl+]`: next suggestion
- `Ctrl+x`: dismiss suggestion
- `<leader>cp`: open Copilot panel

## Credits

1. LazyVim starter: https://github.com/LazyVim/starter (NvChad starter was inspired by it).
