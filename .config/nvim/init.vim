" {{{ Plug
call plug#begin('~/vimplug/plugged')
Plug 'puremourning/vimspector'
Plug 'AndrewRadev/quickpeek.vim'
Plug 'justinmk/vim-dirvish'
Plug 'kristijanhusak/vim-dirvish-git'
" Plug 'scrooloose/nerdtree',  { 'on': ['NERDTreeToggle', 'NERDTreeFind' ]}
"Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'jistr/vim-nerdtree-tabs'
" Plug 'ryanoasis/vim-devicons'                              " 使用 NERD 字体让 vim 能显示图标
Plug 'tpope/vim-surround'                                  " 更方便地使用括号，引号等成对出现的符号
Plug 'easymotion/vim-easymotion'                           " easymotion
Plug 'tpope/vim-fugitive'
Plug 'kana/vim-textobj-user'
Plug 'editorconfig/editorconfig-vim'
Plug 'gaving/vim-textobj-argument'                         " argument text-object support
Plug 'kana/vim-textobj-function'
Plug 'bps/vim-textobj-python'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-indent'
" Plug 'Yggdroot/indentLine'
Plug 'Yggdroot/LeaderF'
Plug 'tamago324/LeaderF-filer'
Plug 'jiangmiao/auto-pairs'
Plug 'adriaanzon/vim-textobj-matchit'
Plug 'rakr/vim-one'
" Plug 'tpope/vim-sleuth'
Plug 'liuchengxu/vista.vim'
Plug 'chriskempson/base16-vim'

Plug 'lucapette/vim-textobj-underscore'
" Plug 'vimtaku/vim-textobj-keyvalue'
Plug 'wellle/targets.vim'                                  " provides additional text objects
Plug 'junegunn/rainbow_parentheses.vim'                    " rainbow parentheses
Plug 'tpope/vim-repeat'                                    " repeat for vim-surround
Plug 'tpope/vim-unimpaired'                                " Pairs of handy bracket mappings
Plug 'godlygeek/tabular'                                   " 更简单地对齐
Plug 'SirVer/ultisnips'                                    " snippets框架
Plug 'ivechan/vim-snippets'                                " 具体某个语言的snippets, 自定义
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'valloric/youcompleteme'                              " 补全框架
Plug 'ivechan/echodoc.vim'                                  " 补全的时候，在 statusline 显示函数原型
Plug 'tpope/vim-commentary'                                " 使用 gc 来注释
" Plug 'w0rp/ale'                                            " 异步代码检查 (Linting) 框架
Plug 'maximbaz/lightline-ale'                              " 在右下角显示 linting 状态
Plug 'xolox/vim-misc'                                      " 一些补充函数
Plug 'xolox/vim-session', {'on': ['OpenSession', 'SaveSession']}                                   " Session Manager
"Plug 'dyng/ctrlsf.vim'
"Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
" Plug 'rstacruz/vim-closer'
" Plug 'airblade/vim-rooter'
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" Plug 'jesseleite/vim-agriculture'

" Plug 'google/vim-maktaba'
"
" Plug 'google/vim-codefmt'
" Plug 'google/vim-glaive'
Plug 'rust-lang/rust.vim', {'for': 'rust'}
Plug 'skywind3000/asyncrun.vim'
Plug 'skywind3000/asynctasks.vim'
Plug 'neomake/neomake', {'on': 'Neomake'}
                                                           " Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'                               " statusline 插件
                                                           " Plug 'vim-scripts/gtags.vim'              " 这个太老了，自行去 GNU Global下载
                                                           " Plug 'nathanaelkane/vim-indent-guides'    " 显示 indent，不过一般不用
" Plug 'jsfaint/gen_tags.vim'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'hynek/vim-python-pep8-indent', {'for': 'python'}     " 自动 pep8 indent
Plug 'hdima/python-syntax', {'for': 'python'}                                 " 增强对 Python 语法支持
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'}    " 增强对 C++ 支持
Plug 'lervag/vimtex', {'for': ['tex', 'latex']}
Plug 'NLKNguyen/papercolor-theme'
" Plug 'pechorin/any-jump.vim'
"
Plug 'ivechan/taggy'
Plug 'ivechan/gtags.vim'
Plug 'jackguo380/vim-lsp-cxx-highlight'
call plug#end()
"}}}
let mapleader = ' '          " change leader key to <space>
let g:mapleader = ' '        " change leader key to <space>

syntax enable
filetype plugin indent on          
packadd! matchit
packadd! termdebug

