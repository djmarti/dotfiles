#!/bin/zsh
if [[ $(uname) == "Darwin" ]]; then
    alias see='open'
fi
alias d='dirs -v | head -n 10'
alias h=history
alias j=jobs
alias l='ls -lht --si --color=auto'
alias ls='ls --si --color=auto -FCBN'
alias lx='elinks'
alias m='mutt'
alias I='ipython --pylab'
alias v='run-mailcap --action=view'
alias s='zathura *.pdf(om[1]) &'
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias vi='nvim'
alias vim='nvim'
alias gl='glpg'
alias fd='fdfind'
alias lsd='ls -ld --color=always *(-/DN)'
# List only file beginning with "."
alias lsa='ls -ld .*'
alias c='remind -cl -w110,5,1 ~/.reminders'
alias dog='highlight -O ansi'   # dogs are cooler than cats
alias ccat='pygmentize -g'
alias vimdiff='nvim -d'

alias pbcopy='xclip -selection clipboard -i'
alias pbpaste='xclip -selection clipboard -o'

# Global aliases -- These do not have to be
# at the beginning of the command line.
alias -g L='| less -r'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep --color=auto'
alias -g P='| pbcopy'

# Suffix aliases
alias -s {txt,md,tex,json}=vim

