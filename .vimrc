" ----- Defaults -----

set nocompatible        " use Vim defaults.

" ----- Pathogen -----

call pathogen#infect()  " Pathogen must be called before filetype detection.
filetype plugin indent on

" ----- Text formatting -----

set autoindent          " automatic indent new lines.
set smartindent         " make it smart.
set copyindent          " copy structure of existing lines.
set cindent             " enable automatic C program indenting.
set nowrap              " do not wrap lines.
set shiftwidth=4        " use four characters for tabs.
set softtabstop=4       " mindblowing.
set tabstop=4           " skullcracking.
set expandtab           " expand tabs to spaces.

" ----- UI settings -----

set ruler               " always show cursor position.
set showmode            " show the mode we're currently in.
set showcmd             " always display commands.
set showmatch           " highlight matching brackets/showbraces.
set list                " enable listcharacters.
set laststatus=2        " show status line.
set cursorline          " visualize current line.
set colorcolumn=80      " mark the 80 char column.
set noerrorbells        " disable error bells.
set visualbell          " disable error bells.
set t_vb=               " disable error bells.
set rnu                 " show relative line numbers.
set number              " show current number instead of relative one.

" ----- File navigation -----

set wildmenu            " display all possibilities on autocomplete.
set wildmode=longest,list,full

" ----- Movement -----

" leave your visual world behind.
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" force myself to leave insert mode for movement.
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" no more arrows my dear.
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>

" Less finger wrecking window navigation.
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" ----- Leader -----

" <C-]> opens tag in new tabs and focuses.
nnoremap <silent><Leader><C-]> <C-w><C-]><C-w>T
nnoremap <silent><Leader>rs :!clear && bundle exec rake sync<cr>
nnoremap <silent><Leader>l :!clear && php -l %<cr>

" ----- Searching -----

set ignorecase          " no case sensitivity please.
set smartcase           " search case sensitive if i'm willing to.
set incsearch           " do incremental search.

" ----- Syntax and such -----

syntax on               " enable syntax highlighting.
set background=dark     " use dark background.
color solarized         " use solarized colorscheme.
set synmaxcol=512       " try highlighting maximum 512 columns.

" ----- Formatting -----

set fileformat=unix     " always use unix fileformat.
set encoding=utf-8      " force UTF-8 encoding.

" ----- Custom mapping -----

" F7 toggles highlighted search.
map <F7> :set hlsearch!<CR>

" make Y act like D, C, ... (i.e., yank up to the end of the line).
map Y y$

" ----- Remapping -----

inoremap jj <ESC>       " leave insert mode with 'jj'

" ----- Chromed out, pimped out -----

" visualize stuff.
set listchars=tab:→\ ,extends:»,precedes:«,trail:▒,nbsp:·

" on editing, jump to last known cursor position.
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" on save, remove trailing spaces.
autocmd BufWritePre * :%s/\s\+$//e

" Do not pollute the working directory with swap and other files.
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

" custom statusline
set statusline=%<%f\ %m%r\ %=line\ %l\ of\ %L\ %15.15(col\ %c%V%)\ %25.25(%{&ff},%{strlen(&fenc)?&fenc:'none'}\ %y%)\ "

" .tpl files are mainly (x)html files, xhtml gives better omni completion.
autocmd BufNewFile,BufRead *.tpl set filetype=xhtml

" ----- Plugins -----

" Tell snipmate where to get our snippets.
let g:snippets_dir = "~/.vim/snippets"

" CtrlP ignores.
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|vendor|code-coverage)$',
    \ 'file': '\v\.(swp)$',
    \ }

" ----- Fixes -----

" Allow backspace for everything.
set backspace=indent,eol,start
