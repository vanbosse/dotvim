" ----- Defaults -----

set nocompatible		" use Vim defaults.

" ----- Text formatting -----

set autoindent			" automatic indent new lines.
set smartindent			" make it smart.
set copyindent			" copy structure of existing lines.
set cindent				" enable automatic C program indenting.
set nowrap				" do not wrap lines.
set shiftwidth=4		" use four characters for tabs.
set softtabstop=4		" mindblowing.
set tabstop=4			" skullcracking.

" ----- UI settings -----

set ruler				" always show cursor position.
set showmode			" show the mode we're currently in.
set showcmd				" always display commands.
set showmatch			" highlight matching brackets/showbraces.
set list				" enable listcharacters.
set laststatus=2		" show status line.
set cursorline			" visualize current line.

" ----- File navigation -----

set wildmenu			" display all possibilities on autocomplete.
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

" ----- Searching -----

set ignorecase			" no case sensitivity please.
set smartcase			" search case sensitive if i'm willing to.
set incsearch			" do incremental search.

" ----- Syntax and such -----

syntax on				" enable syntax highlighting.
color zenburn			" use zenburn colorscheme.
set synmaxcol=512		" try highlighting maximum 512 columns.

" ----- Formatting -----

set fileformat=unix		" always use unix fileformat.
set encoding=utf-8		" force UTF-8 encoding.

" ----- Custom mapping -----

" F7 toggles highlighted search.
map <F7> :set hlsearch!<CR>

" ----- Chromed out, pimped out -----

" visualize stuff.
set listchars=tab:→\ ,extends:»,precedes:«,trail:▒,nbsp:·

" on editing, jump to last known cursor position.
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" on save, remove trailing spaces.
autocmd BufWritePre * :%s/\s\+$//e

" ----- Abbreviations -----

ab sd Spoon::dump(
