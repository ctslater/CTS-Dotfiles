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
set visualbell
set nojoinspaces

set number
" Toggle line numbers and fold column for easy copying:
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

let python_highlight_all = 1
let loaded_matchparen = 1

filetype plugin indent on

autocmd FileType python set complete+=k~/.vim/syntax/python.vim 

" Having lots of trouble getting python to use period as a word separator,
" and the isk setting makes no sense.
" isk+=,(
" set iskeyword-=.
" autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
"
let tex_no_error=1


autocmd Filetype cpp match Error /\s\+$/

" Load templates
autocmd! BufNewFile * silent! 0r ~/.vim/templates/%:e.tpl

" I want parenthesis to separate words
"set iskeyword-=(
"set iskeyword-=)

" Set up mapped keys
nmap ,t :ToggleWord<CR>

command! W :w

" highlight search terms
" disable highlight after enter
set hlsearch
:nnoremap <CR> :nohlsearch<cr>

" Prevent tab completion from selecting certain binary files
set wildignore+=*.png,*.eps,*.ps,*.pdf,*.dvi,*.pyc,*.aux,*.fits
" These file types will show up in tab completion,
" but with lower priority than other files
set suffixes+=.log,.dat,.out

" Cursor line highlighting
" hi CursorLine ctermbg=lightgrey
set cursorline
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" Remap the tab key to do autocompletion or indentation depending on the
" context (from http://www.vim.org/tips/tip.php?tip_id=102)
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>


" Disable the toolbar
if has("gui_running")
    set guioptions=egmrt
    "set toolbar=
endif

colorscheme cts1
