# 🐍 MambaVim

**MambaVim** is a clean, fast, and feature-rich Neovim config designed to be fully functional out of the box — without the bloat. It's built with developer ergonomics in mind, featuring a smart and intuitive keymap layout that emphasizes consistency and discoverability.

> Think Kickstart.nvim with opinions, structure, and keymap sanity.

---

## 🚀 Features

- ⚡ **Lazy-loaded plugins** for a fast startup
- 🗺️ **which-key** integration for intuitive keybindings
- 🧠 **LSP, formatting & linting** via `mason`, `nvim-lspconfig`, `null-ls`
- 🔍 **Fuzzy finding** with Telescope and FZF
- 🧭 **Neo-tree** for file navigation
- 🔧 **Built-in support for Clojure** (via clojure-lsp + vim-sexp)
- 🧼 Minimalist but powerful plugin setup
- 💥 **Kitty-friendly** with smart Option/Alt keybinds
- 🪄 Carefully structured configuration with separation of concerns

---

## 🎹 Keymap Philosophy

MambaVim is built with a semantic keybinding layout:

| Key        | Purpose            |
|------------|--------------------|
| `<leader>f` | 🔍 Find / Search     |
| `<leader>l` | 🧠 LSP / Language    |
| `<leader>w` | 🪟 Window management |
| `<leader>b` | 📄 Buffer control    |
| `<leader>t` | 🖥️ Terminal commands |
| `<leader>g` | 🌱 Git / Lazygit     |
| `<leader>s` | 🧩 Surround / Sexp   |
| `<leader>e` | 📁 File Explorer     |
| `<leader>a` | ✂️ Mini.ai           |
| `<leader>u` | 🎨 UI tweaks         |
| `<leader>q` | 🚪 Quit              |
| `<leader>r` | 🔁 Reload config     |
| `<leader>n` | 🆕 New file          |

With **which-key** active, you'll never have to guess your bindings again.

---

## 🛠️ Installation

```bash
git clone https://github.com/brunoalvesufu/MambaVim ~/.config/nvim
nvim
```
Run :Lazy to install plugins, and you’re good to go.

📁 Structure
```
~/.config/nvim/
├── init.lua
├── lua/
│   ├── config/
│   │   └── keymaps.lua     <- All custom keymaps and which-key groups
│   ├── plugins/
│   │   ├── which-key.lua   <- Plugin-specific setup
│   │   └── ...
│   └── ...
```
Plugin configs live in lua/plugins/
Keymap logic and organization lives in lua/config/keymaps.lua

Clean layering: plugins only load + defer registration to the config layer

💡 Goals
✅ Make Neovim actually usable on day one

✅ Stay minimal but powerful

✅ Be keyboard-centric and IDE-capable

❌ No unnecessary abstractions or startup slowdowns

❌ No bloated UI frameworks or heavy plugin stacks

📦 Recommended Tools
Terminal: Kitty

Font: JetBrains Mono Nerd Font

Git UI: Lazygit

🤝 Contributing
PRs are welcome — especially if you have great taste in keymaps or want to add quality-of-life features.

🐍 Why "Mamba"?
Because it's like a faster, more organized snake 🐍 — built to strike clean and hard, without the bulk.

📸 Screenshot (coming soon)
Made with ❤️ by Bruno Alves — powered by Neovim and rage against default keybindings.
