call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
"Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'roxma/ncm-clang'
Plug 'haya14busa/vim-asterisk'
"Plug 'Shougo/neoinclude.vim'
Plug 'vim-scripts/DoxygenToolkit.vim'
"Plug 'NLKNguyen/c-syntax.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'hdima/python-syntax'

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
"Plug 'w0rp/ale'
"
Plug 'morhetz/gruvbox'

"Plug 'mhinz/vim-startify'

Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
"Plug 'townk/vim-autoclose'
Plug 'jiangmiao/auto-pairs'
Plug 'Chiel92/vim-autoformat'
"Plug 'gabrielelana/vim-markdown'
"Plug 'w0ng/vim-hybrid'
"Plug 'kristijanhusak/vim-hybrid-material'
"Plug 'raimondi/delimitmate'
"Plug 'crusoexia/vim-monokai'
Plug 'dikiaap/minimalist'
Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'vim-scripts/bufexplorer.zip'
Plug 'tpope/vim-fugitive'



Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'
Plug 'godlygeek/tabular'
Plug 'rafi/awesome-vim-colorschemes'


"Plug 'maralla/completor.vim'
Plug 'hynek/vim-python-pep8-indent'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'ervandew/supertab'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'joshdick/onedark.vim'
"Plug 'ajmwagar/vim-deus'
"Plug 'nvie/vim-flake8'
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

"Plug 'fatih/vim-go'




call plug#end()
set t_Co=256
"set t_8f=^[[38;2;%lu;%lu;%lum
"set t_8b=^[[48;2;%lu;%lu;%lum



"　load plugins config
"if filereadable(expand("~/.vimrcplugin"))
"  source ~/.vimrcplugin
"endif
let g:ycm_python_binary_path = "/home/jing/miniconda3/envs/torch/bin/python3.6"
"let g:python3_host_prog = '/path/to/python3'
" change leader key
let mapleader = ','
let g:mapleader = ','

set guifont=DejaVu\ Sans\ Mono\ 12
" 语法高亮
syntax enable
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


set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)


" 配色方案 
set termguicolors
set background=dark
colorscheme gruvbox

let python_highlight_all = 1

"let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
"let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"let g:solarized_visibility="high"
"let g:solarized_diffmode="high"

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
nnoremap / /\v
vnoremap / /\v
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
set textwidth=79
set formatoptions=qrn1
set colorcolumn=79
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


autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
"completor 
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
"set completeopt-=longest
"set completeopt+=menuone
"set completeopt-=menu
"if &completeopt !~# 'noinsert\|noselect'
"  set completeopt+=noselect
"endif
"
"let g:completor_python_binary = '/usr/bin/python3.5'
"
"
"nmap <leader>l :set list!<CR>
"set listchars=tab:▸\ ,eol:¬
"highlight NonText guifg=#4a4a59
"highlight SpecialKey guifg=#4a4a59
"let g:completor_clang_binary = '/usr/bin/clang'
"


""Syntastic
"
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 1
"let g:syntastic_quiet_messages = { "type": "style" }
"let g:syntastic_python_checkers = ['flake8']
"


"
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
"let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1                                                    
"let g:ycm_python_binary_path = '/home/jing/miniconda3/envs/tf/bin/python'
"let g:ycm_server_keep_logfiles = 1
"let g:ycm_server_log_level = 'debug'


" youcompleteme and snips

"let g:UltiSnipsExpandTrigger="<tab>"
"let g:UltiSnipsJumpForwardTrigger="<tab>"
"let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"let g:ycm_key_list_select_completion = ["<c-n>", "down", "<TAB>"]
"let g:ycm_key_list_previous_completion = ["<c-p>", "up"]
"let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:ycm_autoclose_preview_window_after_completion = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1

"let g:ycm_key_invoke_completion = '<TAB>'

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
"autocmd BufWritePost * call system("ctags -R")
nnoremap <C-\> :CtrlPTag<cr>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

"let g:ackprg = 'ag --nogroup --nocolor --column'
"let g:indent_guides_enable_on_vim_startup = 1

if executable('rg')
  let g:ackprg = 'rg --vimgrep'
endif

nnoremap <Leader>a :Ag<Space><Enter>
nnoremap <Leader>l :BLines<Space><Enter>
nnoremap <Leader>g :GFiles<Space><Enter>
nnoremap <Leader>f :Files<Space><Enter>
nnoremap <Leader>t :BTags<Space><Enter>
nnoremap <C-p> :GFiles<Space><Enter>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"let g:airline#extensions#ale#enabled = 1

"nmap <silent> <C-k> <Plug>(ale_previous_wrap)
"nmap <silent> <C-j> <Plug>(ale_next_wrap)
"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
"let g:asterisk#keeppos = 1
"map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map z*  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)

"let g:ale_python_flake8_executable = 'python3'   " or 'python' for Python 2

"let g:ale_python_pylint_executable = 'python3'   " or 'python' for Python 2

let g:LanguageClient_autoStart = 1

let g:LanguageClient_serverCommands = {
    \ 'python': ['pyls'],
    \ 'cpp': ['~/.local/stow/cquery/bin/cquery', '--language-server'],
    \ }
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_settingsPath = '/home/jing/.config/nvim/settings.json'

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

set inccommand=nosplit


" fzf and rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)


let g:rg_command = '
  \ rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --color "always"
  \ -g "*.{js,json,php,md,styl,jade,html,config,py,cpp,c,go,hs,rb,conf}"
  \ -g "!{.git,node_modules,vendor}/*" '

command! -bang -nargs=* F call fzf#vim#grep(g:rg_command .shellescape(<q-args>), 1, <bang>0)

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
nnoremap <leader>d :Dox<cr>


" Session Plugin Config
:let g:session_autosave = 'no'
"nnoremap <leader>wso :OpenSession 
"nnoremap <leader>wss :SaveSession 
"nnoremap <leader>wsd :DeleteSession<CR>
"nnoremap <leader>wsc :CloseSession<CR>

