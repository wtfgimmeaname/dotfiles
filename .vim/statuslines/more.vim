" tpope's
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c-%v\ %)%P

" frogonwheels'
" set statusline=%f%w%m%h%1*%r%2*%{VarExists('b:devpath','<Rel>')}%3*%{VarExists('b:relpath','<Dev>')}%{XLockStat()}%=%-15(%l,%c%V%)%P

" godlygeek's
" let &statusline='%<%f%{&mod?"[+]":""}%r%{&fenc !~ "^$\\|utf-8" || &bomb ? "[".&fenc.(&bomb?"-bom":"")."]" : ""}%=%15.(%l,%c%V %P%)'
