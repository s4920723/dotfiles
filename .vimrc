" My vimrc
" Removing arrow keys to make my life a living hell
	no <left> <Nop>
	no <right> <Nop>
	no <up> <Nop>
	ino <down> <Nop>
	ino <left> <Nop>
	ino <right> <Nop>
	ino <up> <Nop>
	vno <down> <Nop>
	vno <left> <Nop>
	vno <right> <Nop>
	vno <up> <Nop>
	

" Basic Settings
	filetype plugin on
	syntax on
	set encoding=utf-8
	set nohlsearch
	set number
	set relativenumber
	set splitbelow
	set splitright
	"set spell spelllang=en_gb
  "set spell
	set autoindent
	set wildmode=longest,list,full
	set wildmenu
	set mouse=a
	set exrc
	set secure
	set tabstop=2
	execute pathogen#infect()


" Basic keybinds
	nmap ss <Esc>:w<CR>
	nmap <CR> i<CR><ESC>^
	vnoremap cc "+Y :let @+=@*<CR>
	nmap pp "+P
	nmap <Tab><Tab> :NERDTreeToggle<CR>
	inoremap jj <ESC>		
	no <down> ddp
	no <up> ddkP

" EasyMotion
 	nmap ff <Leader><Leader>w
	nmap FF <Leader><Leader>W

" Markdown snippets
	autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
	autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>rmarkdown::render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>﻿ 
