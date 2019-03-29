call plug#begin('~/nvimplug/plugged')
"Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }     " 文件浏览器
"Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeToggle' } " just one nerdtree
"Plug 'ryanoasis/vim-devicons'                              " 使用 NERD 字体让 vim 能显示图标
"Plug 'justinmk/vim-dirvish'
"Plug 'roxma/vim-hug-neovim-rpc'
"Plug 'roxma/nvim-yarp'
Plug 'Shougo/defx.nvim'
Plug 'tpope/vim-surround'                                  " 更方便地使用括号，引号等成对出现的符号
Plug 'easymotion/vim-easymotion'                           " easymotion
Plug 'gaving/vim-textobj-argument'                         " argument text-object support
Plug 'wellle/targets.vim'                                  " provides additional text objects
Plug 'junegunn/rainbow_parentheses.vim'                    " rainbow parentheses
Plug 'haya14busa/vim-asterisk'                             " enhanced asterisk *
Plug 'tpope/vim-repeat'                                    " repeat for vim-surround
Plug 'tpope/vim-unimpaired'                                " Pairs of handy bracket mappings
Plug 'godlygeek/tabular'                                   " 更简单地对齐
Plug 'SirVer/ultisnips'                                    " snippets框架
Plug 'ivechan/vim-snippets'                                " 具体某个语言的snippets, 自定义
Plug 'ivechan/echodoc.vim'                                  " 补全的时候，在 statusline 显示函数原型
Plug 'tpope/vim-commentary'                                " 使用 gc 来注释
"Plug 'w0rp/ale'                                            " 异步代码检查 (Linting) 框架
Plug 'maximbaz/lightline-ale'                              " 在右下角显示 linting 状态
Plug 'xolox/vim-misc'                                      " 一些补充函数
Plug 'xolox/vim-session'                                   " Session Manager
Plug 'ivechan/molokai'                                      " monokai 配色
"Plug 'dyng/ctrlsf.vim'
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'rstacruz/vim-closer'

                                                           " Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'                               " statusline 插件
" Plug 'skywind3000/asyncrun.vim'                            " 异步运行插件
"Plug 'skywind3000/vimmake'
Plug 'mileszs/ack.vim'                                     " ack - search it.
" Plug 'mhinz/vim-grepper'
Plug 'Yggdroot/LeaderF'                                    " fuzzy jumping plugin
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-fugitive'                                  " git plugin
"Plug 'mhinz/vim-signify'                                   " 在 git 仓库下文件里，在更改行左边显示标志
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim'
                                                           " Plug 'vim-scripts/gtags.vim'              " 这个太老了，自行去 GNU Global下载
"Plug 'ivechan/gtags.vim'                                   " gtags 插件
Plug 'ludovicchabant/vim-gutentags'                        " 自动管理 gtags/ctags 的插件
Plug 'skywind3000/gutentags_plus'                          " 在多项目里管理 tags 生成，不过 bug 多
Plug 'skywind3000/vim-preview'                             " 同上
"Plug 'jiangmiao/auto-pairs'
                                                           " Plug 'nathanaelkane/vim-indent-guides'    " 显示 indent，不过一般不用
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}     " 自动 pep8 indent
Plug 'hdima/python-syntax'                                 " 增强对 Python 语法支持
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}    " 增强对 C++ 支持
Plug 'lervag/vimtex'
Plug 'NLKNguyen/papercolor-theme'
Plug 'cocopon/iceberg.vim'
"Plug 'ivechan/taggy'
call plug#end()

let mapleader = ' '          " change leader key to <space>
let g:mapleader = ' '        " change leader key to <space>

syntax enable
filetype plugin indent on          
"packadd! matchit
"packadd! taggy
set nocompatible


set langmenu=en_US  " 将 vim 语言设置为 en,主要应对中文环境下乱码问题
let $LANG='en'
"source $VIMRUNTIME/delmenu.vim 
"source $VIMRUNTIME/menu.vim


let python_highlight_all = 1

