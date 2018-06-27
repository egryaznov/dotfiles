call plug#begin()
" Plug 'w0rp/ale'
Plug 'terryma/vim-expand-region'
Plug 'egryaznov/vim-tautology'
Plug 'tommcdo/vim-exchange'
Plug 'Yggdroot/LeaderF' | Plug 'Yggdroot/LeaderF-marks'
Plug 'ZeroKnight/vim-signjump'
Plug 'Ron89/thesaurus_query.vim'
Plug 'mjbrownie/browser.vim'
Plug 'metakirby5/codi.vim'
Plug 'jonhiggs/macdict.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'lervag/vimtex'
Plug 'hdima/python-syntax/'
" BEGIN THEMES
Plug 'machakann/vim-colorscheme-tatami'
Plug 'tomasr/molokai'
Plug 'vim-scripts/pyte'
Plug 'jyota/vimColors'
Plug 'adampasz/stonewashed-themes'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'junegunn/seoul256.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'altercation/vim-colors-solarized'
Plug 'joshdick/onedark.vim'
" END THEMES
Plug 'majutsushi/tagbar', { 'on' : 'TagbarToggle', 'for' : ['java', 'c', 'cpp', 'lisp', 'tex']}
" BEGIN TEXT-OBJECT STUFF
Plug 'kana/vim-textobj-user' | Plug 'Julian/vim-textobj-brace' | Plug 'kana/vim-textobj-indent' | Plug 'beloglazov/vim-textobj-quotes' | Plug 'thinca/vim-textobj-between' | Plug 'sgur/vim-textobj-parameter' | Plug 'Julian/vim-textobj-variable-segment' | Plug 'kana/vim-textobj-lastpat' | Plug 'kana/vim-textobj-entire'
" END TEXT-OBJECT STUFF
Plug 'tpope/vim-unimpaired'
Plug 'reedes/vim-thematic'
Plug 'godlygeek/tabular'
Plug 'AndrewRadev/switch.vim'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'mhinz/vim-startify'
Plug 'kshenoy/vim-signature'
Plug 'luochen1990/rainbow'
" Plug 'myusuf3/numbers.vim'
Plug 'tpope/vim-repeat'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-easymotion.vim'
Plug 'easymotion/vim-easymotion'
Plug 'Raimondi/delimitMate'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'jceb/vim-commentary'
Plug 'shougo/neocomplete.vim' | Plug 'shougo/neosnippet.vim' | Plug 'shougo/neosnippet-snippets'
Plug 'shougo/context_filetype.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-abolish'
call plug#end()



augroup ft_c
  autocmd!
  autocmd BufWinEnter *.c setlocal textwidth=130                                       " устанавливает максимальную длину одной строки
  autocmd BufWinEnter *.c setlocal colorcolumn=+1,+2                                   " highlight 2 columns after 'textwidth'
  autocmd BufWinEnter *.c set foldmethod=indent                                        " Использовать авто-настройки для фолдинга
  autocmd BufWinEnter *.c let [&tabstop, &shiftwidth, &softtabstop]=repeat([4], 3)
  autocmd BufWinEnter *.c retab
augroup END                                                                            " ----------------------------------------------------------------------------}



augroup ft_py
  autocmd!
  " autocmd BufWinEnter *.py setlocal textwidth=79                                        " устанавливает максимальную длину одной строки
  autocmd BufWinEnter *.py setlocal colorcolumn=+1                                      " highlight 2 columns after 'textwidth'
  autocmd BufWinEnter *.py set foldmethod=indent                                        " Использовать авто-настройки для фолдинга
  autocmd BufWinEnter *.py let [&tabstop, &shiftwidth, &softtabstop]=repeat([4], 3)
  autocmd BufWinEnter *.py retab
  " autocmd FileType python Thematic python
  autocmd FileType python setlocal nocursorline
  autocmd FileType python setlocal nocursorcolumn
  autocmd FileType python setlocal conceallevel=0
  autocmd FileType python IndentGuidesEnable
augroup END