set nocompatible
set foldmethod=marker
set includeexpr=printf('include/%s',v:fname)
" {{{ 外观
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" " true color and colorscheme UI and font
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum" " true color and colorscheme UI and font
set termguicolors              " true color and colorscheme UI and font
set vb t_vb= "  no bell
set background=dark
" set t_Co=256
set winaltkeys=no
" set guifont=Fira\ Mono:h10   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
" set guifont=JetBrains\ Mono:h11   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
set guifont=JetBrainsMono\ NF:h11   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
" set guifont=JetBrainsMono\ Nerd:h11   " NERD 字体，可以显示图标, https://github.com/ryanoasis/nerd-fonts
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
" colorscheme nord            " 最好的颜色方案
" let base16colorspace=256
" colorscheme base16-helios
" colorscheme PaperColor
colorscheme PaperColor
"}}}

" {{{  Minimal Setting
set fileformat=unix
set fileencoding=utf-8
set enc=utf-8
source $VIMRUNTIME/delmenu.vim 
source $VIMRUNTIME/menu.vim
set history=200               " 最大2000条历史，够用了吧？
set autoread<                " 　文件修改后自动载入
set laststatus=2               " Always display the statusline in all windows
set showtabline=2              " Always display the tabline, even if there is only one tab
set noshowmode                 " Hide the default mode text (e.g. -- INSERT -- below the statusline), also for echodoc setting
set tabstop=4                  " show existing tab with 4 space width
set expandtab                  " on pressing tab, insert 4 spaces
set hidden
set shiftwidth=4              " >> indents by 4 spaces.
set shiftround                 " >> indents to next multiple of 'shiftwidth'
set cursorline                 " 突出显示
set nobackup                   " no backup
set noswapfile                 " now swapfile
set directory=~/.cache/swapfiles//
set undofile
set undodir=~/.cache/undodir
set viewdir=~/.cache/viewdir
set encoding=utf-8             " set default encoding
set autoindent                 " 自动缩进
set ruler                      " 在右下角显示当前光标所在位置（行列）
set showcmd		" display incomplete commands
set scrolloff=3                " 至少保留在屏幕的行数
set number                     " print the line number in front of each line
set wildmenu                   " 在命令行上面显示候选项
"set spell
set updatetime=300
set ttyfast
set lazyredraw
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.
set wrapscan               " Searches wrap around end-of-file.
set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
  let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
  let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif
if &shell =~# 'fish$'
  set shell=/bin/bash
endif
set display=lastline
set ignorecase
set smartcase
set tagcase=match              " tagcase 会继承ignorecase，这样tag不能二分查找
set gdefault                   " 在substitute命令的时候，默认执行整行内的匹配项而不是一个
set incsearch                  " 在执行搜索/命令的时候，及时显示到那里
set hlsearch                   " highlight search result
set textwidth=80
set colorcolumn=80
set backspace=indent,eol,start
set dictionary+=~/vimfiles/scowl/wordlist
set wildignore+=.o,*.bak,*~,*.sw?,*.aux,*.toc,*.git,*.svn,*.so,*.a,*.pyc,*.aux,*.toc,*.exe,*.pb " 隐藏一些自动生成的文件
set timeout ttimeout timeoutlen=500 ttimeoutlen=100
set shortmess+=c " dot't give ins-completion-menu message
set shortmess+=T
"}}}
let python_highlight_all = 1

" {{{AsyncRun
let g:asyncrun_encs = 'gbk'
let g:asyncrun_open = 6 " set the quickfix window 6 lines height.
let g:asyncrun_bell = 1 " ring the bell to notify you job finished
let g:asynctasks_term_pos = 'tab'
let g:asynctasks_term_reuse = 1
" toggles the quickfix window.
let g:Quickfix_Win_Height=6
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
    let s:qfid = getqflist({'winid' : 0}).winid
    if s:qfid == 0
        execute "copen " . g:Quickfix_Win_Height
    else
        cclose
    endif
endfunction

function! LocWindowToggle()
    let s:locid = getloclist(0, {'winid' : 0}).winid
    if s:locid == 0
        execute "lopen " . g:LocList_Win_Height
    else
        lclose
    endif
endfunction
"}}}

"{{{ parentheses color
augroup rainbow_lisp
    autocmd!
    autocmd FileType c,cpp,python,rust,go RainbowParentheses
augroup END
let g:rainbow#max_level = 16
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{}', '}']]
let g:rainbow#blacklist = [233, 234]
"}}}

