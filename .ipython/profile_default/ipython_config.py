# Configuration file for ipython.
from pygments.token import Token

#  When False, pylab mode should not import any names into the user namespace.
c.InteractiveShellApp.pylab_import_all = False

## Whether to display a banner upon starting IPython.
c.TerminalIPythonApp.display_banner = False

## Set the color scheme (NoColor, Neutral, Linux, or LightBG).
c.InteractiveShell.colors = 'Neutral'

## Automatically call the pdb debugger after every exception.
c.InteractiveShell.pdb = True

## Shortcut style to use at the prompt. 'vi' or 'emacs'.
c.TerminalInteractiveShell.editing_mode = 'vi'

## Set the editor used by IPython (default to $EDITOR/vi/notepad).
c.TerminalInteractiveShell.editor = 'vim -c "set paste"'

# Suggestions are distracting
c.TerminalInteractiveShell.autosuggestions_provider = None

## Override highlighting format for specific tokens
c.TerminalInteractiveShell.highlighting_style_overrides = {
    Token.Menu.Completions.Completion.Current: 'bg:#2f2c00 #d4be98',
    Token.Menu.Completions.Completion: 'bg:#32302f #928374',
    Token.Menu.Completions.ProgressButton: 'bg:#aaaaaa',
    Token.Menu.Completions.ProgressBar: 'bg:#dadada',
    Token.Comment.Special: 'bold #e78a4e',
    Token.String: '#89b482',
    Token.String.Regex: '#a9b665',
    Token.String.Other: '#22bb22',
    Token.String.Symbol: '#d4be98',
}
