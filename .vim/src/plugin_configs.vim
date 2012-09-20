" Pathogen load
call pathogen#infect()

" Command-T
let g:CommandTMaxHeight          = 10
let g:CommandTMaxFiles           = 30000

" NERDTree
nmap <silent> <c-n> :NERDTreeToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Conque - On load, load bash profile
" let runmybash = conque_term#open('bash', ['source ~/.bash_profile'])

" CoffeeScript
" au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
" au BufNewFile,BufWritePost *.coffee setl shiftwidth=2 expandtab