"{{{" ag
if executable('rg')
    let g:ackprg = 'ag --vimgrep'
endif
"}}}

" {{{Leaderf
let g:Lf_ShowDevIcons = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_PreviewResult = {
        \ 'File': 0,
        \ 'Buffer': 0,
        \ 'Mru': 0,
        \ 'Tag': 0,
        \ 'BufTag': 0,
        \ 'Function': 0,
        \ 'Line': 0,
        \ 'Colorscheme': 0
        \}
" let s:nord0 = ["#2E3440", "NONE"]
" let s:nord1 = ["#3B4252", 0]
" let s:nord2 = ["#434C5E", "NONE"]
" let s:nord3 = ["#4C566A", 8]
" let s:nord4 = ["#D8DEE9", "NONE"]
" let s:nord5 = ["#E5E9F0", 7]
" let s:nord6 = ["#ECEFF4", 15]
" let s:nord7 = ["#8FBCBB", 14]
" let s:nord8 = ["#88C0D0", 6]
" let s:nord9 = ["#81A1C1", 4]
" let s:nord10 = ["#5E81AC", 12]
" let s:nord11 = ["#BF616A", 1]
" let s:nord12 = ["#D08770", 11]
" let s:nord13 = ["#EBCB8B", 3]
" let s:nord14 = ["#A3BE8C", 2]
" let s:nord15 = ["#B48EAD", 5]
" let g:Lf_PopupPalette = {
"     \  'light': {
"     \      'Lf_hl_match': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': 'NONE',
"     \                'guibg': '#303136',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': '236'
"     \              },
"     \      'Lf_hl_cursorline': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': 'NONE',
"     \                'guibg': '#303136',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': '236'
"     \              },
"     \      },
"     \  'dark': {
"     \       'Lf_hl_popup_inputMode': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': '#3B4252',
"     \                'guibg': '#88C0D0',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': 'NONE'
"     \        },
"     \       'Lf_hl_popup_normalMode': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': '#3B4252',
"     \                'guibg': '#88C0D0',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': 'NONE'
"     \        },
"     \       'Lf_hl_popup_window': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': '#88C0D0',
"     \                'guibg': '#3B4252',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': 'NONE'
"     \        },
"     \       'Lf_hl_cursorline': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': '#ECEFF4',
"     \                'guibg': 'NONE',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': 'NONE'
"     \        },
"     \       'Lf_hl_popup_inputText': {
"     \                'gui': 'NONE',
"     \                'font': 'NONE',
"     \                'guifg': '#ECEFF4',
"     \                'guibg': '#4C566A',
"     \                'cterm': 'NONE',
"     \                'ctermfg': 'NONE',
"     \                'ctermbg': 'NONE'
"     \        },
"     \      }
"     \  }
nnoremap <leader>fe :Leaderf filer --popup<CR>
nnoremap <leader>ft :Leaderf vimtag<space>
nnoremap <leader>ff :Leaderf file --popup<CR>
nnoremap <leader>f :Leaderf file --popup<CR>
nnoremap <leader>l :Leaderf line --popup<CR>
nnoremap <leader>fl :Leaderf line --popup<CR>
nnoremap <leader>fm :Marks<CR>
nnoremap <leader>fb :Leaderf buffer --popup<CR>
nnoremap <leader>gt :Gtags<SPACE>
nnoremap <leader>gw :<C-U><C-R>=printf("Gtags %s", expand("<cword>"))<CR><CR>
nnoremap <leader>b :Leaderf buffer --popup<CR>
nnoremap <leader>fa :Ag<CR>
nnoremap <leader>gp :Gpush
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<Space>
nnoremap <Leader>a :Leaderf rg<Space>
noremap <leader>jj :<C-U><C-R>=printf("Leaderf! rg --popup %s", expand("<cword>"))<CR>
nnoremap <Leader>t :Leaderf task<CR>
nnoremap <Leader>p :Leaderf command<CR>
nnoremap <M-m> :Leaderf mru --popup<CR>


function! s:lf_task_source(...)
	let rows = asynctasks#source(&columns * 48 / 100)
	let source = []
	for row in rows
		let name = row[0]
		let source += [name . '  ' . row[1] . '  : ' . row[2]]
	endfor
	return source
endfunction


function! s:lf_task_accept(line, arg)
	let pos = stridx(a:line, '<')
	if pos < 0
		return
	endif
	let name = strpart(a:line, 0, pos)
	let name = substitute(name, '^\s*\(.\{-}\)\s*$', '\1', '')
	if name != ''
		exec "AsyncTask " . name
	endif