set termguicolors              " true color and colorscheme UI and font
set background=dark
set guioptions=0               " 不需要一些 gui，影响可视区域
set guifont=Fira\ Mono:h10   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
"set guifont=FuraMono\ NF:h10   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
"colorscheme PaperColor            " 最好的颜色方案
let g:molokai_original = 1
colorscheme molokai

"set iskeyword-=_               " 让vim把vim当成分隔符
set fileformat=unix
set ff=unix
set history=200               " 最大2000条历史，够用了吧？
set autoread<                " 　文件修改后自动载入
set laststatus=2               " Always display the statusline in all windows
set showtabline=2              " Always display the tabline, even if there is only one tab
set noshowmode                 " Hide the default mode text (e.g. -- INSERT -- below the statusline), also for echodoc setting
set tabstop=4                  " show existing tab with 4 space width
set shiftwidth=4               " when indenting with '>' , using 4 space width
set expandtab                  " on pressing tab, insert 4 spaces
set hidden
set shiftwidth =4              " >> indents by 4 spaces.
set shiftround                 " >> indents to next multiple of 'shiftwidth'
set cursorline                 " 突出显示
set nobackup                   " no backup
set noswapfile                 " now swapfile
set directory=~/.cache/swapfiles//
set undofile
set undodir=~/.cache/undodir
set encoding=utf-8             " set default encoding
set autoindent                 " 自动缩进
set ruler                      " 在右下角显示当前光标所在位置（行列）
set showcmd		" display incomplete commands
set scrolloff=3                " 至少保留在屏幕的行数
set number                     " print the line number in front of each line
set wildmenu                   " 在命令行上面显示候选项
set spell
set updatetime=300
setlocal spell spelllang=en_us

"set wildmode=list:longest,full
" Show @@@ in the last line if it is truncated.
set display=truncate
set visualbell
set ignorecase
set smartcase
set gdefault                   " 在substitute命令的时候，默认执行整行内的匹配项而不是一个
set incsearch                  " 在执行搜索/命令的时候，及时显示到那里
set hlsearch                   " highlight search result
set textwidth=80
set colorcolumn=80
set backspace=indent,eol,start
set dictionary+=~/vimfiles/scowl/wordlist

set wildignore+=.o,*.bak,*~,*.sw?,*.aux,*.toc,*.git,*.svn,*.so,*.a,*.pyc,*.aux,*.toc,*.exe,*.pb " 隐藏一些自动生成的文件

if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
" Revert with ":iunmap <C-U>".
"inoremap <C-U> <C-G>u<C-U>
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC> " 防止F1误触
nnoremap <F1> <ESC> " F1误触
vnoremap <F1> <ESC> " F1误触
inoremap jj <ESC>
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>c :CD<CR>
nnoremap <leader>t :tabnew<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
cnoremap <C-w> <S-Right>
cnoremap <C-b> <S-Left>
cnoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <End>
cnoremap <C-k> <Home>

nnoremap <M-t> :tabe<CR>
set shortmess+=c " dot't give ins-completion-menu message

" AsyncRun
"let g:asyncrun_open = 6 " set the quickfix window 6 lines height.
"let g:asyncrun_bell = 1 " ring the bell to notify you job finished
" F10 or m-q to toggle quickfix window
"nnoremap <F10> :call asyncrun#quickfix_toggle(6)<cr>
"nnoremap <M-q> :call asyncrun#quickfix_toggle(6)<cr>
" toggles the quickfix window.
let g:Quickfix_Win_Height=10
command! -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
  if exists("g:qfix_win") && a:forced == 0
    cclose
  else
    execute "copen " . g:Quickfix_Win_Height
  endif
endfunction

let g:LocList_Win_Height=10
command! -bang -nargs=? LFix call LFixToggle(<bang>0)
function! LFixToggle(forced)
  if exists("g:lfix_win") && a:forced == 0
    lclose
  else
    execute "lopen " . g:LocList_Win_Height
  endif
endfunction

" used to track the quickfix window
augroup QFixToggle
 autocmd!
 au! BufWinEnter quickfix let g:qfix_win = bufnr("$")
 au! BufWinLeave * if exists("g:qfix_win") && expand("<abuf>") == g:qfix_win | unlet! g:qfix_win | endif
