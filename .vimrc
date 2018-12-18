" My vimrc
" Basic Settings
	filetype plugin on
	syntax on
	set encoding=utf-8
	set number
	set relativenumber
	set splitbelow
	set splitright
"	set spell
	set autoindent
	set wildmode=longest,list,full
	set wildmenu
	set mouse=a

" Basic keybinds
	:map <C-s> <Esc>:w<CR>
	vnoremap <C-c> "+Y :let @+=@*<CR>
	:map <C-v> "+P
	
" Markdown snippets
	autocmd Filetype markdown map <F5> :!pandoc<space><C-r>%<space>-o<space><C-r>%.pdf<Enter><Enter>
	autocmd Filetype rmd map <F5> :!echo<space>"require(rmarkdown);<space>rmarkdown::render('<c-r>%')"<space>\|<space>R<space>--vanilla<enter>﻿ 