endfunction

function! s:lf_task_digest(line, mode)
	let pos = stridx(a:line, '<')
	if pos < 0
		return [a:line, 0]
	endif
	let name = strpart(a:line, 0, pos)
	return [name, 0]
endfunction

function! s:lf_win_init(...)
	setlocal nonumber
	setlocal nowrap
endfunction


let g:Lf_Extensions = get(g:, 'Lf_Extensions', {})
let g:Lf_Extensions.task = {
			\ 'source': string(function('s:lf_task_source'))[10:-3],
			\ 'accept': string(function('s:lf_task_accept'))[10:-3],
			\ 'get_digest': string(function('s:lf_task_digest'))[10:-3],
			\ 'highlights_def': {
			\     'Lf_hl_funcScope': '^\S\+',
			\     'Lf_hl_funcDirname': '^\S\+\s*\zs<.*>\ze\s*:',
			\ },
		\ }


"}}}

" {{{ Fzf setting
function! s:ag_with_opts(arg, bang)
  let tokens  = split(a:arg)
  let ag_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
  call fzf#vim#ag(query, ag_opts, a:bang ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), a:bang)
endfunction

function! s:rg_with_opts(arg, bang)
  let tokens  = split(a:arg)
  let rg_opts = join(filter(copy(tokens), 'v:val =~ "^-"'))
  let query   = join(filter(copy(tokens), 'v:val !~ "^-"'))
  call fzf#vim#grep(query, rg_opts, a:bang ? fzf#vim#with_preview('up:60%') : fzf#vim#with_preview('right:50%:hidden', '?'), a:bang)
endfunction
autocmd VimEnter * command! -nargs=* -bang Ag call s:ag_with_opts(<q-args>, <bang>0)


let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.6 } }
let g:fzf_preview_window = ''
let g:fzf_preview_window = 'right:60%'
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
\ 'bg':      ['bg', 'Normal'],
\ 'hl':      ['fg', 'Comment'],
\ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
\ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
\ 'hl+':     ['fg', 'Statement'],
\ 'info':    ['fg', 'PreProc'],
\ 'border':  ['fg', 'Ignore'],
\ 'prompt':  ['fg', 'Conditional'],
\ 'pointer': ['fg', 'Exception'],
\ 'marker':  ['fg', 'Keyword'],
\ 'spinner': ['fg', 'Label'],
\ 'header':  ['fg', 'Comment'] }
nnoremap <Leader>; :


"}}}

" {{{ Session Plugin Config
let g:session_autosave = 'no' " 不自动保存session
"}}}

"{{{ ALE 快捷键快速跳转
let g:airline#extensions#ale#enabled = 0 " 使用lightline，所以关闭airline支持
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_sign_column_always = 1
let g:ale_set_signs = 1
let g:ale_linters = {'python': ['flake8'], 
            \   'rust': ['rustc', 'cargo'],
            \ 'tex':['chktex', 'lacheck'] }
let g:ale_lint_on_text_changed = 'never' " 仅在打开文件和保存的时候 Lint 
let g:ale_lint = 1
let g:ale_set_loclist = 1
let g:ale_set_quickfix = 0
nmap <silent> <M-k> :lprevious<CR>
nmap <silent> <M-j> :lnext<CR>
"}}}

" {{{YCM 设置
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_invoke_completion = '<C-x><C-o>'
let g:ycm_add_preview_to_completeopt = 0 " preview窗口影响布局
let g:ycm_show_diagnostics_ui = 1 " 已经有更好的ALE
set completeopt=menu,menuone
let g:ycm_min_num_of_chars_for_completion = 2
" let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_use_ultisnips_completer = 1
let g:ycm_complete_in_strings=1
let g:ycm_python_binary_path = 'python'
let g:ycm_log_level = 'debug'
let g:ycm_auto_trigger=1
let g:ycm_max_num_candidates = 30
" Let clangd fully control code completion
let g:ycm_clangd_uses_ycmd_caching = 0
" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
" let g:ycm_clangd_binary_path = exepath("clangd")
nnoremap <leader>jd :YcmCompleter GoTo<CR> 
nnoremap <leader>jr :YcmCompleter GoToReferences<CR> 
nnoremap <S-k> :YcmCompleter GetDoc<CR> 
"}}}

