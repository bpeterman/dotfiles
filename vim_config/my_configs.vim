function s:ForbidReplace()
    if v:insertmode isnot# 'i'
        call feedkeys("\<Insert>", "n")
    endif
endfunction
augroup ForbidReplaceMode
    autocmd!
    autocmd InsertEnter  * call s:ForbidReplace()
    autocmd InsertChange * call s:ForbidReplace()
augroup END

function! s:DiffWithSaved()
    let filetype=&ft
    diffthis
    vnew | r # | normal! 1Gdd
    diffthis
    exe "setlocal bt=nofile bh=wipe nobl noswf ro ft=" . filetype
endfunction
com! DiffSaved call s:DiffWithSaved()

hi Search cterm=NONE ctermfg=black  ctermbg=red
set number
