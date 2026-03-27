nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

" let b:ale_linters = ['languagetool']
set keywordprg=dict

let g:markdown_fenced_languages = ['python', 'bash=sh', 'scala', 'sql', 'diff', 'haskell']

let g:mkdp_theme = 'dark'
" let g:mkdp_markdown_css = expand('~/.config/nvim/css/markdown.css')

" do not use conceal feature, the implementation is not so good
let b:vim_markdown_conceal = 0

" disable math tex conceal feature
let g:tex_conceal = ''
let g:vim_markdown_math = 0

" markdown-preview
let g:mkdp_browser = 'firefox'
let g:mkdp_refresh_slow = 1  " refresh when write or normal model
nmap <leader>p <Plug>MarkdownPreviewToggle