" {{{tags setting
" 所生成的数据文件的名称
let g:gutentags_modules = []
" set tags=./.tags;,.tags

" let g:gutentags_ctags_tagfile = '.tags'
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', 'xmake.lua', '.git', '.project']

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif
let g:gutentags_cache_dir = s:vim_tags
" let g:gutentags_plus_nomap = 1
augroup MyGutentagsStatusLineRefresher
    autocmd!
    autocmd User GutentagsUpdating call lightline#update()
    autocmd User GutentagsUpdated call lightline#update()
augroup END
noremap <silent> <C-\>s :GscopeFind s <C-R><C-W><cr>
noremap <silent> <C-\>g :GscopeFind g <C-R><C-W><cr>
noremap <silent> <C-\>c :GscopeFind c <C-R><C-W><cr>
noremap <silent> <C-\>t :GscopeFind t <C-R><C-W><cr>
noremap <silent> <C-\>e :GscopeFind e <C-R><C-W><cr>
noremap <silent> <C-\>f :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <C-\>i :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <C-\>d :GscopeFind d <C-R><C-W><cr>
noremap <silent> <C-\>a :GscopeFind a <C-R><C-W><cr>
noremap <silent> <C-\>z :GscopeFind z <C-R><C-W><cr>
"}}}

"{{{gtags 配置
" https://www.gnu.org/software/global/
let $GTAGSLABEL = 'native-pygments'

if has('win32')
    let $GTAGSCONF = 'C:\\Users\\lhche\\gtags.conf' "必须重新配置
else
    let $GTAGSCONF = '/home/vagrant/gtags.conf'
endif
" let gutentags_define_advanced_commands = 1
" 配置 ctags 的参数 https://github.com/universal-ctags/ctags
let g:gutentags_ctags_extra_args = ['--extras=+r']
" let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args += ['--kinds-c++=+px']
let g:gutentags_ctags_extra_args += ['--kinds-c=+px']
" let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']
"let g:gutentags_ctags_extra_args += ['--exclude=@.gitignore']
"let g:gutentags_ctags_extra_args += ['--exclude=@.ignore']
let g:gutentags_auto_add_gtags_cscope = 0
"}}}

" {{{ 自动启动echodoc
let g:echodoc#enable_at_startup=1
"}}}

" {{{UltiSnip插件
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<S-tab>"
let g:UltiSnipsEditSplit="vertical"
"}}}

" {{{enable directwrite renderoption in windows
if has('win32') 
    if !has('nvim')
        set renderoptions=type:directx,renmode:0,taamode:1
    endif
endif

if has('nvim')
    set inccommand=nosplit
endif
"}}}

" {{{lightline configuration
      " \   'filetype': 'MyFiletype',
      " \   'fileformat': 'MyFileformat',
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'component': {
      \  'tagbar': '%{tagbar#currenttag("%s", "", "f")}',
      \  'current_tag': '%{Tag_Get_Current_Tag()}',
      \  },
      \ }
function! MyFiletype()
return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
  endfunction

