set smartindent
set number
set mouse=a
set title
syntax on
"color deus
set ts=2
set sw=2
set backspace=indent,eol,start

" [Type of Cursor]
" Reference chart of values:
"	Ps = 0 -> blinking block.
"	Ps = 1 -> blinking block (default).
"	Ps = 2 -> steady block.
"	Ps = 3 -> blinking underline.
"	Ps = 4 -> steady underline.
"	Ps = 5 -> blinking bar (xterm).
"	Ps = 6 -> steady bar (xterm).
let &t_SI = "\e[5 q" " for insert mode
let &t_EI = "\e[2 q" " for everything else

au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif
