"Pathogen thing        
execute pathogen#infect()

"Typical formatting stuff
syntax enable
filetype plugin indent on 
colorscheme gruvbox 
set copyindent
set t_Co=256
set background=dark
set ruler
set number
set history=700
set mouse=a
set cmdheight=2
set ts=4
set sw=4
set sts=4

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

"Syntax highlighting of nasm for asm filetypes
au BufReadPost *.asm set syntax=nasm

"Undo saving
" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

	" Keep undo history across sessions by storing it in a file
	if has('persistent_undo')
		let myUndoDir = expand(vimDir . '/undodir')
		" Create dirs
		call system('mkdir ' . vimDir)
		call system('mkdir ' . myUndoDir)
		let &undodir = myUndoDir
		set undofile
	endif

"Use system clipboard by default
set clipboard=unnamed

"Enable automatic folding
set foldmethod=indent
set foldlevel=1
set nofoldenable
set foldclose=all
set autoindent

"Highlight cursor line
set cursorline