augroup ft_tex
    autocmd!
    autocmd BufWinEnter *.tex setlocal textwidth=130                                   " устанавливает максимальную длину одной строки
    autocmd BufWinEnter *.tex setlocal colorcolumn=+1,+2                               " highlight 2 columns after 'textwidth'
    autocmd BufWinEnter *.tex set foldmethod=indent                                    " Использовать авто-настройки для фолдинга
    autocmd BufWinEnter *.tex let [&tabstop, &shiftwidth, &softtabstop]=repeat([4], 3)
    autocmd BufWinEnter *.tex retab
    autocmd FileType tex set filetype=latex
    autocmd FileType tex setlocal nocursorline
    autocmd FileType tex setlocal nocursorcolumn
    autocmd FileType tex setlocal conceallevel=0
    autocmd FileType tex setlocal spell
    autocmd FileType tex Thematic tex
    autocmd FileType tex IndentGuidesEnable
augroup END



augroup ft_java                                                                        " Java filetype commands -----------------------------------------------------{
    autocmd!
    autocmd BufWinEnter *.java setlocal textwidth=130                                    " устанавливает максимальную длину одной строки
    autocmd BufWinEnter *.java setlocal colorcolumn=+1,+2                                " highlight 2 columns after 'textwidth'
    autocmd BufWinEnter *.java set foldmethod=indent                                     " Использовать авто-настройки для фолдинга
    autocmd BufWinEnter *.java let [&tabstop, &shiftwidth, &softtabstop]=repeat([4], 3)
    autocmd BufWinEnter *.java retab
    autocmd FileType java Thematic java
augroup END                                                                            " ----------------------------------------------------------------------------}



augroup StripWhitespace
    autocmd!
    autocmd BufWritePost * StripWhitespace
    autocmd FocusLost * StripWhitespace
    autocmd FocusLost * silent! wall
augroup END



function! g:ToggleNuMode()
  if &rnu == 0
     set rnu
     set cursorcolumn
     set cursorline
  else
     set nornu
     set nocursorcolumn
     set nocursorline
  endif
endfunction



function! MyColors()
  let morning=6
  let night=18
  if strftime("%H") >= morning && strftime("%H") <= night
    if &background == "dark"
        set background=light
    endif
  elseif &background == "light"
    set background=dark
  endif
  execute ":AirlineRefresh"
endfunction



augroup noBeeps
    autocmd!
    autocmd GUIEnter * set visualbell t_vb=
augroup END



augroup MyColors                                                 " Изменяет тему в зависимости от времени суток
  autocmd!
  autocmd BufWritePost *.txt,*.tex,*.py,*.java,*.c,*.lisp call MyColors()
  autocmd VimEnter * call MyColors()
augroup END



cd /Users/outofbound/VimFiles
let mapleader="\<Space>"                                        " Сделать пробел mapleader'ом
let maplocalleader="\<Tab>"
set lines=999 columns=999                                       " Установить максимальное кол-во строк и столбцов
set autoindent                                                  " set auto-indenting on for programming
set autoread                                                    " Автоматически загружать файл при изменении его в другой программе
set autowriteall                                                " автоматически сохраняет все открытые буферы
set backspace=indent,eol,start                                  " make backspace work like most other apps
set conceallevel=0
set cmdheight=1                                                 " установить высоту cmd
set dictionary+=/usr/share/dict
set encoding=utf-8                                              " Установить юникод-кодировку по умолчанию
set expandtab                                                   " always uses spaces instead of tab characters
set foldenable                                                  " включить функцию фолдинга
set foldlevel=1
set foldclose=all
set grepprg=grep\ -nH\ $*
set guifont=Consolas:h19
set gdefault                                                    " /g option in substitution by default
set hlsearch                                                    " highlight searches
set ignorecase                                                  " ignore case when searching
set infercase
set incsearch                                                   " do incremental searching
set lazyredraw                                                  " Будет загружать обновления экрана из буфера, вместо того, чтобы всё время обновлять экран по-новому
set linebreak                                                   " Новая строка не разрывает слово
set list listchars=eol:⌐,trail:·
set nobackup                                                    " do not keep a backup file
set nocompatible                                                " Отключает совместимость с предыдущими версиями Вима и другими редакторами
set noerrorbells novisualbell t_vb=
set nohidden                                                    " если скрыть или выгрузить буфер, то он удалится
set noswapfile                                                  " не создавать своп-файл при закрытии буфера
set noshellslash                                                " IMPORTANT: win32 users will need to have 'shellslash' set so that latex can be called correctly
set relativenumber
set sessionoptions+=resize,winpos
set shiftwidth=4                                                " size of an indent
set shiftround
set shortmess=a                                                 " сокращать все аббревиатуры
set showmatch                                                   " jump to matches when entering regexp
set smartcase                                                   " no ignorecase if Uppercase char present
set smartindent                                                 " делает то же, что и autoindent, плюс автоматически выставляет отступы в нужных местах
set softtabstop=4                                               " a combination of spaces and tabs are used to simulate tab stops at a width other than the (hard)tabstop
set spelllang=en,ru                                             " Установить русский и английский языки для правописания
set thesaurus+=~/.vim/thesaurus
set t_Co=256                                                    " Установить 256-цветовой режим
set ttyfast                                                     " Убирает (надеюсь) лаги при прокрутке больших документов
set viewoptions=cursor,folds,slash,unix
set wildmenu
set wildmode=full
set wrap                                                        " start new line after reaching textwidth limit
set wrapmargin=1





