 "   __                       _          __        _
 "   \ \  __ _ ___  ___  _ __( )__    /\ \ \/\   /(_)_ __ ___
 "    \ \/ _` / __|/ _ \| '_ \/ __|  /  \/ /\ \ / / | '_ ` _ \
 " /\_/ / (_| \__ \ (_) | | | \__ \ / /\  /  \ V /| | | | | | |
 " \___/ \__,_|___/\___/|_| |_|___/ \_\ \/    \_/ |_|_| |_| |_|


" System
set noswapfile
let g:python2_host_prog = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
set runtimepath+='~/.config/nvim/plugged/deoplete.nvim/'

" Vim Plug
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'icymind/neosolarized'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'fatih/vim-go'
Plug 'junegunn/fzf'
Plug 'vim-scripts/mru.vim'
Plug 'ap/vim-buftabline'
Plug 'w0rp/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-surround'
Plug 'elmcast/elm-vim'
Plug 'carlosgaldino/elixir-snippets'
Plug 'honza/vim-snippets'
Plug 'mhinz/vim-signify'
Plug 'junegunn/goyo.vim'
Plug 'eagletmt/ghcmod-vim'
Plug 'pangloss/vim-javascript'
Plug 'darthmall/vim-vue'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'ntpeters/vim-better-whitespace'
Plug 'ryanoasis/vim-devicons'
Plug 'dag/vim2hs'



" Init Plugin Systems
call plug#end()

" deoplete
" Use deoplete.
call deoplete#enable()

""""""""""""""""""""""""""""""""
"""""""" Shortcuts """""""""""""
""""""""""""""""""""""""""""""""

" Insert at EOL or BOL from insert mode
" Useful for dealing with autopairs and the like.
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall
"""""""""""""""""""""""""""""""
"""""""" Interface """"""""""""
"""""""""""""""""""""""""""""""
filetype on
set relativenumber number
set cursorline
set mouse=a

"""""""""""""""""""""""""""""""
"""""""" editor    """"""""""""
"""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set softtabstop=2
set encoding=utf8
au TermOpen * setlocal nonumber norelativenumber
set nofoldenable    " disable folding
set tabstop=2



"""""""""""""""""""""""""""""""
""""""" Plugin Configs """"""""
"""""""""""""""""""""""""""""""

" vimgo
let g:go_auto_type_info = 1


" ale
" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1


"NERD_FONT
set encoding=utf8
set guifont=KnackRegular_Nerd_Font:h12
" ale
" Enable completion where available.
let g:ale_completion_enabled = 1
" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

""" nerdtree
" Open NERDTree if no file or dir specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" buftabline
set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

let NERDTreeQuitOnOpen=0

" vim-airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'


" colorscheme
"
" let g:neosolarized_bold = 1
" let g:neosolarized_italic = 1
let g:enable_bold_font = 0
let g:enable_italic_font = 1


set termguicolors
"let g:solarized_termcolors=256
set background=dark
colorscheme gruvbox

""""""""""""""""""""""""""""""""
"""""""" Lang Support """"""""""
""""""""""""""""""""""""""""""""


"" Elm
"  Automatic code formatting
let g:elm_format_autosave = 1
