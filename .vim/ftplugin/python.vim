setlocal makeprg=python3\ %
setlocal errorformat=%f:\ %l.%c:\ %m
setlocal shiftwidth=4

" let b:ale_linters = ['pylint', 'pylsp', 'mypy']
let g:pydocstring_formatter="google"
" This is weird. pydocstring creates a mapping by default
" but it is not specified anywhere.
let g:pydocstring_enable_mapping=0
