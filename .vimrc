"Activate pathogen

execute pathogen#infect()
filetype plugin indent on
syntax on
set encoding=utf8

" color scheme
syntax enable
set background=dark
set t_Co=256
"set term=xterm-256color
"let base16colorspace=256
"let g:solarized_termcolors=256
"colorscheme solarized8
"colorscheme hybrid_material
"colorscheme base16-default-dark
colorscheme monokai
" python3 path

let g:python3_host_prog = '/Users/cnguy049/miniconda/bin/python3'

" use mouse
set mouse=a

" number
set nu
set tabstop=4
set softtabstop=4
set autoindent
set fileformat=unix
set shiftwidth=4
set splitbelow
set laststatus=2
set showtabline=2
" nerdtree:
autocmd vimenter * NERDTree
map <F6> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" powerline
let g:Powerline_symbols = 'fancy'
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2

" no swap files
set noswapfile

" youcompleteme
let g:ycm_autoclose_preview_window_after_completion=1
map <C-g> :YcmCompleter GoToDefinitionElseDeclaration<CR>

" set timeoutlen for no delay escape
set timeoutlen=1000 ttimeoutlen=0

" hot key for switch tab
map <C-h> <Esc>:tabp<CR>
map <C-l> <Esc>:tabn<CR>

:autocmd CursorMoved * exe printf('match IncSearch /\V\<%s\>/', escape(expand('<cword>'), '/\'))

" python-mode autocomplete

filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

let g:pymode_rope = 0
let g:pymode_rope_completion = 1
let g:pymode_rope_completion_bind = '<C-Space>'

noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p
