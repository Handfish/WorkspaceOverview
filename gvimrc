colorscheme wombat
set guifont=Monospace\ 12

" nmap <C-V> "+gP
imap <C-V> <ESC>"+gPi
vmap <C-C> "+y
vnoremap p "0p

if !exists("g:vimrcloaded")
  winpos 0 0
  winsize 92 140
  let g:vimrcloaded = 1
endif