" Настройки GUI
colorscheme seoul256
highlight cursorcolumn guibg=black
set background=light
set cursorcolumn
set cursorline
set guicursor+=a:blinkon0                                       " disable cursor blink
set guioptions-=m                                               " Отключить системное меню
set guioptions-=T                                               " Скрыть тулбар
set guioptions-=e                                               " Показывать+\отключить- вкладки (tabpages) (:tabnew, gt, gT и т. д.)
set guioptions-=r                                               " Скрыть правый скроллбар
set guioptions-=R                                               " Не показывать правый скроллбар даже тогда, когда текст не вмещается в окно
set guioptions-=b                                               " Скрыть нижний горизонтальны скроллбар
set guioptions-=l                                               " Скрыть левый скроллбар
set guioptions-=L                                               "Не показывать левый скроллбар даже тогда, когда текст не вмещается в окно
set laststatus=2                                                " Включить командную строку
set number                                                      " Отображать номера строк
set numberwidth=3                                               " Установить длину столбца с цифрами
set showcmd                                                     " Показывать в крайнем правом углу что печатает пользователь
set splitbelow                                                  " Команда :new создаёт окно внизу, а не вверху
set splitright                                                  " Команда :vnew создаёт окно в правой стороне, а не в левой
set iskeyword+=:
syntax enable                                                   " Включить подцветку синтаксиса
winpos 0 0                                                      " Установить окно Vim`а в верхнем правом угл





" Настройки проложений
let g:airline#extensions#ale#enabled            = 1
let g:airline#extensions#ctrlspace#enabled      = 0
let g:airline#extensions#eclim#enabled          = 0
let g:airline#extensions#tabline#enabled        = 1
let g:airline#extensions#tabline#show_buffers   = 0
let g:airline#extensions#tabline#show_tabs      = 1
let g:airline#extensions#tabline#left_sep       = "\u2b80"
let g:airline#extensions#tabline#left_alt_sep   = "\u2b80"
let g:airline#extensions#tagbar#enabled         = 0
let g:airline#extensions#whitespace#enabled     = 0
let g:airline#extensions#tabline#tab_min_count  = 2
let g:airline#extensions#tabline#formatter      = 'unique_tail_improved'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme                             = "zenburn"
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep                   = "\u2b80"
let g:airline_left_alt_sep               = "\u2b81"
let g:airline_right_sep                  = "\u2b82"
let g:airline_right_alt_sep              = "\u2b83"
let g:airline_symbols.branch             = "\u2b60"
let g:airline_symbols.readonly           = "\u2b64"
let g:airline_symbols.linenr             = "\u2b61"
" let g:ale_lint_on_text_changed = 'always'
" let g:ale_lint_on_enter = 1
" let g:ale_linters = {
" \   'LaTeX': ['chktex'],
" \   'python': ['flake8']
" \}
let g:ctrlp_tabpage_position             = 'a'
" let g:ctrlp_map                          = '±'
let g:ctrlp_working_path_mode            = 'c'
let g:EasyMotion_smartcase               = 1
let g:expand_region_text_objects = {
      \ 'iw'  :0,
      \ 'iW'  :0,
      \ 'i"'  :1,
      \ 'i''' :1,
      \ 'i]'  :1,
      \ 'ib'  :1,
      \ 'iB'  :1,
      \ 'il'  :1,
      \ 'ip'  :1,
      \ 'ie'  :0,
      \ }
