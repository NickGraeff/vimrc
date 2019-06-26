"Pathogen thing        
execute pathogen#infect()

"Typical formatting stuff
syntax enable
filetype plugin indent on 
colorscheme gruvbox 
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

"Vertical cursor?
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=1\x7"

"Fucking mac mapping
set backspace=indent,eol,start
imap <C-[>b <C-o>ge
imap <C-[>f <C-o>w
nmap <C-[>b ge
nmap <C-[>f w
vmap <C-[>b ge
vmap <C-[>f w
nmap <C-?> "_d<Left>
imap <C-D> <C-o>"_x
nmap <C-D> "_x
imap <C-[>d <C-o>dw
nmap <C-[>d dw
imap <C-[><C-?> <C-o>db
nmap <C-[><C-?> db