augroup END

function! QFWindowToggle()
    let s:qfid = get(getqflist({'winid' : 0}), 'winid', 0)
    if s:qfid == 0
        execute "copen " . g:Quickfix_Win_Height
    else
        cclose
    endif
endfunction
nnoremap <M-q> :call QFWindowToggle()<CR> 

function! LocWindowToggle()
    let s:locid = get(getloclist(0, {'winid' : 0}), 'winid', 0)
    if s:locid == 0
        execute "lopen " . g:LocList_Win_Height
    else
        lclose
    endif
endfunction
nnoremap <M-l> :call LocWindowToggle()<cr>

" parentheses color
au VimEnter * RainbowParentheses
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{}', '}']]
let g:rainbow#blacklist = [233, 234]

" Leaderf
nnoremap <M-p> :Leaderf! --fullScreen function<CR>
nnoremap <Leader>p :Leaderf! --fullScreen bufTag<CR>
nnoremap <M-m> :LeaderfMru<Enter>
" nnoremap <Leader>t :LeaderfTag<CR>
nnoremap <Leader>l :LeaderfLine<CR>

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
if executable('rg')
  let g:ackprg = 'rg -H --no-heading --vimgrep --smart-case'
endif
"cnoreabbrev Ack Ack!
"nnoremap <Leader>a :Ack!<Space>
nnoremap <Leader>a :Leaderf rg -S -e<Space>

" Session Plugin Config
:let g:session_autosave = 'no' " 不自动保存session

" ale
let g:airline#extensions#ale#enabled = 0 " 使用lightline，所以关闭airline支持
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 0
let g:ale_set_signs = 0

"\ 'cpp':['clang', 'gcc', 'cppcheck', 'flawfinder'],
let g:ale_linters = {'python': ['pylint'], 
            \ 'tex':['chktex', 'lacheck'] }
let g:ale_lint_on_text_changed = 'never' " 仅在打开文件和保存的时候 Lint 
let g:ale_lint = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
" ALE 快捷键快速跳转
"nmap <silent> <M-k> <Plug>(ale_previous_wrap) 
"nmap <silent> <M-j> <Plug>(ale_next_wrap)

" tags setting

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_modules = ['ctags', 'gtags_cscope']
let g:gutentags_project_root = ['.root', '.svn', '.git', '.project']
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 禁止插件自动加载gtags数据库，用plus插件来控制
let g:gutentags_auto_add_gtags_cscope = 0
noremap <silent> <leader>cs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>cg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>cc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>ct :GscopeFind t <C-R><C-W><cr
noremap <silent> <leader>ca :GscopeFind a <C-R><C-W><cr>
noremap <silent> <leader>cd :GscopeFind d <C-R><C-W><cr>

let g:gutentags_plus_nomap = 1

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" gtags 配置
" https://www.gnu.org/software/global/
let $GTAGSLABEL = 'native-pygments'
"let $GTAGSLABEL = 'new-ctags'

if has('win32')
    let $GTAGSCONF = 'C:\Users\lhche\gtags.conf' "必须重新配置
else
    let $GTAGSCONF = '/home/jing/gtags.conf'
endif
let gutentags_define_advanced_commands = 1
" 配置 ctags 的参数 https://github.com/universal-ctags/ctags
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px-d']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px-d']
"let g:gutentags_ctags_extra_args += ['--output-format=etags']
"let g:gutentags_ctags_extra_args += ['--exclude=@.gitignore']
"let g:gutentags_ctags_extra_args += ['--exclude=@.ignore']
"let Gtags_No_Auto_Jump=1
"let g:Gtags_Close_When_Single=1 " when single and jump


" 自动启动echodoc
let g:echodoc#enable_at_startup=1
" 启用 python 高亮
"let python_highlight_all = 1

" UltiSnip插件
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsEditSplit="vertical"

" enable directwrite renderoption in windows
if has('win32') 
    if !has('nvim')
        set renderoptions=type:directx,renmode:0,taamode:1
    endif
endif

if has('nvim')
    set inccommand=nosplit
