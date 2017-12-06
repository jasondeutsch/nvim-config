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

Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
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
Plug 'ryanoasis/vim-devicons'
Plug 'ryanss/vim-hackernews'
Plug 'eagletmt/ghcmod-vim'
Plug 'pangloss/vim-javascript'
Plug 'darthmall/vim-vue'
Plug 'jiangmiao/auto-pairs'
Plug 'leafgarland/typescript-vim'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'icymind/neosolarized'
Plug 'ntpeters/vim-better-whitespace'

""""""""""""""""""""""""""""""""
"""""""" Shortcuts """""""""""""
""""""""""""""""""""""""""""""""
Plug 'colepeters/spacemacs-theme.vim'

call plug#end()

"""""""""""""""""""""""""""""""
"""""""" Interface """"""""""""
"""""""""""""""""""""""""""""""
filetype on
set relativenumber number
set cursorline
set paste


"""""""""""""""""""""""""""""""
"""""""" editor    """"""""""""
"""""""""""""""""""""""""""""""
set expandtab
set shiftwidth=2
set softtabstop=2

"""""""""""""""""""""""""""""""
""""""" Plugin Configs """"""""
"""""""""""""""""""""""""""""""

" deoplete
" Use deoplete.
call deoplete#enable()

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

let NERDTreeQuitOnOpen=1

" vim-airline
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"" Automatically displays all buffers when there's only one tab open.
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:airline_time='onedark'


" colorscheme

syntax on
let g:onedark_termcolors=256
set background="dark"
colorscheme onedark 

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

""""""""""""""""""""""""""""""""
"""""""" Lang Support """"""""""
""""""""""""""""""""""""""""""""


"" Elm
"  Automatic code formatting
let g:elm_format_autosave = 1



""""""""""""""""""""""""""""""""
"""""""" Shortcuts """""""""""""
""""""""""""""""""""""""""""""""

" Insert at EOL or BOL from insert mode
" Useful for dealing with autopairs and the like.
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I


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
