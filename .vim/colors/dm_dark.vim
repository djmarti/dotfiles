" First remove all existing highlighting.
set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif



" local color00='#32302f'
" local color01='#3c3836'
" local color02='#504945'
" local color03='#665c54'
" local color04='#bdae93'
" local color05='#d5c4a1'
" local color06='#ebdbb2'
" local color07='#fbf1c7'
" local color08='#fb4934'
" local color09='#fe8019'
" local color0A='#fabd2f'
" local color0B='#b8bb26'
" local color0C='#8ec07c'
" local color0D='#83a598'
" local color0E='#d3869b'
" local color0F='#d65d0e'
" 
" export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS"\
" --color=bg+:$color01,bg:$color00,spinner:$color0C,hl:$color0D"\
" --color=fg:$color04,header:$color0D,info:$color0A,pointer:$color0C"\
" --color=marker:$color0C,fg+:$color06,prompt:$color0A,hl+:$color0D"
" 312911
" old dark green 2f2c00
let s:palette = {
 \ 'bg_dim':           ['#1b1b1b',   '233'],
 \ 'bg0':              ['#282828',   '235'],
 \ 'bg1':              ['#32302f',   '236'],
 \ 'bg2':              ['#323836',   '236'],
 \ 'bg3':              ['#45403d',   '237'],
 \ 'bg4':              ['#45403d',   '237'],
 \ 'bg5':              ['#5a524c',   '239'],
 \ 'bg_dark_orange':   ['#312911',   '58'],
 \ 'bg_dark_green':    ['#3a4844',   '58'],
 \ 'bg_dark_blueish':  ['#343735',   '58'],
 \ 'bg_dark_yellow':   ['#312911',   '58'],
 \ 'bg_visual':        ['#6a5b52',   '241'],
 \ 'bg_statusline1':   ['#32302f',   '236'],
 \ 'bg_statusline2':   ['#3a3735',   '236'],
 \ 'bg_statusline3':   ['#504945',   '240'],
 \ 'bg_diff_green':    ['#34381b',   '22'],
 \ 'bg_visual_green':  ['#3b4439',   '22'],
 \ 'bg_diff_red':      ['#402120',   '52'],
 \ 'bg_visual_red':    ['#4c3432',   '52'],
 \ 'bg_diff_blue':     ['#0e363e',   '17'],
 \ 'bg_visual_blue':   ['#374141',   '17'],
 \ 'bg_visual_yellow': ['#4f422e',   '94'],
 \ 'bg_current_word':  ['#3c3836',   '237'],
 \ 'fg_dark_orange':   ['#ffe4c9',   '215'],
 \ 'fg0':              ['#d4be98',   '223'],
 \ 'fg1':              ['#ddc7a1',   '223'],
 \ 'red':              ['#ea6962',   '167'],
 \ 'fg_pmenu':         ['#bdae93',   '248'],
 \ 'fg_pmenu_sel':     ['#ebdbb2',   '243'],
 \ 'fg_dark_yellow':   ['#a07100',   '243'],
 \ 'orange':           ['#e78a4e',   '208'],
 \ 'yellow':           ['#d8a657',   '214'],
 \ 'green':            ['#a9b665',   '142'],
 \ 'aqua':             ['#89b482',   '108'],
 \ 'blue':             ['#7daea3',   '109'],
 \ 'purple':           ['#d3869b',   '175'],
 \ 'bg_red':           ['#ea6962',   '167'],
 \ 'bg_green':         ['#a9b665',   '142'],
 \ 'bg_yellow':        ['#d8a657',   '214'],
 \ 'grey0':            ['#7c6f64',   '243'],
 \ 'grey1':            ['#928374',   '245'],
 \ 'grey2':            ['#a89984',   '246'],
 \ 'none':             ['NONE',      'NONE']
 \ }

let colors_name = "dm_dark"

function! s:my_highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}

