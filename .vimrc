syntax on

" Defaults and global settings
set enc=UTF-8             " <encoding>   Set the encoding
set nowrap                " <nowrap>     Don't wrap lines
set wmnu                  " <wildmenu>   Show tab completion when in menu
set wim=longest:full,full " <wildmode>   Complete full option.
set wig+=*.o,.git         " <wildignore> Files to ignore when autocompleting
set history=100           " <history>    History backlog. Default is 20

" Preferred spacing and shifting options
set sw=2   " <shiftwidth> Number of spaces per tab for auto indent
set sr     " <shiftround> Drop next line to previous shiftwidth
set ts=2   " <tabstop>    Spaces per tab
set et     " <expandtab>  In insert mode, use # of spaces to insert tab.
set sta    " <smarttab>   I think this helps with dropping a line
set ai     " <autoindent> Read name

" Searching in a file
set hls        " <hlsearch>   Highlight search strings
set ignorecase " <ignorecase> Ignore case when searching
set scs        " <smartcase>  Don't ignore case when capitals are present

" Movement control and visual pleasantries
set cul        " <cursorline>  Highlight the current line
set nu         " <number>      Show line numbers in gutter
set nuw=2      " <numberwidth> Default width of gutter
set sm         " <showmatch>   Show matching brackets and stuff
set sc         " <showcmd>     Show command in the last line of the screen
set vb t_vb=   " <visualbell>  Turns default to on.
set ve=block   " <virtualedit> Allows for selecting empty spaces.
set list       " <list>        Turn list on and set characters below
set lcs=nbsp:¬,eol:ϟ,tab:--,extends:»,precedes:«,trail:•
" set ww=h,l,<,>,[,] " allow h/l/left/right to cross line boundaries

" Globals, overrides and traditional fixes
set ru                         " <runtime> Load in other files
set bsk=/tmp/*,/private/tmp/*  " <backupskip> Dont make swp files here
set nojs                       " <nojoinspaces> Dont auto-insert two spaces
set backspace=indent,eol,start " Fix backspace to play with other lines.
fixdel                         " Remove added backspace characters
filetype on                    " filetype plugin indent on

:so ~/.vim/src/plugin_configs.vim " Load third party configs
:so ~/.vim/src/cat.vim            " Load Nyan cat for funzies

" -- Code folding
set fdm=indent  " <foldmethod>   Type of folding to use
set fdc=2       " <foldcolumn>   Width of side column
set fdn=3       " <foldnextmax>  Max number of nesting folds
set fml=2       " <foldminlines> Min number of lines for a fold to be built
set fdl=1       " <foldlevel>    Level of folds to close

" -- Color scheme generator --
" Colors live in ~/.vim/colors/ -- http://bytefluent.com/vivify/
colorscheme darkrobin

" -- Color scheme overrides --
highlight ExtraWhitespace ctermbg=none guibg=none ctermfg=red guifg=red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

autocmd InsertEnter * highlight CursorLine guifg=none ctermfg=none guibg=none ctermbg=none gui=none cterm=none
autocmd InsertLeave * highlight CursorLine guifg=#eeeeee ctermfg=255 guibg=#003853 ctermbg=24  gui=none cterm=none
