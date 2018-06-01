if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.local/share/nvim/plugged')

"nerdplugin
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'skywind3000/asyncrun.vim'

" jump and easy edit
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'

" argument text-object support
Plug 'gaving/vim-textobj-argument'
" rainbow parentheses
Plug 'junegunn/rainbow_parentheses.vim'

" enhanced asterisk * 
Plug 'haya14busa/vim-asterisk'

" repeat for vim-surround
Plug 'tpope/vim-repeat'
" enhanced motion
"Plug 'tpope/vim-unimpaired'
"Plug 'godlygeek/tabular'

" Completion
Plug 'valloric/youcompleteme'

" synatic check engine
Plug 'w0rp/ale'

" Session Manager

Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'


" colorscheme and airline
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Plug 'dikiaap/minimalist'

" fzf and ack, fuzzy finder
Plug 'mileszs/ack.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'

Plug 'Yggdroot/LeaderF'

"Plug 'vim-scripts/bufexplorer.zip'

" git plugin
"Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'


" smart input method plugin
Plug 'lilydjwg/fcitx.vim'


Plug 'Shougo/echodoc.vim'

" about Tags
"Plug 'majutsushi/tagbar'

Plug 'ludovicchabant/vim-gutentags'


" indent and format, auto pairs
Plug 'jiangmiao/auto-pairs'
"Plug 'Chiel92/vim-autoformat'
" indent visualization
"Plug 'nathanaelkane/vim-indent-guides'

" language plugin
"Plug 'autozimu/LanguageClient-neovim', { 'do': ':UpdateRemotePlugins' }
"Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
"Plug 'rust-lang/rust.vim'

" Python
Plug 'hynek/vim-python-pep8-indent'
Plug 'hdima/python-syntax'

"Plug 'davidhalter/jedi-vim'
" Cpp
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'vim-scripts/DoxygenToolkit.vim'



call plug#end()



" true color and colorscheme UI and font
"set t_Co=256
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
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
"set list
"set showbreak=↪\ 

"set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·



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

" No need for current version vim
" set nocompatible 
" 避免某个安全漏洞
"set modelines=0

"　缩进宽度和退格,跟其他编辑器的设置有区别，一般不要更改
set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab

" 编码格式
set encoding=utf-8

" 至少保留在屏幕的行数
set scrolloff=3

" 自动缩进
set autoindent


" 在命令行上面显示候选项
set wildmenu
set wildmode=full
set visualbell
set ttyfast

" 在右下角显示当前光标所在位置（行列）
set ruler
set laststatus=2
"set relativenumber
" 显示绝对行数
set number
set undofile
set undodir=~/.config/nvim/.undodir

"　正则
"nnoremap / /\v
"vnoremap / /\v
" 大小写
set ignorecase 
set smartcase

" 在substitute命令的时候，默认执行整行内的匹配项而不是一个
set gdefault

" 在执行搜索/命令的时候，及时显示到那里
set incsearch
"　括号匹配
" set showmatch

" 高亮显示搜索
set hlsearch
"nnoremap <leader>noh :noh<cr>

" 在Normal模式下用Tab实现%的匹配作用，但是想不起来用，所以注释
" nnoremap <tab> %
" vnoremap <tab> %

" 类似其他编辑器的自动换行功能
set wrap
set textwidth=80
" set formatoptions=qrn1
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


" nnoremap ; :
" au FocusLost * :wa
" jj 替代　ＥＳＣ
inoremap jj <ESC>

" 快捷键分屏
nnoremap <leader>w <C-w>v<C-w>l

"　更简单的分屏宽口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" tab　switch
" map <leader>th :tabfirst<cr>
" map <leader>tl :tablast<cr>

" 新建tab  Ctrl+t
nnoremap <C-t>     :tabnew<CR>
inoremap <C-t>     <Esc>:tabnew<CR>

" set autowrite
set shortmess+=c

" neovim feature，让substitute命令即使显示
if has('nvim')
  set inccommand=nosplit
endif

" build command
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)

autocmd FileType rust nmap <leader>r  :RustRun<CR>

