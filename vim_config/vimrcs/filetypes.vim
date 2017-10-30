""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""
let python_highlight_all = 1
au FileType python syn keyword pythonDecorator True None False self

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python map <buffer> F :set foldmethod=indent<cr>

au FileType python inoremap <buffer> $r return 
au FileType python inoremap <buffer> $i import 
au FileType python inoremap <buffer> $p print 
au FileType python inoremap <buffer> $f #--- <esc>a
au FileType python map <buffer> <leader>1 /class 
au FileType python map <buffer> <leader>2 /def 
au FileType python map <buffer> <leader>C ?class 
au FileType python map <buffer> <leader>D ?def 
au FileType python set cindent
au FileType python set cinkeys-=0#
au FileType python set indentkeys-=0#

autocmd FileType python set colorcolumn=80
autocmd FileType python autocmd BufWritePre <buffer> %s/\s\+$//e


""""""""""""""""""""""""""""""
" => JavaScript section
""""""""""""""""""""""""""""""
"au FileType javascript call JavaScriptFold()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> $log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

au FileType javascript inoremap <buffer> $r return 
au FileType javascript inoremap <buffer> $f //--- PH<esc>FP2xi

function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction

autocmd FileType javascript autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType javascript highlight ColorColumn ctermbg=DarkGray
autocmd FileType javascript set colorcolumn=101


""""""""""""""""""""""""""""""
" => Shell section
""""""""""""""""""""""""""""""
if exists('$TMUX') 
    set term=screen-256color 
endif


""""""""""""""""""""""""""""""
" => TypeScript section
""""""""""""""""""""""""""""""
autocmd FileType TypeScript setlocal tabstop=4 expandtab shiftwidth=4 softtabstop=4
autocmd FileType TypeScript autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType TypeScript set colorcolumn=101


""""""""""""""""""""""""""""""
" => YAML section
""""""""""""""""""""""""""""""
autocmd FileType yaml setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType yaml autocmd BufWritePre <buffer> %s/\s\+$//e


""""""""""""""""""""""""""""""
" => Markdown section
""""""""""""""""""""""""""""""
autocmd FileType markdown setlocal tabstop=2 expandtab shiftwidth=2 softtabstop=2
autocmd FileType markdown autocmd BufWritePre <buffer> %s/\s\+$//e


""""""""""""""""""""""""""""""
" => cpp section
""""""""""""""""""""""""""""""
autocmd FileType cpp autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType cpp highlight ColorColumn ctermbg=DarkGray
autocmd FileType cpp set colorcolumn=101


""""""""""""""""""""""""""""""
" => c section
""""""""""""""""""""""""""""""
autocmd FileType c autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType c highlight ColorColumn ctermbg=DarkGray
autocmd FileType c set colorcolumn=101


""""""""""""""""""""""""""""""
" => java section
""""""""""""""""""""""""""""""
autocmd FileType java autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType java highlight ColorColumn ctermbg=DarkGray
autocmd FileType java set colorcolumn=101


""""""""""""""""""""""""""""""
" => html section
""""""""""""""""""""""""""""""
autocmd FileType html autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType html highlight ColorColumn ctermbg=DarkGray
autocmd FileType html set colorcolumn=101


""""""""""""""""""""""""""""""
" => php section
""""""""""""""""""""""""""""""
autocmd FileType php autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd FileType php highlight ColorColumn ctermbg=DarkGray
autocmd FileType php set colorcolumn=101


