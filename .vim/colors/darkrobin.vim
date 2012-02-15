set background=dark "or light
highlight clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "darkrobin"
set t_Co=256

highlight Boolean             guifg=#8da0a0 ctermfg=109                           gui=bold cterm=bold
highlight CTagsClass          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalConstant guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsGlobalVariable guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsImport         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight CTagsMember         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Character           guifg=#a0644d ctermfg=173                           gui=none cterm=none
highlight Comment             guifg=#606099 ctermfg=60                            gui=none cterm=none
highlight Conditional         guifg=#b05a50 ctermfg=131                           gui=none cterm=none
highlight Constant            guifg=#8da0a0 ctermfg=109                           gui=none cterm=none
highlight Cursor              guifg=#ffffff ctermfg=15  guibg=#bebebe ctermbg=7   gui=none cterm=none
highlight CursorColumn        guifg=#eeeeee ctermfg=255 guibg=#003853 ctermbg=24  gui=none cterm=none
highlight CursorLine          guifg=#eeeeee ctermfg=255 guibg=#003853 ctermbg=24  gui=none cterm=none
highlight Debug               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Define              guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight DefinedName         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Delimiter           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight DiffAdd             guifg=#e0eee0 ctermfg=194 guibg=#008b8b ctermbg=30  gui=none cterm=none
highlight DiffChange          guifg=#e0eee0 ctermfg=194 guibg=#008b00 ctermbg=28  gui=none cterm=none
highlight DiffDelete          guifg=#e0eee0 ctermfg=194 guibg=#000000 ctermbg=0   gui=none cterm=none
highlight DiffText            guifg=#8da0a0 ctermfg=109                           gui=bold cterm=bold
highlight Directory           guifg=#20b2aa ctermfg=37                            gui=none cterm=none
highlight EnumerationName     guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight EnumerationValue    guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Error               guifg=#ffffff ctermfg=15  guibg=#ff0000 ctermbg=196 gui=none cterm=none
highlight ErrorMsg            guifg=#ffffff ctermfg=15  guibg=#ff0000 ctermbg=196 gui=none cterm=none
highlight Exception           guifg=#b05a50 ctermfg=131                           gui=bold cterm=bold
highlight Float               guifg=#8da0a0 ctermfg=109                           gui=none cterm=none
highlight FoldColumn          guifg=#003853 ctermfg=24 guibg=#000000 ctermbg=0  gui=bold cterm=bold
highlight Folded              guifg=#003853 ctermfg=24 guibg=#000000 ctermbg=0  gui=bold cterm=bold
" highlight Folded              guifg=#b0d0e0 ctermfg=117 guibg=#305060 ctermbg=74  gui=bold cterm=bold
highlight Function            guifg=#9acd32 ctermfg=149                           gui=none cterm=none
highlight Identifier          guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight Ignore              guifg=#204050 ctermfg=74                            gui=none cterm=none
highlight IncSearch           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Include             guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight Keyword             guifg=#b05a50 ctermfg=131                           gui=bold cterm=bold
highlight Label               guifg=#b05a50 ctermfg=131                           gui=none cterm=none
highlight LineNr              guifg=#909000 ctermfg=100 guibg=#101010 ctermbg=233 gui=bold cterm=bold
highlight LocalVariable       guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Macro               guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight MatchParen          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight ModeMsg             guifg=#90ee90 ctermfg=114 guibg=#006400 ctermbg=22  gui=none cterm=none
highlight MoreMsg             guifg=#2e8b57 ctermfg=72                            gui=bold cterm=bold
highlight NonText             guifg=#000000 ctermfg=0   guibg=#101010 ctermbg=233 gui=none cterm=none
highlight Normal              guifg=#e0eee0 ctermfg=194 guibg=#101010 ctermbg=233 gui=none cterm=none
highlight Number              guifg=#8da0a0 ctermfg=109                           gui=none cterm=none
highlight Operator            guifg=#c0ba98 ctermfg=144                           gui=none cterm=none
highlight PMenu               guifg=#dddddd ctermfg=253 guibg=#747678 ctermbg=67  gui=bold cterm=bold
highlight PMenuSbar           guifg=#dddddd ctermfg=253 guibg=#949698 ctermbg=67  gui=bold cterm=bold
highlight PMenuSel            guifg=#88dd88 ctermfg=114 guibg=#a4a6a8 ctermbg=67  gui=bold cterm=bold
highlight PMenuThumb          guifg=#dddddd ctermfg=253 guibg=#c4c6c8 ctermbg=110 gui=bold cterm=bold
highlight PreCondit           guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight PreProc             guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight Question            guifg=#4eee94 ctermfg=85                            gui=bold cterm=bold
highlight Repeat              guifg=#b05a50 ctermfg=131                           gui=none cterm=none
highlight Search              guifg=#000000 ctermfg=0   guibg=#bebebe ctermbg=7   gui=none cterm=none
highlight SignColumn          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Special             guifg=#66cdaa ctermfg=79                            gui=bold cterm=bold
highlight SpecialChar         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialComment      guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpecialKey          guifg=#324262 ctermfg=68  guibg=#103040 ctermbg=24  gui=none cterm=none
highlight SpellBad            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellCap            guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellLocal          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight SpellRare           guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Statement           guifg=#b05a50 ctermfg=131                           gui=none cterm=none
highlight StatusLine          guifg=#000000 ctermfg=0   guibg=#606050 ctermbg=101 gui=bold cterm=bold
highlight StatusLineNC        guifg=#000001 ctermfg=17  guibg=#606050 ctermbg=101 gui=none cterm=none
highlight StorageClass        guifg=#50a085 ctermfg=79                            gui=none cterm=none
highlight String              guifg=#a0644d ctermfg=173                           gui=none cterm=none
highlight Structure           guifg=#50a085 ctermfg=79                            gui=none cterm=none
highlight TabLine             guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineFill         guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight TabLineSel          guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Tag                 guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight Title               guifg=#e066ff ctermfg=171                           gui=bold cterm=bold
highlight Todo                guifg=#900000 ctermfg=88  guibg=#909000 ctermbg=100 gui=none cterm=none
highlight Type                guifg=#70b970 ctermfg=71                            gui=none cterm=none
highlight Typedef             guifg=#50a085 ctermfg=79                            gui=none cterm=none
highlight Underlined          guifg=#838b83 ctermfg=65                            gui=underline cterm=underline
highlight Union               guifg=#eeeeee ctermfg=255                           gui=none cterm=none
highlight VertSplit           guifg=#000000 ctermfg=0   guibg=#999999 ctermbg=246 gui=none cterm=none
highlight Visual              guifg=#2e8b57 ctermfg=72  guibg=#ffffff ctermbg=15  gui=none cterm=none
highlight VisualNOS           guifg=#eeeeee ctermfg=255                           gui=bold,underline cterm=bold,underline
highlight WarningMsg          guifg=#ffffff ctermfg=15                            gui=bold cterm=bold
highlight WildMenu            guifg=#000000 ctermfg=0   guibg=#7fff00 ctermbg=118 gui=bold cterm=bold
highlight pythonBuiltin       guifg=#e0eee0 ctermfg=194                           gui=none cterm=none