let g:indent_guides_color_change_percent = 50
let g:Lf_StlSeparator                    = { 'left': "\u2b80", 'right': "\u2b82" }
let g:Lf_RootMarkers                     =  ['.root']
let g:Lf_WorkingDirectoryMode            = 'a'
let g:neosnippet#snippets_directory      = '/Users/outofbound/.vim/plugged/neosnippet-snippets/neosnippets'
let g:netrw_liststyle                    = 3 " Set listing style in NETRW
let python_highlight_all                 = 1
let g:rainbow_active                     = 1
let g:rainbow_guifgs                     = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:startify_bookmarks                 = [{'v': '~/.vimrc'}, {'l': '~/.latexmkrc'}, {'w': '~/VimFiles/peculiar_english_words.txt'}]
let g:SignatureMap                       = {
    \ 'Leader'             :  "m",
    \ 'PlaceNextMark'      :  "m,",
    \ 'ToggleMarkAtLine'   :  "m.",
    \ 'PurgeMarksAtLine'   :  "m-",
    \ 'DeleteMark'         :  "dm",
    \ 'PurgeMarks'         :  "m<Space>",
    \ 'PurgeMarkers'       :  "m<BS>",
    \ 'GotoNextLineAlpha'  :  "']",
    \ 'GotoPrevLineAlpha'  :  "'[",
    \ 'GotoNextSpotAlpha'  :  "",
    \ 'GotoPrevSpotAlpha'  :  "",
    \ 'GotoNextLineByPos'  :  "]'",
    \ 'GotoPrevLineByPos'  :  "['",
    \ 'GotoNextSpotByPos'  :  "]`",
    \ 'GotoPrevSpotByPos'  :  "[`",
    \ 'GotoNextMarker'     :  "]-",
    \ 'GotoPrevMarker'     :  "[-",
    \ 'GotoNextMarkerAny'  :  "]=",
    \ 'GotoPrevMarkerAny'  :  "[=",
    \ 'ListBufferMarks'    :  "m/",
    \ 'ListBufferMarkers'  :  "m?"
    \ }
let g:surround_105                       = "\\textit{\r}" " Italize a region by 'i'
let g:surround_98                        = "\\textbf{\r}" " Embolden a region by 'b'
let g:surround_116                       = "\\texttt{\r}" " Verbatize a region by 't'
let g:switch_mapping                     = "-"
let g:switch_custom_definitions          =
    \ [
    \   ['itemize', 'enumerate'],
    \   ['align', 'gather'],
    \   ['public', 'private'],
    \   ['int', 'long'],
    \   ['short', 'byte'],
    \   ['float', 'double'],
    \   ['StringBuffer', 'String'],
    \   ['@NotNull', '@Nullable']
    \ ]
let g:tautology_mappings = 1
let g:tagbar_type_latex = {
    \ 'ctagstype' : 'latex',
    \ 'kinds'     : [
        \ 's:sections',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
    \ ],
    \ 'sort'    : 0,
\ }
let g:tex_flavor='latex'
let g:thematic#themes                     = {
\ 'python' : { 'colorscheme'  : 'seoul256',
\              'airline-theme': 'zenburn',
\            },
\ 'tex'    : { 'colorscheme'  : 'pencil',
\            },
\ 'onedark': { 'colorscheme'  : 'onedark',
\              'airline-theme': 'onedark',
\            },
\ 'java'   : { 'colorscheme'  : 'papercolor',
\              'fullscreen'   : 0,
\            },
\ 'lisp'   : { 'colorscheme'  : 'gruvbox',
\             'airline-theme': 'gruvbox',
\           },
\ }
let g:vimtex_fold_comments                = 1
let g:vimtex_fold_preamble                = 1
let g:vimtex_latexmk_build_dir            = '/Users/outofbound/VimFiles/thesis/tex/out'
let g:vimtex_quickfix_autojump            = 1
let g:vimtex_quickfix_ignore_all_warnings = 1
let g:vimtex_quickfix_latexlog            = {'references' : 0} " Disable undefined warnings
let g:vimtex_quickfix_open_on_warning     = 0
let g:ultisnips_java_brace_style          = "nl"
let g:UltiSnipsEditSplit                  = 'vertical'
let g:UltiSnipsSnippetDirectories         = ["UltiSnips", "plugged/vim-snippets/UltiSnips"]
let g:UltiSnipsJumpForwardTrigger         = "<S-Tab>"
let g:UltiSnipsJumpBackwardTrigger        = "<C-Tab>"



" Abbreviations
cnoreabbrev H helpgrep
abbrev teh the
abbrev Teh The
abbrev hte the
abbrev Hte The
abbrev Het The
abbrev het the
abbrev eth the
abbrev Eth the
abbrev eht the
abbrev Eht the



