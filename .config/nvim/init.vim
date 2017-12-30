call plug#begin('~/.local/share/nvim/plugged')

"nerdplugin
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'

" jump and easy edit
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" rainbow parentheses
Plug 'junegunn/rainbow_parentheses.vim'

" enhanced asterisk * 
Plug 'haya14busa/vim-asterisk'

" select
Plug 'terryma/vim-expand-region'

" enhanced motion
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'godlygeek/tabular'

" Completion
Plug 'roxma/nvim-completion-manager'
"Plug 'roxma/ncm-clang'

" Session Manager

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'w0rp/ale'

" colorscheme and airline
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dikiaap/minimalist'

" fzf and ack, fuzzy finder
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-scripts/bufexplorer.zip'

" git plugin
Plug 'tpope/vim-fugitive'



Plug 'Shougo/echodoc.vim'

" TagBar F8
Plug 'majutsushi/tagbar'


" indent and format, auto pairs
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
Plug 'nathanaelkane/vim-indent-guides'

" language plugin
Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

" Python
Plug 'hynek/vim-python-pep8-indent'
Plug 'hdima/python-syntax'

Plug 'davidhalter/jedi-vim'
" Cpp
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-scripts/DoxygenToolkit.vim'



call plug#end()

let g:ycm_python_binary_path = "/home/jing/miniconda3/envs/torch/bin/python3.6"

" true color and colorscheme UI and font
set t_Co=256
set guifont=DejaVu\ Sans\ Mono\ 12
set termguicolors
set background=dark
colorscheme gruvbox

" change leader key
let mapleader = ' '
let g:mapleader = ' '

" 语法高亮
syntax enable
let python_highlight_all = 1
" 自动补全
filetype plugin indent on          
set history=2000
"　文件修改后自动载入
set autoread
" 隐藏一些自动生成的文件
set wildignore+=.o,*.bak,*.byte,*.native,*~,*.sw?,*.aux,*.toc,*.hg,*.git,*.svn,*.hi,*.so,*.a,*.pyc,*.aux,*.toc,*.exe

" tabs and spaces
set list
set showbreak=↪\ 

set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·



" show statusline and tabline
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)



" 突出显示
set cursorline
"set cursorcolumn
" 鼠标暂不启用, 键盘党....
"set mouse-=a
" 启用鼠标
" set mouse=a
" Hide the mouse cursor while typing
" set mousehide

set nocompatible
set modelines=0

set tabstop=2
set smarttab
"　缩进宽度和退格
set shiftwidth=2
set softtabstop=2
set expandtab
" 编码格式
set encoding=utf-8
set scrolloff=3
" 自动锁紧
set autoindent
"　显示命输入令和模式
set showmode
set showcmd
set hidden
set wildmenu
"set wildmode=list:longest
set wildmode=full
set visualbell
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
"set relativenumber
set number
set undofile
"　正则
"nnoremap / /\v
"vnoremap / /\v
" 大小写
set ignorecase 
set smartcase
set gdefault
set incsearch
"　括号匹配
set showmatch
" 高亮显示搜索
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
            
set wrap
set textwidth=80
set formatoptions=qrn1
set colorcolumn=80
" 取消方向键
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk
" F1　误触
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


"nnoremap ; :
au FocusLost * :wa
" jj 替代　ＥＳＣ
inoremap jj <ESC>
nnoremap <leader>w <C-w>v<C-w>l
"　分屏宽口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab　switch
map <leader>th :tabfirst<cr>
map <leader>tl :tablast<cr>

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>
noremap \ ,

set autowrite

" 命令 tab 显示模式, 此模式类似zsh
set inccommand=nosplit

" Vim-go
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)


" NERDTree
"let g:nerdtree_tabs_open_on_console_startup = 1

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
     exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
      exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
  
  call NERDTreeHighlightFile('jade', 'green', 'none', 'green', '#151515')
  call NERDTreeHighlightFile('ini', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('md', 'blue', 'none', '#3366FF', '#151515')
  call NERDTreeHighlightFile('yml', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('json', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
  call NERDTreeHighlightFile('styl', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('css', 'cyan', 'none', 'cyan', '#151515')
  call NERDTreeHighlightFile('coffee', 'Red', 'none', 'red', '#151515')
  call NERDTreeHighlightFile('js', 'Red', 'none', '#ffa500', '#151515')
  call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" airline
let g:airline_theme="gruvbox" 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_powerline_fonts = 1



" tagbar width

let g:tagbar_width=30
map <F8> :TagbarToggle<CR>

map <C-n> :NERDTreeToggle<CR>

" parentheses color
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|png|jpg|)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

noremap <F3> :Autoformat<CR>

"let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:indent_guides_enable_on_vim_startup = 1


nnoremap <Leader>a :Ag<Space><Enter>
nnoremap <Leader>l :BLines<Space><Enter>
nnoremap <Leader>g :GFiles<Space><Enter>
nnoremap <Leader>f :Files<Space><Enter>
nnoremap <Leader>t :BTags<Space><Enter>
nnoremap <Leader>b :Buffers<Space><Enter>
nnoremap <C-p> :GFiles<Space><Enter>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

nmap s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)
let g:asterisk#keeppos = 1
map *   <Plug>(asterisk-z*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

"let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2

"let g:ale_python_pylint_executable = 'python3'   " or 'python' for Python 2

" LanguageServer Plugin
let g:LanguageClient_autoStart = 1

"\ 'python': ['pyls'],
let g:LanguageClient_serverCommands = {
    \ 'cpp': ['~/.local/stow/cquery/bin/cquery', '--language-server'],
    \ }


let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/jing/.config/nvim/settings.json'


"let g:cm_sources_override = {
"    \ 'cm-jedi': {'enable':1}
"    \ }

" fzf and ag
let g:fzf_buffers_jump = 1

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Ack
"
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>


" Doxygen
let g:DoxygenToolkit_authorName="Jing" 
let g:DoxygenToolkit_licenseTag="Copyright@Java306"
"nnoremap <leader>d :Dox<cr>


" Session Plugin Config
:let g:session_autosave = 'no'

set shortmess+=c
set noshowmode

" ale
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_warning = '⚠'
let g:ale_sign_error = '✖'
let g:ale_linters = {'python': ['pylint']} 
nmap <silent> <a-k> <Plug>(ale_previous_wrap)
nmap <silent> <a-j> <Plug>(ale_next_wrap)

let g:ale_lint_on_text_changed = 'never'
let g:cm_sources_override = {
    \ 'cm-jedi': {'enable':1}
    \ }

" jedi 仅仅作为跳转, 不负责自动完成
let g:jedi#completions_enabled = 0
let g:jedi#goto_assignments_command = ""
let g:jedi#usages_command = ""
let g:jedi#rename_command = ""

" expand select
vmap K <Plug>(expand_region_expand)
vmap J <Plug>(expand_region_shrink)

