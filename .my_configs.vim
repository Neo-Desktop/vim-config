syntax enable
set background=dark

let g:solarized_termcolors=256
" let g:solarized_termtrans=1

set number
set cpoptions+=n

colorscheme solarized

function! NumberToggle()
    if(&number == 0 && &relativenumber == 0)
        set number
    elseif (&number == 1 && &relativenumber == 0)
        set relativenumber
    else
        set nonumber
        set norelativenumber
    endif
endfunc

noremap <F3> :call NumberToggle()<CR>
inoremap <F3> <C-O>:call NumberToggle()<CR>