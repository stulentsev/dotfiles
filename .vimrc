call pathogen#infect() 
call pathogen#helptags()

set guifont=Menlo:h12

let mapleader=","
noremap \ ,
:map <leader>r :!ruby %<cr>

set nocompatible                " choose no compatibility with legacy vi
syntax enable

"set synmaxcol=100               " don't colorize long lines
set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems

set encoding=utf-8
set showcmd                     " display incomplete commands
set smartindent
filetype plugin indent on       " load file type plugins + indentation
set autowrite

"" Whitespace
set nowrap                      " don't wrap lines
set tabstop=2 shiftwidth=2 softtabstop=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set showmatch
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault
nnoremap / /\v
vnoremap / /\v

" rspec-vim
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!zeus rspec --no-profile --no-color {spec}"

""Ctrl-P working directory selection
" Stop at nearest directory with one of these files
let g:ctrlp_root_markers = ['Gemfile']

"" Minitest hotkeys
" run the whole file
nnoremap <F3> :w<CR>:!cd <C-R>=getcwd()<CR><CR>:!ruby %:p<CR>

"" Brace jumping
nnoremap <Tab> %

"" Clear search
nnoremap <leader><space> :noh<cr> 

"" Screen centering
nmap <space> zz
nmap n nzz
nmap N Nzz

"" Lines
set colorcolumn=100
set number
"set relativenumber

set listchars=tab:▸\ ,eol:¬

"" Vim novice mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

"" Save on focus lost
au FocusLost * :wa

"" Escape insert mode quicker
inoremap jj <ESC>

set ruler

"" colorscheme railscasts
colorscheme molokai
"colorscheme vividchalk
let g:molokai_original = 1

autocmd FileType ruby nmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
autocmd FileType ruby xmap <buffer> <Leader>m <Plug>(xmpfilter-mark)
autocmd FileType ruby imap <buffer> <Leader>m <Plug>(xmpfilter-mark)

autocmd FileType ruby nmap <buffer> <Leader>e <Plug>(xmpfilter-run)
autocmd FileType ruby xmap <buffer> <Leader>e <Plug>(xmpfilter-run)
autocmd FileType ruby imap <buffer> <Leader>e <Plug>(xmpfilter-run)

" Easier navigation between splits
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
