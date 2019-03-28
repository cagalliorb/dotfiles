"/begin dein Scripts/
if &compatible
  set nocompatible
endif
" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
" Required:
if dein#load_state('~/.vim/dein')
	call dein#begin('~/.vim/dein')
	" Let dein manage dein
  " Required:
	call dein#add('~/.vim/dein/repos/github.com/Shougo/dein.vim')
  " Add or remove your plugins here
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('rhysd/vim-clang-format')
  call dein#add('vim-airline/vim-airline')
  call dein#add('scrooloose/nerdtree')
	call dein#add('lazywei/vim-matlab')
  " You can specify revision/branch/tag.
  "call dein#add('Shougo/deol.nvim', { 'rev':'a1b5108fd' })
  " Required:
  call dein#end()
  call dein#save_state()
endif
" Required:
" filetype plugin indent on
  syntax enable
" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"/end dein Scripts/

"/begin dein settings/
" neocomplete and neosnippet settings"
" Vim起動時にneocompleteを有効にする
let g:neocomplete#enable_at_startup = 1
" smartcase有効化. 大文字が入力されるまで大文字小文字の区別を無視する
let g:neocomplete#enable_smart_case = 1
" 3文字以上の単語に対して補完を有効にする
let g:neocomplete#min_keyword_length = 3
" 区切り文字まで補完する
let g:neocomplete#enable_auto_delimiter = 1
" " 1文字目の入力から補完のポップアップを表示
let g:neocomplete#auto_completion_start_length = 1
" バックスペースで補完のポップアップを閉じる
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
" " エンターキーで補完候補の確定. スニペットの展開もエンターキーで確定
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
" " タブキーで補完候補の選択. スニペット内のジャンプもタブキーでジャンプ
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
" vim-clang-format settings"
autocmd FileType c ClangFormatAutoEnable
autocmd FileType cpp ClangFormatAutoEnable
"nerdtree settings"
nnoremap <silent><C-e> :NERDTreeToggle<CR>
"autocmd VimEnter * execute 'NERDTree'
"silent! map <C-a> :NERDTreeFind<CR>
"let g:NERDTreeMapActivateNode="<C-a>"
"/end dein settings/

"/NeoBundle Scripts/
if &compatible
	set nocompatible               " Be iMproved
endif
" Required:
set runtimepath^=~/.vim/bundle/neobundle.vim/
" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'Yggdroot/indentLine'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"/End NeoBundle Scripts/





"/begin permanently fixed/
"挙動をvi互換ではなく,Vim のデフォルト設定にする
set nocompatible
" バックアップファイルを作らない
set nobackup
" ファイルを上書きする前にバックアップを作ることを無効化
set nowritebackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 行番号を表示
set number
"文法に基づく色分け
syntax on
" 括弧入力時の対応する括弧を表示
set showmatch
" 入力中のコマンドをステータスに表示する
set showcmd
"colorをmolokaiに設定
colorscheme molokai
set t_Co=256
" 行をまたいで移動
set whichwrap=b,s,h,l,<,>,[,],~
" バッファスクロール
set mouse=a
" 現在の行を強調表示
set cursorline
" 現在の列を強調表示
set cursorcolumn
" エラーメッセージの表示時にビープを鳴らさない
set noerrorbells
" 行末の1文字先までカーソルを移動できるように
"set virtualedit=onemore
" コマンドラインの補完
set wildmode=list:longest
"ファイル名表示
set statusline=%F
" 変更チェック表示
set statusline+=%m
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" これ以降は右寄せ表示
set statusline+=%=
" file encoding
set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
"なぜかinsert modeでバックスペースが効かなくなったときに入れた
set backspace=indent,eol,start
"yyなどでヤンクしたものをブラウザで貼り付けとかできるように
set clipboard=unnamed,autoselect
"/end permanently fixed/

"/文字コードの設定/
"set fileencoding=utf-8 " 保存時の文字コード
set fileencoding=utf-8
"set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決

"/検索機能設定/
set ignorecase " 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase " 検索文字列に大文字が含まれている場合は区別して検索する
set incsearch " インクリメンタルサーチ. １文字入力毎に検索を行う
set wrapscan " 検索時に最後まで行ったら最初に戻る
set hlsearch " 検索語をハイライト表示
" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

"/コピペしたときに自動インデント機能がバグるのを防止/
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
endif

"/タブとインデント/
" Tab文字を半角スペースにする
"set expandtab
set autoindent " 改行時に前の行のインデントを継続する
set tabstop=2 " 行頭以外のTab文字の表示幅（スペースいくつ分）
set shiftwidth=2 " 行頭でのTab文字の表示幅
"タブは>>-,行末のスペースは---で,改行位置は↲ で表示
set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%
set smartindent " インデントはスマートインデント

"/全角スペースをハイライト表示/
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif

"/verilog enabling jump between blocks/
:source $VIMRUNTIME/macros/matchit.vim