endif

"lightline configuration
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \   'cocstatus': 'coc#status'
      \ },
      \ 'component': {
      \  'tagbar': '%{tagbar#currenttag("%s", "", "f")}',
      \  'taggy': '%{Taggy_Get_Current_Tag()}',
      \  },
      \ }
      "\  'taggy': '%{Taggy_Get_Current_Tag()}',
" 在右下角显示 Linting状态
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
    \           ['readonly', 'relativepath', 'modified' ]
    \         ],
    \ 'right': [ [ 'cocstatus', 'linter_checking', 'linter_errors', 'linter_warnings'],
    \            [ 'lineinfo' ],
    \            [ 'percent' ],
    \            [ 'fileformat', 'fileencoding', 'filetype' ] ,
    \          ]
    \ }
function! Lightline_Tab_Absolutepath(n) abort
  let buflist = tabpagebuflist(a:n)
  let winnr = tabpagewinnr(a:n)
  let _ = expand('#'.buflist[winnr - 1])
  return _ !=# '' ? _ : '[No Name]'
endfunction
let g:lightline.tab_component_function = {
        \ 'filename': 'lightline#tab#filename',
        \ 'absolutepath': 'Lightline_Tab_Absolutepath',
        \ 'modified': 'lightline#tab#modified',
        \ 'readonly': 'lightline#tab#readonly',
        \ 'tabnum': 'lightline#tab#tabnum' }
