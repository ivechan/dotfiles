call plug#begin('~/vim/plugged')

"nerdplugin
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeToggle' }
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
Plug 'tpope/vim-repeat', 
" enhanced motion
Plug 'tpope/vim-unimpaired'
Plug 'godlygeek/tabular'
" Completion
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'valloric/youcompleteme'
Plug 'Shougo/echodoc.vim'
" commentary
Plug 'tpope/vim-commentary'
" synatic check engine
Plug 'w0rp/ale'
Plug 'maximbaz/lightline-ale'
" Session Manager
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
" colorscheme and airline

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

" Plug 'dikiaap/minimalist'
Plug 'jpalardy/vim-slime'

" fzf and ack, fuzzy finder
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'Yggdroot/LeaderF'
" git plugin
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
" about Tags
"Plug 'majutsushi/tagbar'
"Plug 'vim-scripts/gtags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'skywind3000/vim-preview'

" indent and format, auto pairs
Plug 'jiangmiao/auto-pairs'
"Plug 'Chiel92/vim-autoformat'
" indent visualization
"Plug 'nathanaelkane/vim-indent-guides'

" Python
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}
Plug 'hdima/python-syntax', {'for': 'python'}

" Cpp
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}
call plug#end()

syntax enable
filetype plugin indent on          
runtime macros/matchit.vim "enhanced matching

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " true color and colorscheme UI and font
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let mapleader = ' '          " change leader key to <space>
let g:mapleader = ' '        " change leader key to <space>

set nocompatible
set termguicolors
set background=dark
set guioptions=0
"https://github.com/ryanoasis/nerd-fonts
set guifont=FuraMono\ NF:h10

"colorscheme monokai
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

"let g:gruvbox_improved_strings=1
let g:gruvbox_improved_warnings=1

"colorscheme cobalt3
set history=2000
set autoread                 " 　文件修改后自动载入
"set autochdir
set laststatus=2             " Always display the statusline in all windows
set showtabline=2            " Always display the tabline, even if there is only one tab
set noshowmode               " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"set noshowmode               " echodoc setting
set tabstop=4                " show existing tab with 4 space width
set shiftwidth=4             " when indenting with '>' , using 4 space width
set expandtab                " on pressing tab, insert 4 spaces
set hidden
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'
set cursorline               " 突出显示
set nobackup                 " no backup
set noswapfile               " now swapfile
"set dir=~/.cache/swapfiles   " change swapfile dir for not polluteing current dir.
set undofile
set undodir=~/.cache/undodir
set encoding=utf-8           " set default encoding
"set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
if has("win32")
    set fileencoding=chinese
endif
source $VIMRUNTIME/delmenu.vim  
  
source $VIMRUNTIME/menu.vim  
set autoindent               " 自动缩进
set ruler                    " 在右下角显示当前光标所在位置（行列）
set scrolloff=3              " 至少保留在屏幕的行数
set number                   " print the line number in front of each line
set wildmenu                 " 在命令行上面显示候选项
set wildmode=full
set visualbell
set laststatus=2
set ignorecase
set smartcase
set gdefault                 " 在substitute命令的时候，默认执行整行内的匹配项而不是一个
set incsearch                " 在执行搜索/命令的时候，及时显示到那里
set hlsearch                 " highlight search result
set textwidth=80
set colorcolumn=80
set backspace=indent,eol,start

set wildignore+=.o,*.bak,*.byte,*.native,*~,*.sw?,*.aux,*.toc,*.hg,*.git,*.svn,*.hi,*.so,*.a,*.pyc,*.aux,*.toc,*.exe " 隐藏一些自动生成的文件
" 在Normal模式下用Tab实现%的匹配作用，但是想不起来用，所以注释
" nnoremap <tab> %
" vnoremap <tab> %

nnoremap j gj
nnoremap k gk
" F1　误触
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" nnoremap ; :
inoremap jj <ESC>
" 快捷键分屏
nnoremap <leader>w <C-w>v<C-w>l

" 更简单的分屏宽口移动
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" dot't give ins-completion-menu message
set shortmess+=c


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
nnoremap <a-q> :call asyncrun#quickfix_toggle(6)<cr>


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


nnoremap <c-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>


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
nnoremap <Leader>t :LeaderfTag<CR>
nnoremap <Leader>l :LeaderfLine<CR>
"inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


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


" ag
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
"
cnoreabbrev Ack Ack
nnoremap <Leader>a :Ack<Space>

" Session Plugin Config
:let g:session_autosave = 'no'
" ale
let g:airline#extensions#ale#enabled = 0
"let g:ale_sign_warning = '⚠'
"let g:ycm_warning_symbol = '⚠'
let g:ale_sign_error = '✖'
"let g:ycm_error_symbol = '✖'
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'

let g:ale_linters = {'python': ['pylint'], 'cpp':['clang', 'gcc', 'cppcheck', 'flawfinder']} 
nmap <silent> <a-k> <Plug>(ale_previous_wrap)
nmap <silent> <a-j> <Plug>(ale_next_wrap)

let g:ale_lint_on_text_changed = 'never'
let g:ale_lint = 1
" ycm settting
let g:ycm_key_invoke_completion = '<C-x><C-o>'
"let g:ycm_autoclose_preview_window_after_insertion = 1
" 在错误行高亮显示
"highlight YcmErrorLine guibg=#3f0000

" 不使用preview
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
set completeopt=menu,menuone
let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_semantic_triggers =  {
"             \ 'c,cpp,python,go,rust': ['re!\w{2}'],
"             \ 'cs': ['re!\w{2}'],
"             \ }

let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_python_binary_path = 'python'
let g:ycm_auto_trigger=1

nnoremap <leader>jd :YcmCompleter GoTo<CR> 
"nnoremap <leader>dg :YcmDiags<CR> 


" tags setting
"tag文件设置为.tag, 不会污染
"set tags=./.tags;,.tags


" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = expand('~/.cache/tags')

" 禁止插件自动加载gtags数据库，用plus插件来控制
let g:gutentags_auto_add_gtags_cscope = 0

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" gtags 配置
" https://www.gnu.org/software/global/
let $GTAGSLABEL = 'native-pygments'
" sharem目录下

if has('win32')
    let $GTAGSCONF = 'C:\\Users\\jing\\gtags.conf' "必须重新配置
else
    let $GTAGSCONF = '/home/jing/gtags.conf'
endif
let gutentags_define_advanced_commands = 1
" 配置 ctags 的参数
" https://github.com/universal-ctags/ctags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

" 交换tjump和tselect快捷键位置
"nnoremap g] :tjump <C-R><C-W><cr>
"nnoremap g<C-]> :tselect<C-R><C-W><cr>

" 自动启动echodoc
let g:echodoc#enable_at_startup=1
let python_highlight_all = 1

if executable('ag')
    let g:ackprg = 'ag --vimgrep'
endif

"let g:UltiSnipsExpandTrigger="<c-h>"
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-j>"
"let g:UltiSnipsListSnippets="<c-h>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" enable directwrite renderoption in windows
if has('win32') 
    if !has('nvim')
        set renderoptions=type:directx,renmode:5,taamode:1
    endif
endif

" neovim feature，让substitute命令即时显示
if has('nvim')
  set inccommand=nosplit
endif

"lightline configuration
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }

let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           ['gitbranch', 'readonly', 'filename', 'modified' ] ],
    \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings'],
    \            [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ,
    \          ]
    \ }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"
let g:slime_target = "vimterminal"

nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
nnoremap <silent> <F9> :AsyncRun g++ -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
