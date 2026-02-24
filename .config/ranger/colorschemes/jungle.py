# Copyright (C) 2008-2013  Roman Zimbelmann <hut@lavabit.com>
# This software is distributed under the terms of the GNU GPL version 3.

from ranger.gui.color import *
from ranger.colorschemes.default import Default

class Scheme(Default):
    progress_bar_color = green
    def use(self, context):
        fg, bg, attr = Default.use(self, context)

        if context.directory and not context.marked and not context.link:
            fg = blue

        if context.in_titlebar and context.hostname:
            fg = red if context.bad else blue

        if context.in_browser:
            if context.selected:
                attr = bold
                fg = black
                bg = yellow
            if context.media:
                fg = magenta
            elif context.fifo:
                fg = cyan
            elif context.main_column:
                if context.marked:
                    attr |= bold
                    bg = yellow
        elif context.in_statusbar:
            if context.marked:
                attr |= bold
                bg = yellow

        if context.text:
            if context.highlight:
                bg = yellow
                fg = black

        return fg, bg, attr