" 在右下角显示 Linting状态
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \  'gutentags_status': 'gutentags#statusline',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active = {
    \ 'left': [ [ 'mode', 'paste' ],
    \           ['readonly', 'filename', 'modified' ],
    \           ['current_tag']
    \         ],
    \ 'right': [ 
    \            [ 'gutentags_status' ],
    \            [ 'linter_checking', 'linter_errors', 'linter_warnings'],
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
    \ 'active': [ 'tabnum', 'absolutepath', 'modified' ],
    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
"}}}

" {{{NERDTree setting
if has('gui_running')
    let g:lightline#ale#indicator_checking = "\uf110"
    let g:lightline#ale#indicator_warnings = "\uf071"
    let g:lightline#ale#indicator_errors = "\uf05e"
    let g:lightline#ale#indicator_ok = "\uf00c"
end
nnoremap <M-f> :NERDTreeFind<CR>
nnoremap <M-n> :NERDTreeToggle<CR>
nnoremap <F10> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
let g:NERDTreeMapUpdirKeepOpen='h'
let g:NERDTreeMapChangeRoot='l'
let g:NERDTreeMapToggleFilters=''
let g:NERDTreeMapToggleZoom='f'
" nnoremap - :NERDTreeFind<CR>
" NERDTrees File highlighting
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction
let g:NERDTreeWinPos = 'right'
let g:NERDTreeWinSize = 50
"}}}

" {{{set working directory to git project root
" or directory of current file if not git project
function! SetProjectRoot()
  " default to the current file's directory
  try
    lcd %:p:h
    let s:buftype = getbufvar(bufnr(), '&buftype', 'ERROR')
    " Normal buffer
    if s:buftype == '' || s:buftype == 'nowrite' || s:buftype == 'acwrite'
        let s:default_root = gutentags#default_get_project_root(expand("%:p"))
        if s:default_root != "" && isdirectory(s:default_root)
                exe 'lcd' s:default_root
        endif
    endif
  catch /.*/
  endtry
endfunction
command! CD call SetProjectRoot()
"}}}

"{{{  Tagbar
let g:tagbar_width = 35
let g:tagbar_left = 1
nnoremap <silent> <F12> :TagbarToggle<CR>
"}}}

" {{{ Vimtex
let g:vimtex_compiler_method = 'latexmk'
let g:vimtex_compiler_latexmk = {
    \ 'backend' : "jobs",
    \ 'background' : 1,
    \ 'build_dir' : './build',
    \ 'callback' : 0,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-xelatex',
    \ 'pdflatex'         : '-pdf',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
if !exists('g:ycm_semantic_triggers')
let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
"let g:vimtex_view_general_viewer = 'mupdf'
let g:vimtex_view_general_viewer = 'SumatraPDF'
let g:vimtex_view_general_options
    \ = '-reuse-instance -forward-search @tex @line @pdf'
let g:vimtex_view_general_options_latexmk = '-reuse-instance'

let g:vimtex_compiler_callback_hooks = ['Latexmk_task_done']
"let g:vimtex_compiler_latexmk = {'callback' : 0}

function! Latexmk_task_done(status)
    if a:status == 1
        echom "LaTeX compilation succeeded."
    elseif a:status == 0
        echom "LaTeX compilation failed."
    else
        echom "Unkown status."
    endif
endfunction

"let $success_cmd = 'gvim.exe --remote-expr "vimtex#compiler#callback(1)"'
"let $success_cmd = 'cl-2-dde-1.0.exe @= =SUMATRA= =control= =[Open("%bm.pdf",0,1,1)]='
"let $failure_cmd = 'gvim.exe --remote-expr "vimtex#compiler#callback(0)"'

let g:vimtex_compiler_progname=v:progname

"}}}

"{{{ Some useful script and function
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif
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
"}}}

"{{{ Code Runner
augroup coderunner
    autocmd!
    autocmd FileType c,cpp let g:ycm_show_diagnostics_ui = 1
    " autocmd FileType c,cpp nnoremap <silent> <F9> :AsyncRun -mode=term -pos=right xmake build<CR>
    " autocmd FileType c,cpp nnoremap <silent> <F9> :AsyncRun -mode=term xmake build<CR>
    " autocmd FileType c,cpp nnoremap <silent> <leader>b :AsyncRun -mode=term -pos=right xmake build<CR>
    autocmd FileType c,cpp nnoremap <silent> <leader>r :AsyncRun -mode=term -pos=right xmake run<cr>
    " autocmd FileType c,cpp nnoremap <silent> <F5> :AsyncRun xmake -mode=term run<cr>
    autocmd FileType c,cpp nnoremap <silent> <leader>k :AsyncRun xmake project -k compile_commands<cr>

    " autocmd FileType rust nnoremap <F9> :Neomake rustc<CR>
    " autocmd FileType rust nnoremap <F5> :RustRun<CR>
    " autocmd FileType rust nnoremap <leader>b :AsyncRun cargo build<CR>
    " autocmd FileType rust nnoremap <leader>r :AsyncRun cargo run<CR>
    "nnoremap <silent> <F9> :AsyncRun g++ -Wall -O2 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
    "nnoremap <silent> <F5> :AsyncRun -raw -cwd=$(VIM_FILEDIR) "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" <cr>
augroup END
command! CompileCommands :AsyncRun xmake project -k compile_commands<cr>
"}}}

"{{{ WebDevicons
if exists('g:loaded_webdevicons')
    call webdevicons#refresh()
endif
let g:webdevicons_enable_nerdtree = 0
"}}}

" {{{star-search https://github.com/bronson/vim-visual-star-search/
" Name: Star search
" Author: Name5566 <name5566@gmail.com>
" Version: 0.1.1
let loaded_starsearch = 1
let s:savedCpo = &cpo
set cpo&vim
function! s:VStarsearch_searchCWord()
	let wordStr = expand("<cword>")
	if strlen(wordStr) == 0
		echohl ErrorMsg
		echo 'E348: No string under cursor'
		echohl NONE
		return
	endif
	
	if wordStr[0] =~ '\<'
		let @/ = '\<' . wordStr . '\>'
	else
		let @/ = wordStr
	endif

	let savedUnnamed = @"
	let savedS = @s
	normal! "syiw
	if wordStr != @s
		normal! w
	endif
	let @s = savedS
	let @" = savedUnnamed
endfunction

function! s:VStarsearch_searchVWord()
	let savedUnnamed = @"
	let savedS = @s
	normal! gv"sy
	let @/ = '\V' . substitute(escape(@s, '\'), '\n', '\\n', 'g')
	let @s = savedS
	let @" = savedUnnamed
endfunction
nnoremap <silent> * :call <SID>VStarsearch_searchCWord()<CR>:set hls<CR>
vnoremap <silent> * :<C-u>call <SID>VStarsearch_searchVWord()<CR>:set hls<CR>
let &cpo = s:savedCpo
"}}}

" {{{ Neomake setting
let g:neomake_open_list = 2
""}}}
"{{{ AutoPair Setting
let g:AutoPairsShortcutToggle = ''
let g:AutoPairsShortcutJump = ''

"}}}

" {{{ run xmake in the first terminal window
command! XmakeInTerm silent! call RunXmakeInTerm()
function! RunXmakeInTerm()
    for buf in term_list()
        let s:status = term_getstatus(buf)
        if matchstr(s:status, "finished") != ""
            return
        elseif matchstr(s:status, "normal") != ""
            "从终端作业模式不能进入插入模式。
            call term_sendkeys(buf, "i")
        endif
        call term_sendkeys(buf, "xmake && xmake run\<CR>")
        break
    endfor
endfunction
"}}}

" {{{ Key Mapping
nnoremap s <Plug>(easymotion-s2)
nnoremap t <Plug>(easymotion-t2)

tnoremap <F1> <C-W>N
tnoremap <ESC> <C-\><C-n>
tnoremap <expr> <C-R> '<C-\><C-N>"'.nr2char(getchar()).'pi'
tnoremap <c-h> <C-\><C-N><C-w>h
tnoremap <c-j> <C-\><C-N><C-w>j
tnoremap <c-k> <C-\><C-N><C-w>k
tnoremap <c-l> <C-\><C-N><C-w>l
nnoremap j gj
nnoremap k gk
inoremap <F1> <ESC> " 防止F1误触
nnoremap <F1> <ESC> " F1误触
vnoremap <F1> <ESC> " F1误触
inoremap jj <ESC>

nnoremap <M-t> :tabe<CR>
nnoremap <M-o> :NERDTreeToggle<CR>
nnoremap <M-q> :call QFWindowToggle()<CR> 
nnoremap <M-l> :call LocWindowToggle()<cr>
nnoremap <M-n> :tn<CR>
nnoremap <M-p> :tp<CR>

inoremap <C-U> <C-G>u<C-U>
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
nnoremap <C-n> :cn<CR>
nnoremap <C-p> :cp<CR>

nnoremap <leader>v <C-w>v<C-w>l
" nnoremap <leader>t :tabnew<CR>
nnoremap <Leader>w :w<CR>

"}}}

" {{{Auto Format when saving file
function! Formatonsave()
  let l:formatdiff = 1
  py3f C:\\Program Files\\LLVM\share\\clang\\clang-format.py
endfunction
" autocmd BufWritePre *.h,*.cc,*.cpp,*.c call Formatonsave()
autocmd BufEnter * call SetProjectRoot()
"}}}

"{{{ Fuzzy Tag Jump with fzf.vim
function! s:vimtags_sources(args)
    if has_key(a:args, 'tag_pattern')
        let s:tag_pattern = "^" . a:args['tag_pattern'][0] . "$"
    else
        let s:tag_pattern = "^" . expand('<cword>') . "$"
    endif
    let s:tag_list = taglist(s:tag_pattern)
    " call map(s:tag_list, 'v:val["name"] . "  " . v:val["kind"] . "  " . v:val["filename"]')
    call map(s:tag_list, 'v:val["cmd"] . "  " . v:val["filename"]')
    return s:tag_list
endfunction

function! s:vimtags_sink(line, arg)
    let s:templist = matchlist(a:line, '\(/.*/\)\ \ \(.*\)')
    let s:jumpcmd = s:templist[1]
    let s:filename = s:templist[2]
    if exists('*gettagstack') && exists('*settagstack')
        let from = [bufnr('%'), line('.'), col('.'), 0]
        let tagname = expand('<cword>')
        let winid = win_getid()
        call settagstack(winid, {'items': [{'from': from, 'tagname': tagname}]}, 'a')
        call settagstack(winid, {'curidx': len(gettagstack(winid)['items']) + 1})
    endif
    exec 'edit +' . escape(fnameescape(s:jumpcmd), '*') . ' ' . fnameescape(s:filename)
endfunction

function! s:vimtags()
    call fzf#run({
    \ 'source':  s:vimtags_sources(),
    \ 'options': '+m -d "\t" --with-nth 1,4.. -n 1 --tiebreak=index',
    \ 'down':    '40%',
    \ 'sink':    function('s:vimtags_sink')})
