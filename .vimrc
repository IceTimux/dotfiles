set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" emmet
Plugin 'mattn/emmet-vim'
" Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-surround'
" git gutter
Plugin 'airblade/vim-gitgutter'

" autoformat
Plugin 'Chiel92/vim-autoformat'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" 256 colors
" set t_Co=256

" colorscheme
colo simplicity-blue

" enable syntax highlighting
syntax on

" enable line numbers
set number

" insert 2 spaces when I press tab 
set autoindent
set smartindent
set expandtab
set shiftwidth=2
set softtabstop=0
set tabstop=2
set tabstop=2
set copyindent
set preserveindent

" store all swap files in tmp directory
set directory^=$HOME/.vim/tmp//

" map emmet abbriviation to tab
imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")


" set emmet identation to 2 spaces
let g:user_emmet_settings = {
\  'html' : {
\    'indentation' : '  '
\  }
\}

" enable file type plugin and indentation
filetype plugin indent on

" disable comments on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" shift+arrow selection,l does not work in tmux
" nmap <S-Up> v<Up>
" nmap <S-Down> v<Down>
" nmap <S-Left> v<Left>
" nmap <S-Right> v<Right>
" vmap <S-Up> <Up>
" vmap <S-Down> <Down>
" vmap <S-Left> <Left>
" vmap <S-Right> <Right>
" imap <S-Up> <Esc>v<Up>
" imap <S-Down> <Esc>v<Down>
" imap <S-Left> <Esc>v<Left>
" imap <S-Right> <Esc>v<Right>

" set color column
set colorcolumn=80

" set netrw tree mode
let g:netrw_liststyle = 3

" hide netrw menu
" let g:netrw_banner = 0

" ctrl-p vim
set runtimepath^=~/.vim/bundle/ctrlp.vim

" make updatetime faster for gitgutter
set updatetime=100

" allow hiding buffers
set hidden

" do not use swap files
set noswapfile

" set incsearch on
set incsearch
