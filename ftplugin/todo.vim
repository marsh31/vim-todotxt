" Todotxt plugin
" Version: 1.1
" Author : marsh
"

if exists('g:loaded_vim_todotxt')
  finish
endif
let g:loaded_vim_todotxt = 1

let s:save_cpo = &cpo
set cpo&vim

" plugin commands
command! -nargs=0 -range TodoPrependDate    :<line1>, <line2>call todo#txt#prepend_date()
command! -nargs=0 -range TodoUpdateDate     :<line1>, <line2>call todo#txt#update_date()

command! -nargs=? -range TodoAddPriority    :<line1>, <line2>call todo#txt#add_priority(<f-args>)
command! -nargs=0 -range TodoRemovePriority :<line1>, <line2>call todo#txt#remove_priority()

command! -nargs=1 -range TodoIncreasePri    :<line1>, <line2>call todo#txt#increase_priority(<f-args>)
command! -nargs=1 -range TodoDecreasePri    :<line1>, <line2>call todo#txt#decrease_priority(<f-args>)

command! -nargs=0 -range TodoDone           :<line1>, <line2>call todo#txt#mark_done()

command! -nargs=0 -range TodoMoveDone       :call todo#txt#move_to_done()

let &cpo = s:save_cpo
unlet s:save_cpo