let g:lightline.tab = {
    \ 'active': [ 'tabnum', 'filename', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }

" 使用NERD 字体下的图标显示
if has('gui_running')
    let g:lightline#ale#indicator_checking = "\uf110"
    let g:lightline#ale#indicator_warnings = "\uf071"
    let g:lightline#ale#indicator_errors = "\uf05e"
    let g:lightline#ale#indicator_ok = "\uf00c"
end

" autopairs快捷键会冲突，禁用掉
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump=''
let g:AutoPairs={'(':')', '[':']', '{':'}',"'":"'", '`':'`'}

" Gtags 快捷键
"nnoremap <leader>g :Gtags<SPACE>
"nnoremap <leader>c :GtagsCursor<CR>
"nnoremap <leader>p :Gtags -f %<CR>
"nnoremap <M-p> :Gtags -f %<CR>

nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>
"nnoremap <C-\><C-]> :GtagsCursorAndJump<CR>

nnoremap <F10> :Defx<CR>
nnoremap <M-n> :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>
nnoremap - :Defx `expand('%:p:h')` -search=`expand('%:p')`<CR>

" set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  lcd %:p:h
  let git_dir = system("git rev-parse --show-toplevel")
  " See if the command output starts with 'fatal' (if it does, not in a git repo)
  let is_not_git_dir = matchstr(git_dir, '^fatal:.*')
  " if git project, change local directory to git project root
  if empty(is_not_git_dir)
    lcd `=git_dir`
  endif
endfunction

command! CD silent! call SetProjectRoot()
inoremap lkj <ESC>:w<CR>
nnoremap <Leader>w :w<CR>
nnoremap <M-f> :CD<CR>

" vimmake setting
let g:vimmake_mode = {}
let g:vimmake_mode['py'] = 'normal'
noremap <F5> :VimTool run<cr>
inoremap <F5> <ESC>:VimTool run<cr>
let g:PaperColor_Theme_Options = {
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }

let g:tagbar_width = 35
let g:tagbar_left = 1
nnoremap <silent> <F12> :TagbarToggle<CR>


function! DeleteHiddenBuffers()
    let tpbl=[]
    call map(range(1, tabpagenr('$')), 'extend(tpbl, tabpagebuflist(v:val))')
    for buf in filter(range(1, bufnr('$')), 'bufexists(v:val) && index(tpbl, v:val)==-1')
        silent execute 'bwipeout' buf
    endfor
endfunction
command! -nargs=0 DeleteHiddenBuffers call DeleteHiddenBuffers()
let g:tagbar_type_python = {
    \ 'ctagsargs' : '-f - --format=2 --excmd=pattern --extra --fields=nksmt'
\ }

function! Switch_header_source(header)
    if a:header == 1
        let s:ext = '.h'
    else
        let s:ext = '.cpp'
    endif
    let s:cfile = expand('%:r')
    if filereadable(s:cfile . s:ext)
        execute ":e " . s:cfile . s:ext
    else
        echo s:cfile . s:ext . ' does not exist'
    endif
endfunction

nnoremap [h :call Switch_header_source(1)<CR>
nnoremap ]h :call Switch_header_source(0)<CR>
"let g:python3_host_prog="C:\\Users\\lhche\\AppData\\Local\\Programs\\Python\\Python36-32\\python.exe"
autocmd FileType defx call s:defx_my_settings()
function! s:defx_my_settings() abort
    " Define mappings
    nnoremap <silent><buffer><expr> <CR>
    \ defx#do_action('open')
    nnoremap <silent><buffer><expr> c
    \ defx#do_action('copy')
    nnoremap <silent><buffer><expr> m
    \ defx#do_action('move')
    nnoremap <silent><buffer><expr> p
    \ defx#do_action('paste')
    nnoremap <silent><buffer><expr> l
    \ defx#do_action('open')
    nnoremap <silent><buffer><expr> E
    \ defx#do_action('open', 'vsplit')
    nnoremap <silent><buffer><expr> P
    \ defx#do_action('open', 'pedit')
    nnoremap <silent><buffer><expr> o
    \ defx#do_action('open_or_close_tree')
    nnoremap <silent><buffer><expr> K
    \ defx#do_action('new_directory')
    nnoremap <silent><buffer><expr> N
    \ defx#do_action('new_file')
    nnoremap <silent><buffer><expr> M
    \ defx#do_action('new_multiple_files')
    nnoremap <silent><buffer><expr> C
    \ defx#do_action('toggle_columns',
    \                'mark:filename:type:size:time')
    nnoremap <silent><buffer><expr> S
    \ defx#do_action('toggle_sort', 'time')
    nnoremap <silent><buffer><expr> d
    \ defx#do_action('remove')
    nnoremap <silent><buffer><expr> r
    \ defx#do_action('rename')
    nnoremap <silent><buffer><expr> !
    \ defx#do_action('execute_command')
    nnoremap <silent><buffer><expr> x
    \ defx#do_action('execute_system')
    nnoremap <silent><buffer><expr> yy
    \ defx#do_action('yank_path')
    nnoremap <silent><buffer><expr> .
    \ defx#do_action('toggle_ignored_files')
    nnoremap <silent><buffer><expr> ;
    \ defx#do_action('repeat')
    nnoremap <silent><buffer><expr> h
    \ defx#do_action('cd', ['..'])
    nnoremap <silent><buffer><expr> ~
    \ defx#do_action('cd')
    nnoremap <silent><buffer><expr> q
    \ defx#do_action('quit')
    nnoremap <silent><buffer><expr> <Space>
    \ defx#do_action('toggle_select') . 'j'
    nnoremap <silent><buffer><expr> *
    \ defx#do_action('toggle_select_all')
    nnoremap <silent><buffer><expr> j
    \ line('.') == line('$') ? 'gg' : 'j'
    nnoremap <silent><buffer><expr> k
    \ line('.') == 1 ? 'G' : 'k'
    nnoremap <silent><buffer><expr> <C-l>
    \ defx#do_action('redraw')
    nnoremap <silent><buffer><expr> <C-g>
    \ defx#do_action('print')
    nnoremap <silent><buffer><expr> cd
    \ defx#do_action('change_vim_cwd')
endfunction



" if hidden is not set, TextEdit might fail.
set hidden

" Better display for messages
set cmdheight=2

" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> for confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
"inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
nmap <silent> <M-k> <Plug>(coc-diagnostic-next) 
nmap <silent> <M-j> <Plug>(coc-diagnostic-next)

nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)
" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if &filetype == 'vim'
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction
autocmd CursorHold * silent call CocActionAsync('highlight')
nnoremap <silent> <leader>d :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>o :<C-u>CocList outline<cr>

