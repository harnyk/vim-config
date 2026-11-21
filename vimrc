set nocompatible
let s:dir = resolve(expand('<sfile>:p:h'))

" Bootstrap vim-plug on a fresh machine
if empty(glob(s:dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo ' . s:dir . '/autoload/plug.vim --create-dirs '
        \ . 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

execute 'source ' . s:dir . '/plugins.vim'

set sw=2 ts=2 ai et nu rnu
if has('termguicolors') | set termguicolors | endif

syntax on
filetype plugin indent on

execute 'source ' . s:dir . '/lsp.vim'
execute 'source ' . s:dir . '/git.vim'

" OS-specific overrides
if has('mac') || has('macunix')
  execute 'source ' . s:dir . '/os/mac.vim'
else
  execute 'source ' . s:dir . '/os/linux.vim'
endif

" Per-machine settings, not tracked in git
if filereadable(expand('~/.vimrc.local')) | execute 'source ' . expand('~/.vimrc.local') | endif

silent! colorscheme kitty_pastel