" hi Normal guifg=palette.fg0 guibg=palette.bg0
" hi Cursor guifg=palette.bg0 guibg=palette.fg1
" hi Comment ctermfg=245 guifg=palette.grey1 gui=italic
" hi Constant term=underline ctermfg=53 guifg=magenta4
" hi Special term=underline ctermfg=20 guifg=RoyalBlue4
" hi Statement term=bold cterm=bold ctermfg=88 gui=bold guifg=Maroon
" hi Type term=underline cterm=bold ctermfg=28 gui=bold guifg=SeaGreen
" hi Visual ctermfg=NONE ctermfg=NONE ctermbg=159 guibg=LightCyan
" hi lCursor guifg=Black guibg=#ffa449
" hi ColorColumn term=reverse ctermbg=223 guibg=LightRed
" hi CursorLine term=reverse ctermbg=3 guibg=#ffe389
" hi DiffAdd term=bold ctermfg=234 ctermbg=158 guibg=LightBlue
" hi DiffChange term=bold ctermfg=0 ctermbg=157 guibg=#FFD787
" hi DiffText term=reverse cterm=bold ctermfg=0 ctermbg=151 gui=bold guibg=#FFAF00
" hi DiagnosticHint ctermfg=246 guifg=LightGrey
" hi DiagnosticWarn ctermfg=17 guifg=DarkBlue
" hi ErrorMsg term=standout cterm=bold ctermfg=9 ctermbg=15 gui=bold guifg=Red guibg=White
" hi Error term=standout cterm=bold ctermfg=52 ctermbg=224 gui=bold guifg=Red guibg=White
" hi FoldColumn term=standout ctermfg=18 ctermbg=249 guifg=DarkBlue guibg=Grey
" hi Folded term=standout ctermfg=18 ctermbg=253 guifg=DarkBlue guibg=LightGrey
" hi Identifier term=underline ctermfg=4 guifg=DeepSkyBlue4
" hi Ignore ctermfg=251 guifg=bg
" hi LineNr term=underline ctermfg=130 guifg=#af5f00
" hi LineNrAbove ctermfg=137 guifg=#af875f
" hi LineNrBelow ctermfg=142 guifg=#afaf00
" hi MatchParen cterm=bold ctermbg=153 guibg=Cyan
" hi MoreMsg term=bold cterm=bold ctermfg=28 gui=bold guifg=SeaGreen
" hi NonText ctermfg=gray
" hi Pmenu term=standout cterm=None ctermfg=242 ctermbg=255
" hi PmenuSel term=standout cterm=None ctermfg=0 ctermbg=222
" hi PmenuThumb term=standout cterm=None ctermfg=0 ctermbg=254
" hi PreProc term=underline ctermfg=54 guifg=Purple4
" hi Question term=standout cterm=bold ctermfg=28 gui=bold guifg=SeaGreen
" hi Search term=reverse ctermfg=0 ctermbg=254 guibg=Yellow
" hi CurSearch cterm=bold ctermfg=1 ctermbg=3 guifg=NvimLightGrey1 guibg=NvimDarkYellow
" hi SignColumn term=standout ctermfg=4 ctermbg=251 guifg=DarkBlue guibg=Grey
" hi SpecialKey ctermfg=red
" hi SpellBad cterm=None ctermbg=14 gui=undercurl guisp=Blue
" hi SpellCap cterm=None ctermbg=194 gui=undercurl guisp=Blue
" hi SpellLocal cterm=None ctermbg=14 gui=undercurl
" hi StatusLine cterm=bold ctermfg=0 ctermbg=254 gui=underline guibg=#B3D8B4
" hi StatusLineNC cterm=None ctermfg=0 ctermbg=255 gui=underline guibg=#D5E3D5 guifg=#555558
" hi Title term=bold ctermfg=88 gui=bold guifg=Maroon
" hi Todo term=standout ctermfg=0 ctermbg=3 guifg=Blue guibg=Yellow
" hi VertSplit cterm=none gui=none guifg=black
" hi WarningMsg term=standout ctermfg=2 guifg=red3
" hi IncSearch cterm=NONE ctermfg=NONE ctermbg=11 guifg=Black guibg=Yellow
" hi htmlBoldItalic cterm=bold
" hi default ExtraWhitespace ctermbg=225 guibg=#ffd7ff
" hi jediFat term=standout cterm=bold ctermfg=0 ctermbg=254 guibg=#c7e7ff
" hi jediFunction term=standout ctermfg=6 ctermbg=254 guibg=#c7e7ff
" hi TabLine  cterm=none ctermfg=244 ctermbg=255 gui=underline guibg=LightGrey
" hi TabLineFill cterm=none
" hi htmlLink cterm=NONE ctermfg=18
" hi def link TabLineFill Normal
" hi def link htmlItalic Identifier
" hi def link rstEmphasis Identifier


