#!/bin/zsh
alias d='dirs -v | head -n 10'
alias h=history
alias j=jobs
alias l='ls -lht --si --color=auto'
alias ls='ls --si --color=auto -FCBN'
alias lx='elinks'
alias m='mutt'
alias I='ipython --pylab'
alias v='run-mailcap --action=view'
alias s='open *.pdf(om[1])&'
alias mv='nocorrect mv'
alias cp='nocorrect cp'
alias mkdir='nocorrect mkdir'
alias vi='nvim'
alias vim='nvim'
alias a='acronym'
alias gl='glpg'
alias fd='fdfind'
alias cl='transient_cluster_login'
# alias ctags="$(brew --prefix)/bin/ctags"
# List only directories and symbolic
# links that point to directories
alias lsd='ls -ld --color=always *(-/DN)'
# List only file beginning with "."
alias lsa='ls -ld .*'
alias l3='aws s3 ls'
alias monitor_on='xrandr --output eDP1 --auto'
alias monitor_off='xrandr --output eDP1 --off'
alias external_on='xrandr --output VGA1 --auto'
alias external_off='xrandr --output VGA1 --off'
alias c='remind -cl -w110,5,1 ~/.reminders'
alias dog='highlight -O ansi'   # dogs are cooler than cats
alias ccat='pygmentize -g'
alias mw='mwinit -f'
alias vimdiff='nvim -d'

alias bb=brazil-build
alias bba='brazil-build apollo-pkg'
alias bre='brazil-runtime-exec'
alias brc='brazil-recursive-cmd'
alias bws='brazil ws'
alias bwsuse='bws use --gitmode -p'
alias bwscreate='bws create -n'
alias brc=brazil-recursive-cmd
alias bbr='brc brazil-build'
alias bball='brc --allpackages'
alias bbb='brc --allpackages brazil-build'
alias bbra='bbr apollo-pkg'
alias zenith='ada_creds 204093521473 zenith'
alias nile='ada_creds 340119419931 nile'
# alias aim='ada_creds 213256159233 aim'
alias abba='ada_creds 938470254706 abba'
alias aim='ada_creds 886887636678 aim-cluster'
alias sci='ada_creds 835213399325 sci'
alias analyzer='ada_creds 054764244156 sp-analyzer'
alias sp_prod='ada_creds 969512367783 sp-prod-cluster'
alias sp_test='ada_creds 775133020091 sp-test-cluster'
# alias sp_prod='sp_blimp 969512367783 prod-sm-sp-blimp-lrc 8164'
# alias sp_test='sp_blimp 775133020091 beta-sm-sp-blimp-lrc 8165'
# alias aim_cluster='sp_blimp 886887636678 beta-sm-aim-AIM 8165'
# There is /sbin/raw, but I never use it.
alias raw='~/.toolbox/bin/raw'

alias pbcopy='xclip -selection clipboard -i'
alias pbpaste='xclip -selection clipboard -o'

# alias stylua='npx @johnnymorganz/stylua-bin'
# Global aliases -- These do not have to be
# at the beginning of the command line.
alias -g L='| less -r'
alias -g H='| head'
alias -g T='| tail'
alias -g G='| grep --color=auto'
alias -g P='| pbcopy'

# Suffix aliases
alias -s {txt,md,tex,json}=vim

# Amazon specific
# alias odin='ssh -fNL 2009:localhost:2009 mrtidm.aka.corp.amazon.com'

# Metals / sbt in Brazil environments
# See https://w.amazon.com/bin/view/Faizk/DevEnv/ScalaMetals/
alias generate-build.sbt.sh="brazil-bootstrap -vs Faizk-Scala/dev \
  --package ScalaBrazilWorkspaceDevTools-1.0 --exec sbws-generate-build.sbt.sh"

