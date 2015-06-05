" タブ幅を設定
set tabstop=4

"タブを挿入する時の幅
set shiftwidth=4

set number	 "行番号の表示
set title 	 "編集中ファイルのタイトル表示
set showmatch	 "確固入力時の対応するの括弧表示
set smartindent

colorscheme elflord

set nocompatible
filetype plugin indent off

if has('vim_starting')
		  set runtimepath+=~/.vim/bundle/neobundle.vim
		    call neobundle#begin(expand('~/.vim/bundle'))
			endif 

			NeoBundleFetch 'Shougo/neobundle.vim'
			call neobundle#end()
" 以下は必要に応じて追加
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neosnippet.vim'

filetype plugin indent on

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
 
if has("lua")
		  NeoBundleLazy 'Shougo/neocomplete', { 'autoload' : {
		          \   'insert' : 1,
		          \ }}
  endif
   
  NeoBundleLazy 'Shougo/neosnippet', {
        \ 'autoload' : {
        \   'commands' : ['NeoSnippetEdit', 'NeoSnippetSource'],
        \   'filetypes' : 'snippet',
        \   'insert' : 1,
        \   'unite_sources' : ['snippet', 'neosnippet/user', 'neosnippet/runtime'],
        \ }}
   
  NeoBundle 'tpope/vim-rails', { 'autoload' : {
        \ 'filetypes' : ['haml', 'ruby', 'eruby'] }}
   
  NeoBundleLazy 'alpaca-tc/vim-endwise.git', {
        \ 'autoload' : {










