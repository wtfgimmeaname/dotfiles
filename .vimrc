syntax on

set encoding=UTF-8
set nowrap
set shiftwidth=2                      " spaces per tab (when shifting)
set shiftround                        " always indent by multiple of shiftwidth
set tabstop=2                         " spaces per tab
set expandtab
set smarttab
set showmatch
set vb t_vb=
set ru
set ai
set number                            " show line numbers in gutter
set numberwidth=2
set hlsearch                          " highlight search strings
set ignorecase                        " ignore case when searching
set smartcase                         " except when search string includes a capital letter
set ww=h,l,<,>,[,]                    " allow h/l/left/right to cross line boundaries
set wildmenu                          " show options as list when switching buffers etc
set wildmode=longest:full,full        " shell-like autocomplete to unambiguous portion
set history=1000                      " longer search and command history (default is 20)
set virtualedit=block                 " allow cursor to move where there is no text in visual block mode
set cursorline                        " highlight current line
set showcmd                           " extra info in command line
set nojoinspaces                      " don't autoinsert two spaces after '.', '?', '!' for join command
set wildignore+=*.o,.git              " patterns to ignore during file-navigation
set backspace=indent,eol,start

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
" cf the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" format markers:
"   %< truncation point
"   %n buffer number
"   %f relative path to file
"   %m modified flag [+] (modified), [-] (unmodifiable) or nothing
"   %r readonly flag [RO]
"   %y filetype [ruby]
"   %= split point for left and right justification
"   %-35. width specification
"   %l current line number
"   %L number of lines in buffer
"   %c current column number
"   %V current virtual column number (-n), if different from %c
"   %P percentage through buffer
"   %) end of width specification
"   set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

"set list                          " show whitespace
"et listchars=nbsp:¬,eol:¶,tab:--,extends:»,precedes:«,trail:•

highlight LineNr cterm=NONE ctermfg=white gui=NONE guifg=DarkGrey guibg=NONE
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
fixdel

" Command-T
let g:CommandTMaxHeight          = 10
let g:CommandTMaxFiles           = 30000
