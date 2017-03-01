"Pathogen thing        
execute pathogen#infect()

"Typical formatting stuff
syntax enable
filetype plugin indent on 
colorscheme boltzmann 
set ruler
set number
set history=700
set mouse=a
set cmdheight=4

"Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_asm_checkers = ['yasm']
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set t_Co=256
hi Normal ctermfg=grey ctermbg=darkblue

"Remappings

set ts=4
set sw=4
set sts=4
