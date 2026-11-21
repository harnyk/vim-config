" All plugins must be declared in this single plug#begin/plug#end block:
" a second plug#begin call resets the plugin list.
call plug#begin(resolve(expand('<sfile>:p:h')) . '/plugged')

" LSP + completion
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

call plug#end()
