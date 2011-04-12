" Largely borrowed from grb4, even in naming convention.
runtime colors/ir_black.vim

let g:colors_name = "cts1"

hi pythonSpaceError ctermbg=red guibg=red

hi CursorLine cterm=None ctermbg=lightgrey ctermfg=black
hi CursorLine gui=None guibg=gray50 guifg=black

hi Comment ctermfg=darkyellow guifg=darkyellow

hi StatusLine ctermbg=lightgrey ctermfg=black
hi StatusLine guibg=lightgrey guifg=black

"hi StatusLineNC ctermbg=lightgrey ctermfg=black
"hi StatusLineNC guibg=lightgrey guifg=black
hi VertSplit ctermbg=lightgrey ctermfg=black
hi VertSplit guibg=lightgrey guifg=black

hi LineNr ctermfg=white guifg=lightgrey

" ir_black doesn't highlight operators for some reason
hi Operator        guifg=#6699CC     guibg=NONE        gui=NONE      ctermfg=lightblue   ctermbg=NONE        cterm=NONE

