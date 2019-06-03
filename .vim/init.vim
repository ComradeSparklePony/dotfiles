" vim-plug for plugin installation
call plug#begin('~/.vim/plugged')
"""" colorschemes
Plug 'ajmwagar/vim-deus'
"""" language plugins
Plug 'wlangstroth/vim-racket'
Plug 'reedes/vim-pencil'
Plug 'haolloyin/vim-red'
Plug 'elmcast/elm-vim'
Plug 'elixir-editors/vim-elixir'
"""" other plugins
Plug 'sgur/vim-editorconfig'
Plug 'zyedidia/vim-snake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" plugins for lisps
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
call plug#end()

" netrw (builtin dir browser) config
let g:netrw_liststyle=3
let g:netrw_browse_split = 1
let g:netrw_winsize = 20

" line numbers
set number relativenumber

" autoindent
set autoindent

" color scheme
colorscheme deus
syntax on

" help vim load plugins
filetype on
filetype indent on
filetype plugin on

" defaults tabs: 4 spaces
set shiftwidth=4
set tabstop=4

" statusline
set statusline=%#number#<<%v:%l>>%#function#\ %o/%{\ line2byte(line(\"$\")+1)-1\ }b%=%#keyword#%y\ %#visual#%-.100F

" language-specific settings

" scheme
autocmd Filetype scheme setlocal expandtab tabstop=4 shiftwidth=4
