# vim-config

Personal Vim configuration for Linux and macOS.

## Install

```sh
git clone https://github.com/harnyk/vim-config.git ~/.vim
vim   # vim-plug and plugins are installed automatically on first start
```

Or clone elsewhere and symlink: `ln -s /path/to/vim-config ~/.vim`.

Remove `~/.vimrc` if it exists — it takes precedence over `~/.vim/vimrc`.

## Layout

- `vimrc` — entry point
- `plugins.vim` — all plugins (vim-plug)
- `lsp.vim` — vim-lsp settings and keymaps
- `git.vim` — git settings
- `os/linux.vim`, `os/mac.vim` — OS-specific overrides
- `~/.vimrc.local` — optional per-machine settings (not tracked)

## Notes

- Clipboard requires vim with `+clipboard` (`vim-gtk3` on Debian/Ubuntu, `brew install vim` on macOS).
- `termguicolors` is enabled; use a truecolor terminal (e.g. kitty).