" Binds
" Решаем проблему с русской раскладкой
set langmap=йцукенгшщзфывапролджячсмитьбюЙЦУКЕНГШЩЗФЫВАПРОЛДЖЯЧСМИТЬБЮ;qwertyuiopasdfghjkl\\;zxcvbnm\\,.QWERTYUIOPASDFGHJKL:\\ZXCVBNM<>
noremap Ж :
noremap ж ;
noremap х [
noremap ъ ]
noremap Х {
noremap Ъ }
noremap э '
noremap Э "



" Обычный режим
nnoremap \ ,
nnoremap <C-m> +
nmap , <Plug>(easymotion-prefix)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)
nnoremap <Space> <NOP>
vnoremap <Space> <NOP>
nnoremap j gj
nnoremap k gk
xnoremap j gj
xnoremap k gk
nnoremap J 5j
nnoremap K 5k
xnoremap J 5j
xnoremap K 5k
nnoremap о gj
nnoremap л gk
xnoremap о gj
xnoremap л gk
nnoremap О 5j
nnoremap Л 5k
xnoremap О 5j
xnoremap Л 5k
nnoremap $ g$
nnoremap ^ g^
nnoremap [j k^v$yj$a<SPACE><ESC>px
nnoremap ]j J
nnoremap [J k^v$y"_dd$a<SPACE><ESC>px
nnoremap ]J J
nnoremap [* [s1z=``
nnoremap ]* ]s1z=``
nnoremap Y y$
nnoremap <CR> za
nnoremap <BS> "_dd
vnoremap <BS> "_d
nnoremap <Leader>l :nohl<CR>
" Повторить последнюю команду (alt-;)
nnoremap … :<Up><CR>
nnoremap <Leader>S :Startify<CR>
" Скопировать весь текст из текущего буфера
nnoremap <Tab>Y ggVG"+y``zz
vnoremap ˚ 15k
vnoremap ∆ 15j
nnoremap ˚ 15k
nnoremap ∆ 15j
nnoremap <Leader>s :wall<CR><CR>
nnoremap ∂ "dyiw:call MacDict(@d)<CR>
" Открыть новую вкладку
nnoremap <C-t> :tabnew<CR>
" Открыть новый буфер в горизонтальном окне
nnoremap <C-s> :spit<CR>
nnoremap <Leader>n :enew<CR>
nnoremap <Leader>N :NeoSnippetEdit -split<CR>
nnoremap <C-c> :close<CR>
nnoremap <Leader>V :tabnew<CR>:e ~/.vimrc<CR>
nnoremap gz ^f=B
nnoremap ∫ BB
nnoremap ∑ WW
nmap + ]j
" Easymotion mappings
nmap ,a <Plug>(easymotion-jumptoanywhere)
nmap ,r <Plug>(easymotion-repeat)
nmap ,x <Plug>(easymotion-prev)



" Режим вставки
inoremap <C-f> <C-[>cw
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-d> <Del>
inoremap <S-BS> <ESC>"_ddi<BS><ESC>$ja
inoremap <C-s> <C-o>o
inoremap <C-v> <C-o>O




" Режим командной строки
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-l> <Right>
cnoremap <C-h> <Left>



imap <C-f> <Plug>(neosnippet_expand_or_jump)
smap <C-f> <Plug>(neosnippet_expand_or_jump)
xmap <C-f> <Plug>(neosnippet_expand_target)



nmap t <nop>
nmap T <nop>
nnoremap tt "_dd
nnoremap T "_D
" This allows to kill (thanatos) text with t{motion}
nmap <silent> t :set opfunc=KillText<CR>g@
function! KillText(type, ...)
if a:0  " Invoked from Visual mode, use '< and '> marks.
    silent exe "normal! `<" . a:type . "`>\"_c" . "\"_x"
elseif a:type == 'line'
    silent exe "normal! '[V']\"_c"
elseif a:type == 'block'
    silent exe "normal! `[\<C-V>`]\"_c"
else
    silent exe "normal! `[v`]\"_d" . "\"_x"
endif
endfunction


nnoremap ± :NERDTreeToggle<CR>
nnoremap <Leader>1 :NeoSnippetEdit -split<CR>
nnoremap <Leader>2 :call g:ToggleNuMode()<CR>
nnoremap <Leader>3 :TagbarToggle<CR>
nnoremap <Leader>4 :AirlineRefresh<CR>