autocmd FileType cpp nmap <leader>b :AsyncRun ninja -C ./build<CR>
autocmd FileType cpp nmap <leader>r :AsyncRun ./build/demo<CR>

" automatically open quickfix window when AsyncRun command is executed
" set the quickfix window 6 lines height.
let g:asyncrun_open = 6

" ring the bell to notify you job finished
let g:asyncrun_bell = 1

" F10 to toggle quickfix window
nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>


" NERDTree setting

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

nnoremap <C-n> :NERDTreeToggle<CR>


" parentheses color
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" List of colors that you do not want. ANSI code or #RRGGBB
let g:rainbow#blacklist = [233, 234]

" noremap <F3> :Autoformat<CR>


" fzf shortcut
"nnoremap <Leader>a :Ag<Space><Enter>
"nnoremap <Leader>l :BLines<Space><Enter>
"nnoremap <Leader>g :GFiles<Space><Enter>
""nnoremap <Leader>f :Files<Space><Enter>
"nnoremap <Leader>t :BTags<Space><Enter>
"nnoremap <Leader>b :Buffers<Space><Enter>
"nnoremap <C-p> :GFiles<Space><Enter>
nnoremap <C-p> :LeaderfFunction<Enter>
nnoremap <a-m> :LeaderfMru<Enter>
nnoremap <a-b> :LeaderfBuffer<CR>
nnoremap <Leader>l :LeaderfLineCword<Enter>
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" asterisk setting
let g:asterisk#keeppos = 1
nnoremap s <Plug>(easymotion-s2)
nnoremap t <Plug>(easymotion-t2)
"map *   <Plug>(asterisk-*)
map #   <Plug>(asterisk-z#)
map g*  <Plug>(asterisk-g*)
map g#  <Plug>(asterisk-g#)
map *  <Plug>(asterisk-z*)
map gz* <Plug>(asterisk-gz*)
map z#  <Plug>(asterisk-z#)
map gz# <Plug>(asterisk-gz#)


" LanguageServer Plugin
"let g:LanguageClient_autoStart = 1

"\ 'python': ['pyls'],
"let g:LanguageClient_serverCommands = {
    "\ 'cpp': ['~/.local/stow/cquery/bin/cquery', '--language-server'],
    "\ }


"let g:LanguageClient_loadSettings = 1
"let g:LanguageClient_settingsPath = '/home/jing/.config/nvim/settings.json'

"nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
"nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
"nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>

"let g:cm_sources_override = {
"    \ 'cm-jedi': {'enable':1}
"    \ }

" ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

"
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>


" Doxygen
"let g:DoxygenToolkit_authorName="Jing" 
"let g:DoxygenToolkit_licenseTag="Copyright@Java306"
"nnoremap <leader>d :Dox<cr>


" Session Plugin Config
:let g:session_autosave = 'no'
"nnoremap <leader>wso :OpenSession 
"nnoremap <leader>wss :SaveSession 
"nnoremap <leader>wsd :DeleteSession<CR>
"nnoremap <leader>wsc :CloseSession<CR>


" ale
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_warning = '⚠'
let g:ycm_warning_symbol = '⚠'
let g:ale_sign_error = '✖'
let g:ycm_error_symbol = '✖'
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'




let g:ale_linters = {'python': ['pylint'], 'cpp':['clang', 'gcc']} 
nmap <silent> <a-k> <Plug>(ale_previous_wrap)
nmap <silent> <a-j> <Plug>(ale_next_wrap)

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint = 1


" ycm settting
let g:ycm_key_invoke_completion = '<C-e>'
"let g:ycm_autoclose_preview_window_after_insertion = 1
" 在错误行高亮显示
highlight YcmErrorLine guibg=#3f0000

" 不使用preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
set completeopt=menu,menuone

let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1

let g:ycm_python_binary_path = 'python'

nnoremap <leader>jd :YcmCompleter GoTo<CR> 
"nnoremap <leader>dg :YcmDiags<CR> 


"fcitx

" tags setting
"

"tag文件设置为.tag, 不会污染
set tags=./.tags;,.tags


" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

set guioptions=0


" echodoc setting
set noshowmode
"set cmdheight=1
" 自动启动echodoc
let g:echodoc#enable_at_startup=1

