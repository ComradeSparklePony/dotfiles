" vim-plug for plugin installation
call plug#begin('~/.vim/plugged')
"""" colorschemes
Plug 'lifepillar/vim-gruvbox8'
"""" language plugins
Plug 'wlangstroth/vim-racket'
Plug 'haolloyin/vim-red'
Plug 'elmcast/elm-vim'
Plug 'elixir-editors/vim-elixir'
Plug 'mikewest/vimroom'
Plug 'rsmenon/vim-mathematica'
"""" other plugins
Plug 'sgur/vim-editorconfig'
Plug 'zyedidia/vim-snake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'comradesparklepony/reple-vim'
" plugins for lisps
Plug 'guns/vim-sexp'
Plug 'tpope/vim-sexp-mappings-for-regular-people'
call plug#end()

" netrw (builtin dir browser) config
let g:netrw_liststyle=3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20
let g:netrw_banner = 0
let g:netrw_altv = 1

" line numbers
set number relativenumber

" autoindent
set autoindent

" color scheme
colorscheme gruvbox8
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

" remap <C-c> <C-c> to RepleSend
nnoremap <Leader>p :RepleSend <Return> 

"""" language-specific settings

" scheme
autocmd Filetype scheme setlocal expandtab tabstop=4 shiftwidth=4

" mathematica/wolfram language
autocmd BufNewFile,BufRead *.nb,*.wl set filetype=mma

" vim-slime
let g:slime_target = 'neovim'

