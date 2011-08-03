set nocompatible

set textwidth=80
syntax on
set background=dark
set t_Co=256

set shiftwidth=4
set tabstop=8
set softtabstop=4
set autoindent
set expandtab

set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

let python_highlight_all = 1

filetype plugin indent on

autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,
" autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Load templates
autocmd! BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl

" I want parenthesis to separate words
"set iskeyword-=(
"set iskeyword-=)

" Cursor line highlighting
" hi CursorLine ctermbg=lightgrey
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Disable the toolbar
if has("gui_running")
    set guioptions=egmrt
    "set toolbar=
endif

colorscheme cts1
