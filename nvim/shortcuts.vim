" split shortcuts
nmap <leader>v :vsp<CR>
nmap <leader>s :sp<CR>

" move selected lines up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" exit terminal insert mode on ESC
tnoremap <Esc> <C-\><C-n>

" move to terminal buffer
nmap <C-l> :b term<Tab><CR>
