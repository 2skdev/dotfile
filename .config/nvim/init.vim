" Plugin
call plug#begin('~/.nvim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'easymotion/vim-easymotion'
Plug 'airblade/vim-gitgutter'
Plug 'evanleck/vim-svelte'

" lightline theme
let g:lightline = {'colorscheme': 'onedark'}

" disable easymotion mapping
let g:EasyMotion_do_mapping = 0
" jump first match with enter
let g:EasyMotion_enter_jump_first = 1
" smart case
let g:EasyMotion_smartcase = 1

call plug#end()

" Setting
set nobackup                      " not create backup file
set noswapfile                    " not create swap file
set autoread                      " auto reload when file changed
set hidden                        " no warning when buffer changed
set showcmd                       " show input command
set clipboard=unnamed             " use clipboard
set showmatch                     " highlight
set nowrap                        " disable line wrap
set virtualedit=onemore           " rectangle select
set backspace=indent,eol,start    " enable backspace
set number                        " show line number
set relativenumber                " line number relative
set title                         " set title
set laststatus=2                  " always show status bar
set ambiwidth=double              " ambiwidth double char
set nrformats-=octal              " disable octal
set expandtab                     " insert space
set tabstop=2                     " insert space size
set shiftwidth=2                  " auto indent size
set autoindent                    " indent setting
set smartindent                   " indent setting
set cindent                       " indent setting
set incsearch                     " incremental search
set ignorecase                    " ignore case
set smartcase                     " smart case
set wrapscan                      " wrap search result
set hlsearch                      " highlight search
set list                          " show space
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
syntax on                         " enable syntax
set guifont=Cica:h12              " set font
colorscheme onedark               " set color scheme
set termguicolors                 " true colro
set encoding=utf-8                " encoding
set fileencodings=utf-8,cp932     " read encoding

" background none
highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight LineNr ctermbg=NONE guibg=NONE
highlight Folded ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NON

" Keybind
" toggle highlight
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

" insert to normal
inoremap <silent>jj <Esc>

" space leader
let mapleader = "\<Space>"

" file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>wq :wq<CR>

" select line
nnoremap <Leader>a v$ho0
vnoremap <Leader>a $ho0

" split
nnoremap <Leader>_ :sp<CR>
nnoremap <Leader><Bar> :vs<CR>

" fern.vim
nnoremap <Leader>t :Fern . -reveal=% -drawer -toggle -width=40<CR>

" fzf
nnoremap <Leader>f :Files!<CR>
nnoremap <Leader>F :GFiles!?<CR>
nnoremap <Leader>h :History!<CR>
nnoremap <Leader>b :Buffers!<CR>
nnoremap <Leader>g :Ag!<CR>
nnoremap <Leader>G :Ag! <C-R><C-W><CR>

" git gutter
nnoremap <Leader>D :GitGutterLineHighlightsToggle<CR>
nnoremap <Leader>d :GitGutterPreviewHunk<CR>
nnoremap <Leader>j :GitGutterNextHunk<CR>
nnoremap <Leader>k :GitGutterPrevHunk<CR>
nnoremap <Leader>r :GitGutterUndoHunk<CR>

" easy motion
nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-sol-bd-jk)
nmap f <Plug>(easymotion-fl)
nmap t <Plug>(easymotion-tl)
nmap F <Plug>(easymotion-Fl)
nmap T <Plug>(easymotion-Tl)

