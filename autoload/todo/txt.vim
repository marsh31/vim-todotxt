" Todotxt autoload
" Version: 1.1
" Author : marsh
" 
"
" let g:TODO_DEFAULT_PRIORITY = "A"
" let g:TODO_TODO_FILE = "~/todo/todo.txt"
" let g:TODO_DONE_FILE = "~/todo/done.txt"


" 
" SCRIPT LOCAL
"
function! s:get_current_date()
    return strftime('%Y-%m-%d')
endfunction


"
" IF
"
function! todo#txt#prepend_date()
    execute 's/^\C\(([A-Z])\s\+\)\?' . '/\1' . s:get_current_date() . ' /'
endfunction


function! todo#txt#update_date()
    execute 's/^\C\(([A-Z])\s\+\)\?\(\d\{4\}-\d\{2\}-\d\{2\}\s\+\)\?' . '/\1' . s:get_current_date() . ' /'
endfunction


function! todo#txt#add_priority(...)
    let pri = get(g:, 'TODO_DEFAULT_PRIORITY', 'A')
    if a:0 >= 1
      let pri = a:1
    endif

    execute 's/^\(([a-zA-Z]) \)\?/(' . pri . ') /'
endfunction


function! todo#txt#remove_priority()
    :s/^([A-Z])\s\+//ge
endfunction


function! todo#txt#increase_priority(count)
    let nf = &l:nrformats
    call setbufvar(bufnr('%'), '&nrformats', 'bin,octal,hex,alpha')
    execute 'normal! 0f)h' .. a:count .. ''
    call setbufvar(bufnr('%'), '&nrformats', nf)
endfunction


function! todo#txt#decrease_priority(count)
    let nf = &l:nrformats
    call setbufvar(bufnr('%'), '&nrformats', 'bin,octal,hex,alpha')
    execute 'normal! 0f)h' .. a:count .. ''
    call setbufvar(bufnr('%'), '&nrformats', nf)
endfunction


function! todo#txt#mark_done()
    call todo#txt#remove_priority()
    call todo#txt#prepend_date()
    execute 'normal! Ix '
endfunction


function! todo#txt#move_to_done()
    let completed = []
    :g/^x /call add(l:completed, getline(line("."))) | delete _
    call writefile(completed, g:TODO_DONE_FILE, "a")
endfunction


