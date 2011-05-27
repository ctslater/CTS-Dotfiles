" Custom filetype detection
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  autocmd! BufNewFile,BufRead *.md  setf markdown
"  au! BufRead,BufNewFile *.xyz		setfiletype drawing
augroup END

