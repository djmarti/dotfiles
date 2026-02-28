#!/bin/zsh
umask 022
ulimit -c unlimited

bindkey -v  # vi bindings!
bindkey "^[[3~" delete-char

cdpath=( . .. ~/ )

if [[ $(uname) == "Darwin" ]]; then
  set -A path\
      $(brew --prefix coreutils)/libexec/gnubin  \
      $(brew --prefix)/bin  \
      ~/.local/bin/ \
      ~/bin \
      /bin \
      /usr/bin \
      $PATH 
elif [[ $(uname) == "Linux" ]]; then
  set -A path\
      ~/.pyenv/bin \
      ~/.juliaup/bin \
      ~/.local/bin/ \
      ~/bin \
      /opt/nvim/bin \
      /bin /usr/bin /usr/local/bin\
      /usr/local/sbin /sbin /usr/sbin \
      /usr/games /usr/local/games
fi

rehash

# Don't be annoying
unsetopt BEEP

# Terminal colours
autoload colors zsh/terminfo

if [[ "$terminfo[colors]" -ge 8 ]]; then
    colors
fi

for color in BLACK RED GREEN YELLOW BLUE MAGENTA CYAN WHITE; do
    eval PR_BOLD_$color='%{$terminfo[bold]$fg[${(L)color}]%}'
    eval PR_$color='%{$fg[${(L)color}]%}'
    export PR_BOLD_$color
    export PR_$color
done

export PR_NO_COLOR="%{$terminfo[sgr0]%}"

# # Prompt and PS1 are equivalent!
prompt="${PR_RED}%j ${PR_BOLD_BLUE}%c${PR_NO_COLOR} %# "
prompt3='%{fc%}Do you mean: %R ?(y|n|e)%{gg%} '
unset RPROMPT

if [[ -x $(which dircolors) ]]; then
    eval $(dircolors ~/.colourrc -b)
fi

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi

if command -v direnv 1>/dev/null 2>&1; then
    eval "$(direnv hook zsh)"
fi

command_oriented_history=1
dirstacksize=100   # We set autopushd
HISTFILE=~/.history
# Too large values make zsh sluggish
HISTSIZE=16000
SAVEHIST=15000
HISTCONTROL=ignorebot
setopt histignoredups
setopt extended_history   # Save beginning timestamp and duration in the hist file
setopt hist_expire_dups_first
setopt glob_dots          # Do not require a leading '.' in a filename to be matched explicitly.,
setopt hist_ignore_dups   # Do not enter duplicates in the history list
setopt hist_ignore_space  # Remove command lines from hist when 1st char is space
setopt hist_reduce_blanks # reduce whitespace in history
setopt hist_save_no_dups  # Older commands that duplicate newer ones are ommited
setopt no_hist_verify     # Don't verify when using bang-history, I am grown-up man.
setopt inc_append_history # New history lines are added as soon as they are entered
setopt no_hist_beep       # Do not beep when there is no matching hist entry
setopt share_history      # imports new commands from hist, and also appends your typed commands to it
setopt no_beep            # Do not beep on error
setopt always_to_end      # cursor moves to the end of the word after completion
setopt auto_cd            # automatically cd to path $x (if $x not a normal command)
setopt auto_list          # automatically list choices on an amiguous completion
setopt auto_menu          # Use menu completion after the 2nd consecutive request for completion
setopt no_auto_param_slash # do not add trailing slash if completed parameter is a directory
setopt auto_pushd         # cd automatically pushes the old directory on the dir stack
setopt auto_resume        # Treat single-word commands without redir as candidates to resume a job
setopt bad_pattern        # printj error message if pattern for filename generation is badly formed
setopt bang_hist          # textual history expansion (csh-style, ! is a special char)
setopt brace_ccl          # expand alphabetic brace expansions
setopt chase_links        # resolve symbolic links to their true values when changing directory
setopt clobber            # allows redirection to truncate existing files
setopt complete_aliases   # Aliases are internally substituted before completion is attempted
setopt complete_in_word   # ~/Dev/pro<Tab> --> ~/Development/project
setopt correct            # spell check for commands only
setopt extended_glob      # Chars '#', '~' and '^' treated as parts of patterns for fname generation
setopt glob_complete      # Cycle through matches
setopt glob_dots          # Do not require a leading '.' in a filename to be matched explicitly.,
setopt hash_cmds          # Remember the location of each command the 1st time it is executed.
setopt hash_dirs          # Hash the directory containing a command name that is hashed
unsetopt ignore_eof       # Do not exit on end-of-file
setopt interactive_comments # Allow comments even in interactive shells.
setopt list_packed        # try to make completion list smaller by using columns with different widths
setopt list_types         # show the type of each file with a trailing identifying mark
setopt long_list_jobs     # List jobs in the long format by default
setopt mail_warning
setopt mark_dirs          # Append a trailing / to all directory names resulting from globbing
setopt monitor            # Allow job control
setopt no_bg_nice         # Don not run all background jobs at a lower priority
setopt no_list_beep       # Don not beep on an ambiguous completion
setopt no_print_exit_value # Do not print exit value of programs with non-zero exit status
setopt no_pushd_to_home   # I use cd for the latter (otherwise 'pushd' acts like `pushd $HOME')
setopt notify             # Report the status of background jobs immediately
setopt null_glob          # Instead of error, delete pattern from argument list if there are no matches
setopt pushd_ignore_dups  # Do not push multiple copies of the same directory
setopt pushd_silent       # Do not print the directory stack after pushd or popd
setopt rm_star_silent     # Do not query the user before executing 'rm *' or 'rm path/*'
#setopt short_loops       # Allow the short forms of for, select, if and function constructs

