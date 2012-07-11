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
" filetype plugin indent on
filetype on

" -- Testing Code folding
" set foldmethod=expr
" set foldexpr=getline(v:lnum)=~'^*:*\->$'&&getline(v:lnum-1)=~'^*:*\->$'
" set fdm=indent
" set foldnestmax=2
" set foldlevel=1

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

" Load third party configs
:so ~/.vim/src/plugin_configs.vim

" Load Nyan cat for funzies
:so ~/.vim/src/cat.vim
