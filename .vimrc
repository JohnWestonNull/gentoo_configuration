"Plugins"
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'Badacadabra/vim-archery'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'scheakur/vim-scheakur'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/tagbar'
Plug 'dyng/ctrlsf.vim'
Plug 'skywind3000/vim-terminal-help'
Plug 'ludovicchabant/vim-gutentags'
Plug 'ajh17/VimCompletesMe'
Plug 'vim-scripts/AutoComplPop'
call plug#end()

"Color Scheme"
let g:solarized_termcolors=16 
set t_Co=256 
set background=dark
colorscheme hybrid_material
syntax on

"FileEncoding"
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"LineNumber"
set nu
set number

"Cursor Line"
set cul

"Mouse Support"
set selection=exclusive
set selectmode=mouse,key

"Appearence and Functionality"
set showmatch
set tabstop=2
set shiftwidth=2
set autoindent
set laststatus=2
set ruler
filetype plugin indent on
set ttimeout
set ttimeoutlen=0
set matchtime=0
"For savedconfig"
set modeline
set modelines=5
"Terminal"
set splitbelow
"Tagbar Config"
let g:tagbar_autofocus = 1
let g:tagbar_autoshowtag = 1
let g:tagbar_position = 'botright vertical'
nmap <F3> :TagbarToggle<CR>

"AutoPair Config"
"Ctrl + v -> Alt + Key to produce required seq"
let g:AutoPairsShortcutToggle = '<A-p>'
let g:AutoPairsShortcutFastWrap = '<A-e>'

"NERDTree Config"
let NERDTreeShowBookmarks = 1
let NERDTreeShowHidden = 1      
let NERDTreeShowLineNumbers = 0 
let NERDTreeMinimalMenu = 1     
let NERDTreeWinPos = "left"     
let NERDTreeWinSize = 31        
nmap <F2> :NERDTreeToggle<CR>

"CtrlSF Config"
let g:ctrlsf_backend = 'ack'
let g:ctrlsf_case_sensitive = 'smart'
let g:ctrlsf_auto_focus = {"at":"start"}
let g:ctrlsf_auto_close = { "normal":0, "compact":0  }
let g:ctrlsf_default_view = 'compact'
let g:ctrlsf_default_root = 'cwd'
nmap <C-F>f <Plug>CtrlSFPrompt
xmap <C-F>f <Plug>CtrlSFPromptVwordPath
nmap <C-F>f <Plug>CtrlSFCwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t :CtrlSFToggle<CR>

"Terminal Config"
let g:terminal_shell='/bin/bash'
let g:terminal_key='<C-t>'
let g:terminal_height=50
