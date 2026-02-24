from IPython.terminal.prompts import Prompts, Token
#  from IPython.terminal.interactiveshell import TerminalInteractiveShell
#  from PygmentsStyle, get_style_by_name, get_all_styles

class myPrompts(Prompts):
    def in_prompt_tokens(self, cli=None):
        return [
            (Token.PromptNum, str(self.shell.execution_count)),
            (Token.Prompt, '  '),
        ]

    def out_prompt_tokens(self):
        return [
            (Token.Prompt, '  '),
               ]

ip = get_ipython()
ip.prompts = myPrompts(ip)

#  override_styles = {
    #  Token.Menu.Completions.Completion.Current: 'bg:#ffe389 #000000',
    #  Token.Menu.Completions.Completion: 'bg:#eeeeee #111111',
    #  Token.Menu.Completions.ProgressButton: 'bg:#aaaaaa',
    #  Token.Menu.Completions.ProgressBar: 'bg:#eeeeee',
#  }

#  style_cls = get_style_by_name('pastie')
#  style = PygmentsStyle.from_defaults(pygments_style_cls=style_cls,
                            #  style_dict=override_styles)

#  ip._style = style
