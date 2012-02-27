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
set backspace=indent,eol,start

set list                              " show whitespace
set listchars=nbsp:¬,eol:ϟ,tab:--,extends:»,precedes:«,trail:•
set wildignore+=*.o,.git

fixdel
filetype on
filetype plugin on

" -- Color scheme generator --
" Colors live in ~/.vim/colors/
" http://bytefluent.com/vivify/
colorscheme darkrobin
" -- Color scheme overrides --
highlight ExtraWhitespace ctermbg=none guibg=none ctermfg=red guifg=red
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

autocmd InsertEnter * highlight  CursorLine guifg=none ctermfg=none guibg=none ctermbg=none gui=none cterm=none
autocmd InsertLeave * highlight  CursorLine guifg=#eeeeee ctermfg=255 guibg=#003853 ctermbg=24  gui=none cterm=none

" Command-T
let g:CommandTMaxHeight          = 10
let g:CommandTMaxFiles           = 30000

:so ~/.vim/src/*
