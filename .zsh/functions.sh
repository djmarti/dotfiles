#!/bin/zsh

function lh () {
    ls -lth -si --color=always "$@" | head -n 20
}

# Colorize Dictionary
function dic () { dict "$@" | colorit | less -R }


function ranger-cd () {
  ranger --choosedir=/tmp/chosen
  if [ -f /tmp/chosen -a "$(cat /tmp/chosen)" != "$(pwd | tr -d "\n")" ]; then
    cd "$(cat /tmp/chosen)"
  fi
  rm -f /tmp/chosen
}


function present() {
    lock_off
    zathura --mode=presentation $1
    lock_on
}


function ranger() {
    command ranger $@ &&
        cd "$(grep \^\' ~/.config/ranger/bookmarks | cut -b3-)"
}

function man() {
  env LESS_TERMCAP_mb=$'\E[01;5m' \
  LESS_TERMCAP_md=$'\E[01;38;5;8m' \
  LESS_TERMCAP_me=$'\E[0m' \
  LESS_TERMCAP_se=$'\E[0m' \
  LESS_TERMCAP_so=$'\E[38;5;8m' \
  LESS_TERMCAP_ue=$'\E[0m' \
  LESS_TERMCAP_us=$'\E[38;5;4m' \
  man "$@"
}

function fzf-books() {
    setopt localoptions noglobsubst noposixbuiltins pipefail 2> /dev/null
    book=$(find ~/books/ -regextype 'posix-extended' -regex ".*\.(pdf|djvu|ps|ps.gz)"\
        | sed 's/^.*\/books\///' | awk '{ print length($0) " " $0; }'\
        | sort -n | cut -d ' ' -f 2-\
        | FZF_DEFAULT_OPTS="--ansi $FZF_DEFAULT_OPTS" $(__fzfcmd -m))
    local ret=$?
    zle -U "see ~/books/\"${book}\" &"
    zle accept-line
    zle reset-prompt
    typeset -f zle-line-init >/dev/null && zle zle-line-init
    return $ret
}


function convert_to_png() {
    convert -density 300 $1 ${1%%.pdf}.png
}

function ranger-cd () {
  ranger --choosedir=/tmp/chosen
  if [ -f /tmp/chosen -a "$(cat /tmp/chosen)" != "$(pwd | tr -d "\n")" ]; then
    cd "$(cat /tmp/chosen)"
  fi
  rm -f /tmp/chosen
}

function list_most_recent_changes() {
    find $1 -type f -exec stat --format '%Y :%y %n' "{}" \; | \
        sort -nr | cut -d: -f2- | head
}

function list_largest_files {
    find $1 -type f -exec ls -alh {} \; | sort -hr -k5 | head -n 25
}

