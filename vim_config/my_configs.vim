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

set number

imap jj <ESC>

" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Color the 101th column
autocmd FileType c,cpp,java,javascript,html,php highlight ColorColumn ctermbg=DarkGray
autocmd FileType c,cpp,java,javascript,html,php set colorcolumn=101
autocmd FileType python set colorcolumn=80
autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2

" remove trailing whitespace on following filetypes
autocmd FileType c,cpp,java,javascript,html,php,markdown,yaml autocmd BufWritePre <buffer> %s/\s\+$//e

" remove numbers
map <leader>nnn :setlocal number!<cr>

" cursor column and row
set cursorline
set cursorcolumn
