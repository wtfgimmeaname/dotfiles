" THINGS TO DOWNLOAD
" pathogen
" ctrl-p (Sorry Wincent)
" fugitive, surround, nerd tree, ack
" syntastic, vim-coffee, vim-less, vim-powerline

" Pathogen load
call pathogen#infect()

" Ctrl-P
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_prompt_mappings = { 'PrtSelectMove("j")':   ['<c-m>', '<down>'] }
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(js|pyc)$'
\ }

" NERDTree
nmap <silent> <c-n> :NERDTreeToggle<CR>

" Powerline
let g:Powerline_symbols = 'fancy'

" Conque - On load, load bash profile
" let runmybash = conque_term#open('bash', ['source ~/.bash_profile'])

" CoffeeScript
" au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!
" au BufNewFile,BufWritePost *.coffee setl shiftwidth=2 expandtab