" " Initialization: {{{
" let s:configuration = gruvbox_material#get_configuration()
" let s:palette = gruvbox_material#get_palette(s:configuration.background, s:configuration.foreground, s:configuration.colors_override)
" let s:path = expand('<sfile>:p') " the path of this script
" let s:last_modified = 'Wed Apr 16 19:24:58 UTC 2025'
" let g:gruvbox_material_loaded_file_types = []

" if !(exists('g:colors_name') && g:colors_name ==# 'gruvbox-material' && s:configuration.better_performance)
  " highlight clear
  " if exists('syntax_on')
    " syntax reset
  " endif
" endif

" let g:colors_name = 'gruvbox-material'

if !(has('termguicolors') && &termguicolors) && !has('gui_running') && &t_Co != 256
  finish
endif
" }}}
" Common Highlight Groups: {{{
" UI: {{{
call s:my_highlight('Normal', s:palette.fg0, s:palette.bg0)
call s:my_highlight('NormalNC', s:palette.fg0, s:palette.bg0)
call s:my_highlight('Terminal', s:palette.fg0, s:palette.bg0)
call s:my_highlight('EndOfBuffer', s:palette.bg0, s:palette.none)
call s:my_highlight('Folded', s:palette.grey1, s:palette.bg2)
call s:my_highlight('ToolbarLine', s:palette.fg1, s:palette.bg3)
call s:my_highlight('SignColumn', s:palette.fg0, s:palette.none)
call s:my_highlight('FoldColumn', s:palette.grey0, s:palette.none)
call s:my_highlight('IncSearch', s:palette.none, s:palette.bg_dark_green)
call s:my_highlight('Search', s:palette.none, s:palette.bg_dark_blueish)
highlight! link CurSearch IncSearch
call s:my_highlight('ColorColumn', s:palette.none, s:palette.bg2)
call s:my_highlight('Conceal', s:palette.grey0, s:palette.none)
call s:my_highlight('Cursor', s:palette.bg0, s:palette.none)
highlight! link vCursor Cursor
highlight! link iCursor Cursor
highlight! link lCursor Cursor
highlight! link CursorIM Cursor
call s:my_highlight('CursorLine', s:palette.none, s:palette.bg1)
call s:my_highlight('CursorColumn', s:palette.none, s:palette.bg1)
call s:my_highlight('LineNr', s:palette.bg5, s:palette.none)
call s:my_highlight('CursorLineNr', s:palette.grey1, s:palette.bg1)
call s:my_highlight('DiffAdd', s:palette.none, s:palette.bg_diff_green)
call s:my_highlight('DiffChange', s:palette.none, s:palette.bg_diff_blue)
call s:my_highlight('DiffDelete', s:palette.none, s:palette.bg_diff_red)
call s:my_highlight('DiffText', s:palette.bg0, s:palette.blue)
call s:my_highlight('Directory', s:palette.green, s:palette.none)
call s:my_highlight('ErrorMsg', s:palette.red, s:palette.none)
call s:my_highlight('CursorLineNr', s:palette.grey2, s:palette.bg1)
call s:my_highlight('WarningMsg', s:palette.yellow, s:palette.none)
call s:my_highlight('ModeMsg', s:palette.fg0, s:palette.none)
call s:my_highlight('MoreMsg', s:palette.yellow, s:palette.none)
call s:my_highlight('MatchParen', s:palette.none, s:palette.bg4, 'bold')
call s:my_highlight('NonText', s:palette.bg5, s:palette.none)
call s:my_highlight('Whitespace', s:palette.bg5, s:palette.none)
call s:my_highlight('SpecialKey', s:palette.orange, s:palette.none)
call s:my_highlight('Pmenu', s:palette.fg_pmenu, s:palette.bg1)
call s:my_highlight('PmenuSel', s:palette.fg_pmenu_sel, s:palette.bg2)
call s:my_highlight('PmenuSbar', s:palette.none, s:palette.bg_dark_green)
call s:my_highlight('PmenuKind', s:palette.green, s:palette.bg3)
call s:my_highlight('PmenuExtra', s:palette.grey2, s:palette.bg3)
hi htmlLink cterm=NONE ctermfg=18
highlight! link WildMenu PmenuSel
call s:my_highlight('PmenuThumb', s:palette.none, s:palette.grey0)
call s:my_highlight('NormalFloat', s:palette.fg1, s:palette.bg3)
call s:my_highlight('FloatBorder', s:palette.grey1, s:palette.bg3)
call s:my_highlight('FloatTitle', s:palette.orange, s:palette.bg3, 'bold')
call s:my_highlight('Question', s:palette.yellow, s:palette.none)
call s:my_highlight('SpellBad', s:palette.fg_dark_yellow, s:palette.bg_dark_yellow)
call s:my_highlight('SpellCap', s:palette.blue, s:palette.none)
call s:my_highlight('SpellLocal', s:palette.aqua, s:palette.none)
call s:my_highlight('SpellRare', s:palette.purple, s:palette.none)
call s:my_highlight('StatusLine', s:palette.fg1, s:palette.bg_statusline1)
call s:my_highlight('StatusLineTerm', s:palette.fg1, s:palette.bg_statusline1)
call s:my_highlight('StatusLineNC', s:palette.grey1, s:palette.bg_statusline1)
call s:my_highlight('StatusLineTermNC', s:palette.grey1, s:palette.bg_statusline1)
call s:my_highlight('TabLine', s:palette.grey0, s:palette.bg_statusline1)
call s:my_highlight('TabLineFill', s:palette.fg1, s:palette.bg_statusline1)
call s:my_highlight('TabLineSel', s:palette.fg0, s:palette.bg4)
call s:my_highlight('WinBar', s:palette.fg1, s:palette.bg_statusline1, 'bold')
call s:my_highlight('WinBarNC', s:palette.grey1, s:palette.bg_statusline1)
call s:my_highlight('VertSplit', s:palette.bg5, s:palette.none)
highlight! link WinSeparator VertSplit
call s:my_highlight('Visual', s:palette.none, s:palette.bg3)
call s:my_highlight('VisualNOS', s:palette.none, s:palette.bg3)
call s:my_highlight('QuickFixLine', s:palette.purple, s:palette.none, 'bold')
call s:my_highlight('Debug', s:palette.orange, s:palette.none)
call s:my_highlight('debugPC', s:palette.bg0, s:palette.green)
call s:my_highlight('debugBreakpoint', s:palette.bg0, s:palette.red)
call s:my_highlight('ToolbarButton', s:palette.bg0, s:palette.grey2)
call s:my_highlight('Substitute', s:palette.fg0, s:palette.bg_dark_yellow)
call s:my_highlight('DiagnosticError', s:palette.red, s:palette.none)
call s:my_highlight('DiagnosticUnderlineError', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call s:my_highlight('DiagnosticWarn', s:palette.yellow, s:palette.none)
call s:my_highlight('DiagnosticUnderlineWarn', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call s:my_highlight('DiagnosticInfo', s:palette.blue, s:palette.none)
call s:my_highlight('DiagnosticUnderlineInfo', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
call s:my_highlight('DiagnosticHint', s:palette.green, s:palette.none)
call s:my_highlight('DiagnosticUnderlineHint', s:palette.none, s:palette.none, 'undercurl', s:palette.green)
highlight! link DiagnosticFloatingError ErrorFloat
highlight! link DiagnosticFloatingWarn WarningFloat
highlight! link DiagnosticFloatingInfo InfoFloat
highlight! link DiagnosticFloatingHint HintFloat
highlight! link DiagnosticVirtualTextError VirtualTextError
highlight! link DiagnosticVirtualTextWarn VirtualTextWarning
highlight! link DiagnosticVirtualTextInfo VirtualTextInfo
highlight! link DiagnosticVirtualTextHint VirtualTextHint
highlight! link DiagnosticSignError RedSign
highlight! link DiagnosticSignWarn YellowSign
highlight! link DiagnosticSignInfo BlueSign
highlight! link DiagnosticSignHint GreenSign
highlight! link LspDiagnosticsFloatingError DiagnosticFloatingError
highlight! link LspDiagnosticsFloatingWarning DiagnosticFloatingWarn
highlight! link LspDiagnosticsFloatingInformation DiagnosticFloatingInfo
highlight! link LspDiagnosticsFloatingHint DiagnosticFloatingHint
highlight! link LspDiagnosticsDefaultError DiagnosticError
highlight! link LspDiagnosticsDefaultWarning DiagnosticWarn
highlight! link LspDiagnosticsDefaultInformation DiagnosticInfo
highlight! link LspDiagnosticsDefaultHint DiagnosticHint
highlight! link LspDiagnosticsVirtualTextError DiagnosticVirtualTextError
highlight! link LspDiagnosticsVirtualTextWarning DiagnosticVirtualTextWarn
highlight! link LspDiagnosticsVirtualTextInformation DiagnosticVirtualTextInfo
highlight! link LspDiagnosticsVirtualTextHint DiagnosticVirtualTextHint
highlight! link LspDiagnosticsUnderlineError DiagnosticUnderlineError
highlight! link LspDiagnosticsUnderlineWarning DiagnosticUnderlineWarn
highlight! link LspDiagnosticsUnderlineInformation DiagnosticUnderlineInfo
highlight! link LspDiagnosticsUnderlineHint DiagnosticUnderlineHint
highlight! link LspDiagnosticsSignError DiagnosticSignError
highlight! link LspDiagnosticsSignWarning DiagnosticSignWarn
highlight! link LspDiagnosticsSignInformation DiagnosticSignInfo
highlight! link LspDiagnosticsSignHint DiagnosticSignHint
highlight! link LspReferenceText CurrentWord
highlight! link LspReferenceRead CurrentWord
highlight! link LspReferenceWrite CurrentWord
highlight! link LspInlayHint InlayHints
highlight! link LspCodeLens VirtualTextInfo
highlight! link LspCodeLensSeparator VirtualTextHint
highlight! link LspSignatureActiveParameter Search
highlight! link TermCursor Cursor
highlight! link healthError Red
highlight! link healthSuccess Green
highlight! link healthWarning Yellow
" Syntax: {{{
call s:my_highlight('Boolean', s:palette.purple, s:palette.none)
call s:my_highlight('Number', s:palette.purple, s:palette.none)
call s:my_highlight('Float', s:palette.purple, s:palette.none)
call s:my_highlight('PreProc', s:palette.purple, s:palette.none, 'italic')
call s:my_highlight('PreCondit', s:palette.purple, s:palette.none, 'italic')
call s:my_highlight('Include', s:palette.purple, s:palette.none, 'italic')
call s:my_highlight('Define', s:palette.purple, s:palette.none, 'italic')
call s:my_highlight('Conditional', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('Repeat', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('Keyword', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('Typedef', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('Exception', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('Statement', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('Todo', s:palette.fg0, s:palette.none, 'bold')
call s:my_highlight('Comment', s:palette.grey1, s:palette.none, 'italic')
call s:my_highlight('SpecialComment', s:palette.grey1, s:palette.none, 'italic')
call s:my_highlight('Delimiter', s:palette.fg0, s:palette.none)
call s:my_highlight('Ignore', s:palette.grey1, s:palette.none)
call s:my_highlight('Underlined', s:palette.none, s:palette.none, 'underline')
call s:my_highlight('Error', s:palette.red, s:palette.none)
call s:my_highlight('StorageClass', s:palette.orange, s:palette.none)
call s:my_highlight('Tag', s:palette.orange, s:palette.none)
call s:my_highlight('Label', s:palette.orange, s:palette.none)
call s:my_highlight('Structure', s:palette.orange, s:palette.none)
call s:my_highlight('Operator', s:palette.orange, s:palette.none)
call s:my_highlight('Title', s:palette.orange, s:palette.none, 'bold')
call s:my_highlight('Special', s:palette.yellow, s:palette.none)
call s:my_highlight('SpecialChar', s:palette.yellow, s:palette.none)
call s:my_highlight('Type', s:palette.yellow, s:palette.none)
call s:my_highlight('Function', s:palette.green, s:palette.none)
call s:my_highlight('String', s:palette.green, s:palette.none)
call s:my_highlight('Character', s:palette.green, s:palette.none)
call s:my_highlight('Constant', s:palette.aqua, s:palette.none)
call s:my_highlight('Macro', s:palette.aqua, s:palette.none)
call s:my_highlight('Identifier', s:palette.blue, s:palette.none)
" }}}
" Predefined Highlight Groups: {{{
call s:my_highlight('Fg', s:palette.fg0, s:palette.none)
call s:my_highlight('Grey', s:palette.grey1, s:palette.none)
call s:my_highlight('Red', s:palette.red, s:palette.none)
call s:my_highlight('Orange', s:palette.orange, s:palette.none)
call s:my_highlight('Yellow', s:palette.yellow, s:palette.none)
call s:my_highlight('Green', s:palette.green, s:palette.none)
call s:my_highlight('Aqua', s:palette.aqua, s:palette.none)
call s:my_highlight('Blue', s:palette.blue, s:palette.none)
call s:my_highlight('Purple', s:palette.purple, s:palette.none)
call s:my_highlight('RedItalic', s:palette.red, s:palette.none, 'italic')
call s:my_highlight('OrangeItalic', s:palette.orange, s:palette.none, 'italic')
call s:my_highlight('YellowItalic', s:palette.yellow, s:palette.none, 'italic')
call s:my_highlight('GreenItalic', s:palette.green, s:palette.none, 'italic')
call s:my_highlight('AquaItalic', s:palette.aqua, s:palette.none, 'italic')
call s:my_highlight('BlueItalic', s:palette.blue, s:palette.none, 'italic')
call s:my_highlight('PurpleItalic', s:palette.purple, s:palette.none, 'italic')
call s:my_highlight('RedBold', s:palette.red, s:palette.none, 'bold')
call s:my_highlight('OrangeBold', s:palette.orange, s:palette.none, 'bold')
call s:my_highlight('YellowBold', s:palette.yellow, s:palette.none, 'bold')
call s:my_highlight('GreenBold', s:palette.green, s:palette.none, 'bold')
call s:my_highlight('AquaBold', s:palette.aqua, s:palette.none, 'bold')
call s:my_highlight('BlueBold', s:palette.blue, s:palette.none, 'bold')
call s:my_highlight('PurpleBold', s:palette.purple, s:palette.none, 'bold')
call s:my_highlight('RedSign', s:palette.red, s:palette.bg2)
call s:my_highlight('OrangeSign', s:palette.orange, s:palette.bg2)
call s:my_highlight('YellowSign', s:palette.yellow, s:palette.bg2)
call s:my_highlight('GreenSign', s:palette.green, s:palette.bg2)
call s:my_highlight('AquaSign', s:palette.aqua, s:palette.bg2)
call s:my_highlight('BlueSign', s:palette.blue, s:palette.bg2)
call s:my_highlight('PurpleSign', s:palette.purple, s:palette.bg2)
highlight! link Added Green
highlight! link Removed Red
highlight! link Changed Blue
call s:my_highlight('ErrorText', s:palette.none, s:palette.none, 'undercurl', s:palette.red)
call s:my_highlight('WarningText', s:palette.none, s:palette.none, 'undercurl', s:palette.yellow)
call s:my_highlight('InfoText', s:palette.none, s:palette.none, 'undercurl', s:palette.blue)
call s:my_highlight('HintText', s:palette.none, s:palette.none, 'undercurl', s:palette.green)
call s:my_highlight('ErrorLine', s:palette.none, s:palette.bg_visual_red)
call s:my_highlight('WarningLine', s:palette.none, s:palette.bg_visual_yellow)
call s:my_highlight('InfoLine', s:palette.none, s:palette.bg_visual_blue)
call s:my_highlight('HintLine', s:palette.none, s:palette.bg_visual_green)
highlight! link VirtualTextWarning Grey
highlight! link VirtualTextError Grey
highlight! link VirtualTextInfo Grey
highlight! link VirtualTextHint Grey
call s:my_highlight('VirtualTextWarning', s:palette.yellow, s:palette.bg_visual_yellow)
call s:my_highlight('VirtualTextError', s:palette.red, s:palette.bg_visual_red)
call s:my_highlight('VirtualTextInfo', s:palette.blue, s:palette.bg_visual_blue)
call s:my_highlight('VirtualTextHint', s:palette.green, s:palette.bg_visual_green)
call s:my_highlight('ErrorFloat', s:palette.red, s:palette.none)
call s:my_highlight('WarningFloat', s:palette.yellow, s:palette.none)
call s:my_highlight('InfoFloat', s:palette.blue, s:palette.none)
call s:my_highlight('HintFloat', s:palette.green, s:palette.none)
call s:my_highlight('CurrentWord', s:palette.none, s:palette.bg_current_word)
" Define a color for each LSP item kind to create highlights for nvim-cmp, aerial.nvim, nvim-navic and coc.nvim
let g:gruvbox_material_lsp_kind_color = [
      \ ["Array", "Aqua"],
      \ ["Boolean", "Aqua"],
      \ ["Class", "Red"],
      \ ["Color", "Aqua"],
      \ ["Constant", "Blue"],
      \ ["Constructor", "Green"],
      \ ["Default", "Aqua"],
      \ ["Enum", "Yellow"],
      \ ["EnumMember", "Purple"],
      \ ["Event", "Orange"],
      \ ["Field", "Green"],
      \ ["File", "Green"],
      \ ["Folder", "Aqua"],
      \ ["Function", "Green"],
      \ ["Interface", "Yellow"],
      \ ["Key", "Red"],
      \ ["Keyword", "Red"],
      \ ["Method", "Green"],
      \ ["Module", "Purple"],
      \ ["Namespace", "Purple"],
      \ ["Null", "Aqua"],
      \ ["Number", "Aqua"],
      \ ["Object", "Aqua"],
      \ ["Operator", "Orange"],
      \ ["Package", "Purple"],
      \ ["Property", "Blue"],
      \ ["Reference", "Aqua"],
      \ ["Snippet", "Aqua"],
      \ ["String", "Aqua"],
      \ ["Struct", "Yellow"],
      \ ["Text", "Fg"],
      \ ["TypeParameter", "Yellow"],
      \ ["Unit", "Purple"],
      \ ["Value", "Purple"],
      \ ["Variable", "Blue"],
      \ ]
" }}}
" }}}
" Plugins: {{{
" nvim-treesitter/nvim-treesitter {{{
call s:my_highlight('TSStrong', s:palette.none, s:palette.none, 'bold')
call s:my_highlight('TSEmphasis', s:palette.none, s:palette.none, 'italic')
call s:my_highlight('TSUnderline', s:palette.none, s:palette.none, 'underline')
call s:my_highlight('TSNote', s:palette.fg0, s:palette.bg_dark_green, 'bold')
call s:my_highlight('TSWarning', s:palette.fg0, s:palette.bg_dark_orange)
call s:my_highlight('TSDanger', s:palette.bg0, s:palette.red)
highlight! link TSAnnotation Purple
highlight! link TSAttribute Purple
highlight! link TSBoolean Purple
highlight! link TSCharacter Aqua
highlight! link TSCharacterSpecial SpecialChar
highlight! link TSComment Comment
highlight! link TSConditional Red
highlight! link TSConstBuiltin PurpleItalic
highlight! link TSConstMacro PurpleItalic
highlight! link TSConstant Fg
highlight! link TSConstructor Green
highlight! link TSDebug Debug
highlight! link TSDefine Define
highlight! link TSEnvironment Macro
highlight! link TSEnvironmentName Type
highlight! link TSError Error
highlight! link TSException Red
highlight! link TSField Blue
highlight! link TSFloat Purple
highlight! link TSFuncBuiltin Green
highlight! link TSFuncMacro Green
highlight! link TSFunction Green
highlight! link TSFunctionCall Green
highlight! link TSInclude Red
highlight! link TSKeyword Red
highlight! link TSKeywordFunction Red
highlight! link TSKeywordOperator Orange
highlight! link TSKeywordReturn Red
highlight! link TSLabel Orange
highlight! link TSLiteral String
highlight! link TSMath Blue
highlight! link TSMethod GreenBold
highlight! link TSMethodCall GreenBold
highlight! link TSNamespace YellowItalic
highlight! link TSNone Fg
highlight! link TSNumber Purple
highlight! link TSOperator Orange
highlight! link TSParameter Fg
highlight! link TSParameterReference Fg
highlight! link TSPreProc PreProc
highlight! link TSProperty Blue
highlight! link TSPunctBracket Fg
highlight! link TSPunctDelimiter Grey
highlight! link TSPunctSpecial Blue
highlight! link TSRepeat Red
highlight! link TSStorageClass Orange
highlight! link TSStorageClassLifetime Orange
highlight! link TSStrike Grey
highlight! link TSString Aqua
highlight! link TSStringEscape Green
highlight! link TSStringRegex Green
highlight! link TSStringSpecial SpecialChar
highlight! link TSSymbol Fg
highlight! link TSTag Orange
highlight! link TSTagAttribute Green
highlight! link TSTagDelimiter Green
highlight! link TSText Green
highlight! link TSTextReference Constant
highlight! link TSTitle Title
highlight! link TSTodo Todo
highlight! link TSType YellowItalic
highlight! link TSTypeBuiltin YellowItalic
highlight! link TSTypeDefinition YellowItalic
highlight! link TSTypeQualifier Orange
call s:my_highlight('TSURI', s:palette.blue, s:palette.none)
highlight! link TSVariable Fg
highlight! link TSVariableBuiltin PurpleItalic
if has('nvim-0.8')
  highlight! link @annotation tsannotation
  highlight! link @attribute tsattribute
  highlight! link @boolean tsboolean
  highlight! link @character tscharacter
  highlight! link @character.special tscharacterspecial
  highlight! link @comment tscomment
  highlight! link @comment.error tsdanger
  highlight! link @comment.note tsnote
  highlight! link @comment.todo tstodo
  highlight! link @comment.warning tswarning
  highlight! link @conceal grey
  highlight! link @conditional tsconditional
  highlight! link @constant tsconstant
  highlight! link @constant.builtin tsconstbuiltin
  highlight! link @constant.macro tsconstmacro
  highlight! link @constructor tsconstructor
  highlight! link @debug tsdebug
  highlight! link @define tsdefine
  highlight! link @diff.delta diffchanged
  highlight! link @diff.minus diffremoved
  highlight! link @diff.plus diffadded
  highlight! link @error tserror " this has been removed from nvim-treesitter
  highlight! link @exception tsexception
  highlight! link @field tsfield
  highlight! link @float tsfloat
  highlight! link @function tsfunction
  highlight! link @function.builtin tsfuncbuiltin
  highlight! link @function.call tsfunctioncall
  highlight! link @function.macro tsfuncmacro
  highlight! link @function.method tsmethod
  highlight! link @function.method.call tsmethodcall
  highlight! link @include tsinclude
  highlight! link @keyword tskeyword
  highlight! link @keyword.conditional tsconditional
  highlight! link @keyword.debug tsdebug
  highlight! link @keyword.directive tspreproc
  highlight! link @keyword.directive.define tsdefine
  highlight! link @keyword.exception tsexception
  highlight! link @keyword.function tskeywordfunction
  highlight! link @keyword.import tsinclude
  highlight! link @keyword.operator tskeywordoperator
  highlight! link @keyword.repeat tsrepeat
  highlight! link @keyword.return tskeywordreturn
  highlight! link @keyword.storage tsstorageclass
  highlight! link @label tslabel
  highlight! link @markup.emphasis tsemphasis
  highlight! link @markup.environment tsenvironment
  highlight! link @markup.environment.name tsenvironmentname
  highlight! link @markup.heading tstitle
  highlight! link @markup.link tstextreference
  highlight! link @markup.link.label tsstringspecial
  highlight! link @markup.link.url tsuri
  highlight! link @markup.list tspunctspecial
  highlight! link @markup.list.checked green
  highlight! link @markup.list.unchecked ignore
  highlight! link @markup.math tsmath
  highlight! link @markup.note tsnote
  highlight! link @markup.quote grey
  highlight! link @markup.raw tsliteral
  highlight! link @markup.strike tsstrike
  highlight! link @markup.strong tsstrong
  highlight! link @markup.underline tsunderline
  highlight! link @math tsmath
  highlight! link @method tsmethod
  highlight! link @method.call tsmethodcall
  highlight! link @module tsnamespace
  highlight! link @namespace tsnamespace
  highlight! link @none tsnone
  highlight! link @number tsnumber
  highlight! link @number.float tsfloat
  highlight! link @operator tsoperator
  highlight! link @parameter tsparameter
  highlight! link @parameter.reference tsparameterreference
  highlight! link @preproc tspreproc
  highlight! link @property tsproperty
  highlight! link @punctuation.bracket tspunctbracket
  highlight! link @punctuation.delimiter tspunctdelimiter
  highlight! link @punctuation.special tspunctspecial
  highlight! link @repeat tsrepeat
  highlight! link @storageclass tsstorageclass
  highlight! link @storageclass.lifetime tsstorageclasslifetime
  highlight! link @strike tsstrike
  highlight! link @string tsstring
  highlight! link @string.escape tsstringescape
  highlight! link @string.regex tsstringregex
  highlight! link @string.regexp tsstringregex
  highlight! link @string.special tsstringspecial
  highlight! link @string.special.symbol tssymbol
  highlight! link @string.special.uri tsuri
  highlight! link @symbol tssymbol
  highlight! link @tag tstag
  highlight! link @tag.attribute tstagattribute
  highlight! link @tag.delimiter tstagdelimiter
  highlight! link @text tstext
  highlight! link @text.danger tsdanger
  highlight! link @text.diff.add diffadded
  highlight! link @text.diff.delete diffremoved
  highlight! link @text.emphasis tsemphasis
  highlight! link @text.environment tsenvironment
  highlight! link @text.environment.name tsenvironmentname
  highlight! link @text.literal tsliteral
  highlight! link @text.math tsmath
  highlight! link @text.note tsnote
  highlight! link @text.reference tstextreference
  highlight! link @text.strike tsstrike
  highlight! link @text.strong tsstrong
  highlight! link @text.title tstitle
  highlight! link @text.todo tstodo
  highlight! link @text.todo.checked green
  highlight! link @text.todo.unchecked ignore
  highlight! link @text.underline tsunderline
  highlight! link @text.uri tsuri
  highlight! link @text.warning tswarning
  highlight! link @todo tstodo
  highlight! link @type tstype
  highlight! link @type.builtin tstypebuiltin
  highlight! link @type.definition tstypedefinition
  highlight! link @type.qualifier tstypequalifier
  highlight! link @uri tsuri
  highlight! link @variable tsvariable
  highlight! link @variable.builtin tsvariablebuiltin
  highlight! link @variable.member tsfield
  highlight! link @variable.parameter tsparameter
endif
if has('nvim-0.9')
  highlight! link @lsp.type.class tstype
  highlight! link @lsp.type.comment tscomment
  highlight! link @lsp.type.decorator tsfunction
  highlight! link @lsp.type.enum tstype
  highlight! link @lsp.type.enummember tsproperty
  highlight! link @lsp.type.events tslabel
  highlight! link @lsp.type.function tsfunction
  highlight! link @lsp.type.interface tstype
  highlight! link @lsp.type.keyword tskeyword
  highlight! link @lsp.type.macro tsconstmacro
  highlight! link @lsp.type.method tsmethod
  highlight! link @lsp.type.modifier tstypequalifier
  highlight! link @lsp.type.namespace tsnamespace
  highlight! link @lsp.type.number tsnumber
  highlight! link @lsp.type.operator tsoperator
  highlight! link @lsp.type.parameter tsparameter
  highlight! link @lsp.type.property tsproperty
  highlight! link @lsp.type.regexp tsstringregex
  highlight! link @lsp.type.string tsstring
  highlight! link @lsp.type.struct tstype
  highlight! link @lsp.type.type tstype
  highlight! link @lsp.type.typeparameter tstypedefinition
  highlight! link @lsp.type.variable tsvariable
  call s:my_highlight('diagnosticunnecessary', s:palette.grey1, s:palette.none)
endif
highlight! link tsmoduleinfogood green
highlight! link tsmoduleinfobad red
" }}}
" github/copilot.vim {{{
highlight! link copilotsuggestion grey
" }}}
" junegunn/fzf.vim {{{
let g:fzf_colors = {
      \ 'fg':      ['fg', 'Normal'],
      \ 'bg':      ['bg', 'Normal'],
      \ 'hl':      ['fg', 'Green'],
      \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
      \ 'hl+':     ['fg', 'Aqua'],
      \ 'info':    ['fg', 'Aqua'],
      \ 'border':  ['fg', 'Grey'],
      \ 'prompt':  ['fg', 'Orange'],
      \ 'pointer': ['fg', 'Blue'],
      \ 'marker':  ['fg', 'Yellow'],
      \ 'spinner': ['fg', 'Yellow'],
      \ 'header':  ['fg', 'Grey']
      \ }
" }}}
" kien/ctrlp.vim {{{
call s:my_highlight('CtrlPMatch', s:palette.green, s:palette.none, 'bold')
call s:my_highlight('CtrlPPrtBase', s:palette.bg4, s:palette.none)
call s:my_highlight('CtrlPLinePre', s:palette.bg4, s:palette.none)
call s:my_highlight('CtrlPMode1', s:palette.blue, s:palette.bg4, 'bold')
call s:my_highlight('CtrlPMode2', s:palette.bg0, s:palette.blue, 'bold')
call s:my_highlight('CtrlPStats', s:palette.grey2, s:palette.bg4, 'bold')
highlight! link CtrlPNoEntries Red
highlight! link CtrlPPrtCursor Blue
" }}}
" syn_begin: markdown {{{
" builtin: {{{
call s:my_highlight('markdownH1', s:palette.red, s:palette.none, 'bold')
call s:my_highlight('markdownH2', s:palette.orange, s:palette.none, 'bold')
call s:my_highlight('markdownH3', s:palette.yellow, s:palette.none, 'bold')
call s:my_highlight('markdownH4', s:palette.green, s:palette.none, 'bold')
call s:my_highlight('markdownH5', s:palette.blue, s:palette.none, 'bold')
call s:my_highlight('markdownH6', s:palette.purple, s:palette.none, 'bold')
call s:my_highlight('markdownItalic', s:palette.none, s:palette.none, 'italic')
call s:my_highlight('markdownBold', s:palette.none, s:palette.none, 'bold')
call s:my_highlight('markdownItalicDelimiter', s:palette.grey1, s:palette.none, 'italic')
highlight! link markdownBlockquote Grey
highlight! link markdownBoldDelimiter Grey
highlight! link markdownCodeBlock Aqua
highlight! link markdownCodeDelimiter Aqua
highlight! link markdownCode Green
highlight! link markdownHeadingDelimiter Grey
highlight! link markdownHeadingRule Grey
highlight! link markdownId Yellow
highlight! link markdownLinkDelimiter Grey
highlight! link markdownLinkTextDelimiter Grey
highlight! link markdownLinkText Purple
highlight! link markdownIdDeclaration markdownLinkText
highlight! link markdownListMarker Red
highlight! link markdownOrderedListMarker Red
highlight! link markdownRule Purple
highlight! link markdownUrlDelimiter Grey
highlight! link markdownUrlTitleDelimiter Green
highlight! link markdownUrl TSURI
" }}}
" nvim-treesitter/nvim-treesitter {{{
if has('nvim-0.8')
  highlight! link @markup.heading.1.markdown markdownH1
  highlight! link @markup.heading.2.markdown markdownH2
  highlight! link @markup.heading.3.markdown markdownH3
  highlight! link @markup.heading.4.markdown markdownH4
  highlight! link @markup.heading.5.markdown markdownH5
  highlight! link @markup.heading.6.markdown markdownH6
  highlight! link @markup.heading.1.marker.markdown @conceal
  highlight! link @markup.heading.2.marker.markdown @conceal
  highlight! link @markup.heading.3.marker.markdown @conceal
  highlight! link @markup.heading.4.marker.markdown @conceal
  highlight! link @markup.heading.5.marker.markdown @conceal
  highlight! link @markup.heading.6.marker.markdown @conceal
  if !has('nvim-0.10')
    call s:my_highlight('@markup.italic', s:palette.none, s:palette.none, 'italic')
    call s:my_highlight('@markup.strikethrough', s:palette.none, s:palette.none, 'strikethrough')
  endif
endif
" vimtex: https://github.com/lervag/vimtex {{{
highlight! link texCmd Green
highlight! link texCmdClass Purple
highlight! link texCmdTitle Purple
highlight! link texCmdAuthor Purple
highlight! link texCmdPart Purple
highlight! link texCmdBib Purple
highlight! link texCmdPackage Yellow
highlight! link texCmdNew Yellow
highlight! link texArgNew Orange
highlight! link texPartArgTitle BlueItalic
highlight! link texFileArg BlueItalic
highlight! link texEnvArgName BlueItalic
highlight! link texMathEnvArgName BlueItalic
highlight! link texTitleArg BlueItalic
highlight! link texAuthorArg BlueItalic
" }}}
" syn_begin: python {{{
" builtin: {{{
highlight! link pythonBuiltin Yellow
highlight! link pythonExceptions Purple
highlight! link pythonDecoratorName Blue
" }}}
" syn_end }}}
" syn_begin: lua {{{
" builtin: {{{
highlight! link luaFunc GreenBold
highlight! link luaFunction Aqua
highlight! link luaTable Fg
highlight! link luaIn RedItalic
" }}}
" syn_end }}}
" syn_begin: scala {{{
" builtin: https://github.com/derekwyatt/vim-scala {{{
highlight! link scalaNameDefinition Aqua
highlight! link scalaInterpolationBoundary Yellow
highlight! link scalaInterpolation Blue
highlight! link scalaTypeOperator Orange
highlight! link scalaOperator Orange
highlight! link scalaKeywordModifier Orange
" }}}
" syn_end }}}
" syn_begin: haskell {{{
" haskell-vim: https://github.com/neovimhaskell/haskell-vim {{{
highlight! link haskellBrackets Blue
highlight! link haskellIdentifier Yellow
highlight! link haskellAssocType Aqua
highlight! link haskellQuotedType Aqua
highlight! link haskellType Aqua
highlight! link haskellDeclKeyword RedItalic
highlight! link haskellWhere RedItalic
highlight! link haskellDeriving PurpleItalic
highlight! link haskellForeignKeywords PurpleItalic
" }}}
" syn_end }}}
" syn_begin: lisp {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_LISP {{{
highlight! link lispAtomMark Green
highlight! link lispKey Aqua
highlight! link lispFunc OrangeItalic
" }}}
" syn_end }}}
" syn_begin: sh/zsh {{{
" builtin: http://www.drchip.org/astronaut/vim/index.html#SYNTAX_SH {{{
highlight! link shRange Fg
highlight! link shTestOpr Orange
highlight! link shOption Aqua
highlight! link bashStatement Orange
highlight! link shOperator Orange
highlight! link shQuote Green
highlight! link shSet Orange
highlight! link shSetList Blue
highlight! link shSnglCase Orange
highlight! link shVariable Blue
highlight! link shVarAssign Orange
highlight! link shCmdSubRegion Green
highlight! link shCommandSub Orange
highlight! link shFunction GreenBold
highlight! link shFunctionKey RedItalic
" }}}
" syn_end }}}
" syn_begin: zsh {{{
" builtin: https://github.com/chrisbra/vim-zsh {{{
highlight! link zshOptStart PurpleItalic
highlight! link zshOption Blue
highlight! link zshSubst Yellow
highlight! link zshFunction GreenBold
highlight! link zshDeref Blue
highlight! link zshTypes Orange
highlight! link zshVariableDef Blue
" }}}
" syn_end }}}
" syn_begin: vim {{{
call s:my_highlight('vimCommentTitle', s:palette.grey1, s:palette.none, 'bold')
highlight! link vimLet Orange
highlight! link vimFunction GreenBold
highlight! link vimIsCommand Fg
highlight! link vimUserFunc GreenBold
highlight! link vimFuncName GreenBold
highlight! link vimMap PurpleItalic
highlight! link vimNotation Aqua
highlight! link vimMapLhs Green
highlight! link vimMapRhs Green
highlight! link vimSetEqual Yellow
highlight! link vimSetSep Fg
highlight! link vimOption Aqua
highlight! link vimUserAttrbKey Yellow
highlight! link vimUserAttrb Green
highlight! link vimAutoCmdSfxList Aqua
highlight! link vimSynType Orange
highlight! link vimHiBang Orange
highlight! link vimSet Yellow
highlight! link vimSetSep Grey
highlight! link vimContinue Grey
" syn_end }}}
" syn_begin: make {{{
highlight! link makeIdent Aqua
highlight! link makeSpecTarget Yellow
highlight! link makeTarget Blue
highlight! link makeCommands Orange
" syn_end }}}
" syn_begin: json {{{
highlight! link jsonKeyword Orange
highlight! link jsonQuote Grey
highlight! link jsonBraces Fg
" syn_end }}}
" syn_begin: yaml {{{
highlight! link yamlKey Orange
highlight! link yamlConstant Purple
" syn_end }}}
" syn_begin: toml {{{
call s:my_highlight('tomlTable', s:palette.purple, s:palette.none, 'bold')
highlight! link tomlKey Orange
highlight! link tomlBoolean Aqua
highlight! link tomlTableArray tomlTable
" syn_end }}}
" syn_begin: gitcommit {{{
" builtin {{{
highlight! link gitcommitSummary Red
highlight! link gitcommitUntracked Grey
highlight! link gitcommitDiscarded Grey
highlight! link gitcommitSelected Grey
highlight! link gitcommitUnmerged Grey
highlight! link gitcommitOnBranch Grey
highlight! link gitcommitArrow Grey
highlight! link gitcommitFile Green
" }}}
" nvim-treesitter/nvim-treesitter {{{
if has('nvim-0.8')
  highlight! link @text.gitcommit TSNone
endif
" }}}
" syn_end }}}
" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
