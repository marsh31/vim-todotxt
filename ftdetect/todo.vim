" Todotxt ftdetect
" Version: 1.1
" Author : marsh

autocmd BufNewFile,BufRead [Tt]odo.txt set   filetype=todo
autocmd BufNewFile,BufRead *.[Tt]odo.txt set filetype=todo
autocmd BufNewFile,BufRead [Dd]one.txt set   filetype=todo
autocmd BufNewFile,BufRead *.[Dd]one.txt set filetype=todo