endfunction

command! VimTags call s:vimtags()
" nnoremap g] :VimTags<CR>
nnoremap g] :Leaderf vimtag<CR>
" tnoremap <expr> <Esc> (&filetype == "fzf") ? "<Esc>" : "<c-\><c-n>"
function! Get_digest(line, mode)
    return [a:line, 0]
    " full path, i.e, the whole line
    let s:templist = matchlist(a:line, '\(/.*/\)\ \ \(.*\)')
    let s:jumpcmd = s:templist[1]
    let s:filename = s:templist[2]
    return [s:filename, len(a:line) - len(s:filename)]
endfunction
let g:Lf_Extensions.vimtag = {
            \       "source": string(function("s:vimtags_sources"))[10:-3],
            \       "arguments": [{ "name": ["tag_pattern"], "nargs": '?' }],
            \       "accept": string(function("s:vimtags_sink"))[10:-3],
            \       "get_digest": "Get_digest",
            \}
"}}}

" Alt keys stuff {{{
function! Terminal_MetaMode(mode)
    set ttimeout
    if $TMUX != ''
        set ttimeoutlen=30
    elseif &ttimeoutlen > 80 || &ttimeoutlen <= 0
        set ttimeoutlen=80
    endif
    if has('nvim') || has('gui_running')
        return
    endif
    function! s:metacode(mode, key)
        if a:mode == 0
            exec "set <M-".a:key.">=\e".a:key
        else
            exec "set <M-".a:key.">=\e]{0}".a:key."~"
        endif
    endfunc
    for i in range(10)
        call s:metacode(a:mode, nr2char(char2nr('0') + i))
    endfor
    for i in range(26)
        call s:metacode(a:mode, nr2char(char2nr('a') + i))
        call s:metacode(a:mode, nr2char(char2nr('A') + i))
    endfor
    if a:mode != 0
        for c in [',', '.', '/', ';', '[', ']', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    else
        for c in [',', '.', '/', ';', '{', '}']
            call s:metacode(a:mode, c)
        endfor
        for c in ['?', ':', '-', '_']
            call s:metacode(a:mode, c)
        endfor
    endif
endfunc
call Terminal_MetaMode(0)

let &t_TI="" " disable modifyOtherKeys, use ESC mode to send alt keys.
let &t_LE=""
" }}}

let gutentags_define_advanced_commands=1
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']

" dirvish {{{
augroup dirvish_config
    autocmd!

    " Map `t` to open in new tab.
    autocmd FileType dirvish
    \  nnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>
    \ |xnoremap <silent><buffer> t :call dirvish#open('tabedit', 0)<CR>

    autocmd FileType dirvish nnoremap <buffer> m :!mkdir %|xnoremap <buffer> m :!mkdir %

    autocmd FileType dirvish nnoremap <buffer> e :e %|xnoremap <buffer> e :e %
    " Map `gr` to reload.
    autocmd FileType dirvish nnoremap <silent><buffer>
    \ gr :<C-U>Dirvish %<CR>

    " Map `gh` to hide dot-prefixed files.  Press `R` to "toggle" (reload).
    autocmd FileType dirvish nnoremap <silent><buffer>
    \ gh :silent keeppatterns g@\v/\.[^\/]+/?$@d _<cr>:setl cole=3<cr>
augroup END


"
" }}}

" let g:vimspector_enable_mappings = 'HUMAN'
let g:termdebugger="gdb-multiarch"

nnoremap <buffer> <c-q> :QuickpeekToggle<cr>
let g:quickpeek_auto = v:true

" coc {{{
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
" nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>fm  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end



" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings using CoCList:
" Show all diagnostics.
nnoremap <silent> <space>d  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" }}}
