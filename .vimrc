" This must be first, because it changes other options as a side effect.
scriptencoding utf-8
set autoread            " Reread (https://github.com/tmux-plugins/vim-tmux-focus-events)
set autowrite           " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert modes
set number              " Show line numbers
set relativenumber      " Show relative numbers
set numberwidth=3       " Minimal width needed for numbers
set diffopt+=iwhite     " ignore whitespaces in diffs
set hidden              " Hide buffers when they are abandoned
set history=1000        " keep 500 lines of command line history
set mouse=a             " Enable mouse usage (all modes) in terminals
set mousemodel=extend   " No pop-up crap
set viewoptions=folds,options,cursor,unix,slash " better unix / windows compatibility
set more                " pause listings when the whole screen is filled
set nojoinspaces        " No double spaces after a join command.
set ruler               " show the cursor position all the time
set showcmd             " show (partial) command in status line
set laststatus=2        " occasions to show status line, 2=always
set shortmess=atToOI
set showmode            " show mode at bottom of screen
set smarttab            " When on, a <Tab> in front of a line inserts blanks according to 'shiftwidth'.
set title               " change the terminal's title
set noerrorbells        " again, don't beep
set t_Co=256
set wildmenu            " magic completion at the : command line
set wildignore+=*/.git/**,*/.venv/**,*/dev/**,*/target/**,*/deps/**,*/_build/**,*/node_modules/**,*/__pycache__/**,*.json,*.lock,*.jpg,*.png,*.ico,*.jpeg,*.svg,*.ttf
set lazyredraw          " redraw only when necessary
" Complete longest string, list alternatives, then complete next full match, cycling back to the  original string.
set wildmode=list:longest,full
set scrolljump=5        " lines to scroll when cursor leaves screen
set scrolloff=2         " minimum lines to keep above and below cursor
set sidescroll=5        " minimal number of columns to scroll horizontally
set signcolumn=auto
set undolevels=500      " use many levels of undo
set modeline            " read modeline at the end of the file
vmap <LeftRelease> "*ygv 
set linebreak           " break at word boundaries, not in middle of words
set termguicolors

let os=substitute(system('uname'), '\n', '', '')
if os == 'Darwin'
  set clipboard=unnamedplus
  let g:python3_host_prog = '$HOME/.pyenv/shims/python3'
elseif os == 'Linux'
  " no need to set up python3_host_prog because
  " pynvim-python is available.
  set clipboard=unnamed
endif


" folding
set foldenable          " enable folding
set foldmethod=manual
set foldlevel=99

"search
set gdefault            " the /g flag on :s substitutions by default
set showmatch           " show matching brackets
set noincsearch         " turn off incremental searching
set smartcase           " override ignorecase when pattern contains uppercase
set wrapscan            " wrap around the end of the file when searching
if &t_Co > 2 || has('gui_running')
  syntax on
  set hlsearch " highlight words when searching for them.
endif


set statusline =
" Buffer number
" File description
set statusline +=%f\ %h%m%r%w
" Filetype
set statusline +=%y
" Name of the current branch (needs fugitive.vim)
set statusline +=\ %{fugitive#statusline()}
" Line, column and percentage
set statusline +=%=%-14.(%l,%c%V%)\ %P


" As in zsh, C-{p,n} should autocomplete history from prefix
cnoremap <C-p> <UP>
cnoremap <C-n> <Down>

let mapleader="\<space>"

" vimwiki has a disruptive default: <Tab> goes to next link
nmap <leader>nl <Plug>VimwikiNextLink'
nmap <leader>pl <Plug>VimwikiPrevLink'

call plug#begin('~/.vim/plugged')
    Plug 'neovim/nvim-lspconfig'
    Plug 'mfussenegger/nvim-lint'
    Plug 'SirVer/ultisnips'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'goerz/jupytext.vim'
    Plug 'heavenshell/vim-pydocstring', { 'do': 'make install', 'for': 'python' }
    " Plug 'iamcco/mathjax-support-for-mkdp'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    Plug 'jamessan/vim-gnupg'
    Plug 'jpalardy/vim-slime'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'lervag/vimtex'
    Plug 'lervag/wiki.vim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'mfussenegger/nvim-jdtls'
    Plug 'mrcjkb/haskell-tools.nvim'
    Plug 'itchyny/calendar.vim'
    Plug 'scrooloose/nerdcommenter'
    Plug 'direnv/direnv.vim'
    Plug 'adelarsq/vim-matchit'
    Plug 'bronson/vim-trailing-whitespace'
    Plug 'tmux-plugins/vim-tmux-focus-events'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-markdown'
    Plug 'tpope/vim-unimpaired'
    Plug 'tpope/vim-vinegar'
    Plug 'tpope/vim-surround'
    Plug 'vim-scripts/YankRing.vim'
    Plug 'subnut/nvim-ghost.nvim'
    Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

if exists('$TMUX')
  let g:slime_no_mappings = 1   "don't use default mappings
  let g:slime_target = 'tmux'
  let g:slime_paste_file = '$HOME/.slime_paste'
  let g:slime_default_config = {'socket_name': split($TMUX, ',')[0], 'target_pane': ':.2'}
  let g:slime_python_ipython = 1
  let g:slime_bracketed_paste = 1
  let g:slime_dont_ask_default = 1
  " Integration with tmux-navigator
  let g:tmux_navigator_save_on_switch = 1
  let g:tmux_navigator_no_mappings = 1
  xmap <leader>sl <Plug>SlimeRegionSend gv<esc>
  nmap <leader>sp  <Plug>SlimeParagraphSend
  nmap <leader>sc  <Plug>SlimeConfig
  nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>
  nnoremap <silent> <C-S-l> :redraw<cr>
endif

if exists('$PINENTRY_USER_DATA')
  let g:GPGExecutable = "PINENTRY_USER_DATA='' gpg --trust-model always"
endif

source ~/.vim/nvim_lsp.vim
source ~/.vim/nvim_linters.vim
source ~/.vim/treesitter.vim
set runtimepath+=/usr/share/nvim/runtime/
set runtimepath+=~/.fzf/bin/


let g:yankring_history_file = '.vim/yankring_history'
let g:ag_prg='ag --vimgrep --path-to-ignore ~/.ignore'

let g:wiki_root='~/wiki'
let g:wiki_mappings_local = {
        \ '<plug>(wiki-link-transform-operator)' : 'gL'
        \}
let g:wiki_mappings_local_journal = {
        \ '<plug>(wiki-journal-prev)' : '[w',
        \ '<plug>(wiki-journal-next)' : ']w',
        \}

set listchars=tab:»·,trail:␣,extends:▸,nbsp:.,eol:¬  " see tabs and others

"tabs
set autoindent          " always set autoindenting on
set smartindent         " smart autoindent when starting a new line
set shiftwidth=4        " number of spaces to use for each (auto)indent step
set shiftround          " round indent to multiple of 'shiftwidth'
set expandtab           " use the appropriate number of spaces to insert a <tab>
set tabstop=8           " Better not to touch this
set softtabstop=4       " let backspace delete indent

" Ripgrep
if executable('rg')
  " Use rg over ag
  set grepprg=rg\ --vimgrep\ --no-heading\ --color=never\ --smart-case
elseif executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
else
  set grepprg=grep\ -nH\ $*
endif

" Jump to line and column (`) is more useful than to line only (').
" Swap bindings so that the useful one is closer.
nnoremap ' `
nnoremap ` '

" Backup system
set undodir=$HOME/.vim/tmp/undo//      " undo files
set backupdir=$HOME/.vim/tmp/backups// " backups
set directory=$HOME/.vim/tmp/swap//    " swap files

" Make those folders automatically if they don't already exist.
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif


" Set spelling language.
set spelllang=en_us
map <silent> <F12> b"*yw<Esc>:!/usr/bin/dict <C-R>* <bar> /usr/bin/colorit <bar> /usr/bin/less -R<CR>
imap <silent> <F12> <ESC>b"*yw<Esc>:!/usr/bin/dict <C-R>* <bar> /usr/bin/colorit <bar> /usr/bin/less -R<CR>a

" Don't use Ex mode, use Q for formatting
map Q gq

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" Make p in Visual mode replace the selected text with the "" register.
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" Yankring saves its data from one session to the next by
" means of uppercase global variables,
if has('viminfo')
  set viminfo^=! " ^= adds at the beginning; vi+=! at the end
endif

" Only do this part when compiled with support for autocommands.
if has('autocmd') && !exists('autocommands_loaded')
  let autocommands_loaded = 1
  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  filetype plugin on
  " Also load indent files, to automatically do language-dependent indenting.
  filetype indent on

  augroup generic
    autocmd!
    " autocmd FocusGained,BufEnter * :checktime  " trigger autoread when changing buffers inside vim
    autocmd BufRead,BufNewFile README :set ft=text
    " For all text files set 'textwidth' to 72 characters.
    " autocmd FileType text source $HOME/.vim/autocorrect.vim
    autocmd FileType text setlocal textwidth=0
    autocmd BufRead,BufNewFile /private/var/folder/*withExEditor*.txt :set ft=
  augroup END

  augroup mutt
    autocmd!
    autocmd BufRead,BufNewFile $HOME/tmp/mutt-*,/tmp/mutt* source ~/.mutt/address-search.vim
    autocmd BufRead,BufNewFile $HOME/tmp/mutt-*,/tmp/mutt*,/tmp/pentadactyl* :set ft=mail noai nonu
    autocmd BufRead,BufNewFile $HOME/.remind/*.txt :set ft=remind
    autocmd BufWritePost $HOME/gtd/*.txt :helptags $HOME/gtd/
  augroup END

  augroup code
    autocmd!
    autocmd BufReadPre SConstruct set filetype=python makeprg=scons
  autocmd FileType cpp,c setlocal shiftwidth=8
  autocmd FileType cpp,c,py setlocal nu
    autocmd BufRead,BufNewFile *.asy :set ft=asy
    autocmd BufRead,BufNewFile *.scala,*.sc,*.sbt :set ft=scala
  " detect comments in jsons
  autocmd FileType json syntax match Comment +\/\/.\+$+
  augroup END

  augroup xwiki
    autocmd!
    autocmd BufRead,BufNewFile *.xwiki,*.wiki :set ft=mediawiki
  augroup END

  augroup vimwiki
    autocmd!
    autocmd BufRead,BufWinEnter,BufNewFile,BufEnter *.md setlocal syntax=markdown
    autocmd FileType vimwiki setlocal syntax=markdown
  augroup END
  " Change to directory of current file automatically % is the current
  " filename ':h _%', and :p and :h are filename modifiers: :p gives
  " full pathname, :h returns the head of the file name.
  "autocmd BufEnter * lcd %:p:h

  augroup fzfgroup
    autocmd! FileType fzf
    autocmd  FileType fzf set laststatus=0 noshowmode noruler
        \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler
  augroup fzfgroup

  autocmd BufReadPost *.ged setlocal filetype=gedcom formatprg=gedcom_indent
  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
endif

" Starting with Vim 7, the filetype of empty .tex files defaults to 'plaintex'
" instead of 'tex', which results in vim-latex not being loaded. The following
" changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Remove search highlights
" Use unimpaired: yoh (or "]oh")
" noremap <leader>m :nohl<CR>
noremap <leader>, :tabprevious<CR>
noremap <leader>. :tabnext<CR>
" Toggle numbers. Not needed with unimpaired: yon and yor
" nnoremap <leader>n :set nu! rnu!<CR>
" There is a weird delay. Use 'yow' from unimpaired instead
" nnoremap <leader>w :set wrap!<CR>
"

" Mergetool
" Make sure the order for 1, 2, 3, matches what you configured
" for mergetool in .gitconfig. The order below is standard.
if &diff
    noremap <leader>1 :diffget LOCAL<CR>
    noremap <leader>2 :diffget BASE<CR>
    noremap <leader>3 :diffget REMOTE<CR>
endif

" Switch syntax highlighting on, when the terminal has colors
let NERDSpaceDelims = 1
let NERDTreeMapActivateNode = 'l'
let NERDTreeMapCloseDir = 'h'

" Disable increment / decrement.
" map <C-a> <Nop>
" map <C-x> <Nop>
noremap <leader><leader> :Files<CR>
noremap <leader>b :Buffers<CR>
noremap <leader>s :Snippets<CR>
" noremap <leader>r :FzfLua resume<CR>

let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_layout = {'window':  {'width': 0.98, 'height': 0.32 } }

" Ag
" Search the word in all files in the current dir
nmap <leader>* :Rg <c-r>=expand("<cword>")<cr><cr>
nnoremap <leader>/ :Rg 
command! -bang -nargs=* WRg
  \ call fzf#vim#grep("rg --column --line-number --no-heading --color=always --smart-case ".shellescape(<q-args>), 1, fzf#vim#with_preview({'dir': '~/wiki'}), <bang>0)

" Search files in wiki
nnoremap <leader>ow :Files ~/wiki<CR>
" Search keywords in wiki
nnoremap <leader>fw :WRg 

" Clean reading with Goyo
nnoremap <Leader>z :Goyo<CR>:colorscheme dm_dark<CR>


let g:UltiSnipsUsePythonVersion = 3
let g:UltiSnipsExpandTrigger = '<Tab>'
let g:UltiSnipsJumpForwardTrigger = 'jk'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsSnippetDirectories = ['ultisnips']
nnoremap <leader>es :UltiSnipsEdit!<cr>

set background=dark
colorscheme dm_dark
