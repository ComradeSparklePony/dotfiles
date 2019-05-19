" vim-plug for plugin installation
call plug#begin('~/.vim/plugged')
Plug 'elmcast/elm-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'zyedidia/vim-snake'
Plug 'haolloyin/vim-red'
Plug 'reedes/vim-pencil'
Plug 'sgur/vim-editorconfig'
Plug 'ajmwagar/vim-deus'
Plug 'wlangstroth/vim-racket'
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

" statusline
set statusline=%#number#<<%v:%l>>%#function#\ %o/%{\ line2byte(line(\"$\")+1)-1\ }b%=%#keyword#%y\ %#visual#%-.100F
