set vb t_vb=         "visual bell off
" set guifont=DejaVu\ Sans\ Mono\ 10
" set guifont=Inconsolata\ 18
" set guifont=Cousine\ 18
set macligatures
set guifont=Fira\ Code:h18
" set guifont=Menlo\ Regular:h18
set guicursor=a:blinkon0 " No blinking cursor!
set guioptions=a
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
nnoremap <C-F12> :silent! let &guifont = substitute(&guifont, '\(\d\+\)', '\=eval(submatch(1) + 1)', '')<CR>
nnoremap <C-F11> :silent! let &guifont = substitute(&guifont, '\(\d\+\)', '\=eval(submatch(1) - 1)', '')<CR>
