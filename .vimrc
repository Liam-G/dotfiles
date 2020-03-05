colorscheme ron

syntax on
set number

set undofile
set undodir=~/.vim/undo

set mouse=a
set ttymouse=xterm2
set autoindent
set cindent

set tabstop=4
set shiftwidth=4
set whichwrap+=<,>,h,l,[,]

let g:ycm_global_ycm_extra_conf = '~/.config/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_max_diagnostics_to_display = 0
let g:ycm_autoclose_preview_window_after_completion= 1

inoremap ' ''<left>
inoremap " ""<left>
inoremap { {}<left>
inoremap ( ()<left>
inoremap [ []<left>