bindkey '\C-r' history-incremental-search-backward
bindkey '\C-p' history-beginning-search-backward
bindkey '\C-n' history-beginning-search-forward
bindkey '\C-w' backward-delete-word
bindkey '\C-f' forward-word
bindkey '\C-b' backward-word
bindkey '\C-y' push-line-or-edit
bindkey -s '\C-G' 'cd ..''\C-M'
bindkey -s '\C-O' 'ranger''\C-M'
bindkey '\C-\S-l' clear-screen

unset ignoreeof

limit coredumpsize 0
export EDITOR=nvim
export VISUAL=nvim
export LESS="-r"
export CVS_RSH="ssh"
unset LESS_OPEN
export GREP_COLORS='mt=1;32'
GPG_TTY=$(tty)
export GPG_TTY

# stty sane
stty stop undef # unmap ctrl-s, to use vim-ipython

my_zsh_dir=~/.zsh
my_zsh_sections=(
    "functions.sh"
    "set_fzf_default_opts.sh"
    "aliases.sh"
)

# Source all the zsh-specific and sh-generic files.
for f in ${my_zsh_sections}; do
    script=${my_zsh_dir}/$f
    [[ -f ${script} ]] && . ${script}
done

WORDCHARS=${WORDCHARS//\/}

# The following lines were added by compinstall

zle -C complete-file complete-word _generic
zstyle ':completion:*' completer _expand _complete _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'r:|[._-]=** r:|=**' 'l:|=* r:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' use-compctl true
zstyle ':completion:*:descriptions' format '%B%d%b'
zstyle ':completion:*:messages' format '%B%d%b'
zstyle ':completion::*' use-cache on


autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

autoload -Uz copy-earlier-word
zle -N copy-earlier-word
bindkey "^[m" copy-earlier-word

## smart urls: automatically quote metacharacters in typed/pasted urls
autoload -U url-quote-magic
zle -N self-insert url-quote-magic

## jobs
setopt long_list_jobs

autoload -U zsh-mime-setup
zsh-mime-setup

autoload -U zargs
# Useful: zargs ./**/*.tex -- grep operator

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
autoload -Uz vcs_info

# Reminders
if [ -f "/usr/bin/remind" ]; then
    /usr/bin/remind -h "$HOME/.reminders"
fi
# Only if we running interactively
if [[ -o interactive ]] then
    if [ -f "/usr/bin/task" ]; then
        /usr/bin/task rc.verbose=nothing
        # echo ""
    fi
    if [[ -z "$TMUX" ]]; then
        exec (tmux attach || tmux new-session)
    fi
fi

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
bindkey -r '\ec'  # annoying default
bindkey '\ed' fzf-cd-widget
bindkey '\ef' fzf-file-widget
