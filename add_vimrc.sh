#!/bin/bash

#下記UUIDの有無にて、本設定が追記済みであるか判定する
UUID=14a93b55-eb34-4ea3-9374-9de99a8df20d

#既に設定ファイルが存在する場合
if [ -f ~/.vimrc ] ; then

	#UUIDの有無にて、本設定が追記済みであるか判定する
	if [ 0 -ne $(cat ~/.vimrc | grep ${UUID} | wc -l) ] ; then
		echo -e "already written. exit."
		exit
	fi

fi

#Vimの設定を行う。
cat << _EOF_ >> ~/.vimrc

"header: writen by "$(basename $0)" script.

"下記UUIDの有無にて、本設定が追記済みであるか判定する
"${UUID}


" http://qiita.com/tetsuya/items/75987487ffac42250d3b
set number		"行番号を表示する
set title		"編集中のファイル名を表示
set showmatch	"括弧入力時の対応する括弧を表示
syntax on		"コードの色分け
set tabstop=4	"インデントをスペース4つ分に設定


" http://blog.blueblack.net/item_110
"新しい行のインデントを現在行と同じにする
set autoindent

"タブ文字、行末など不可視文字を表示する
set list

"listで表示される文字のフォーマットを指定する
"set listchars=eol:$,tab:>\ ,extends:<
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:¬

"行番号を表示する
set number

"シフト移動幅 
"(tabstopと合わせておく)
set shiftwidth=4

"閉じ括弧が入力されたとき、対応する括弧を表示する
set showmatch

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

"行頭の余白内で Tab を打ち込むと、'shiftwidth' の数だけインデントする。
set smarttab


" http://d.hatena.ne.jp/thinca/20111204/1322932585
" タブページを常に表示
set showtabline=2


" http://boscono.hatenablog.com/entry/2013/11/17/230740
"ファイル名補完 (挙動が変わる)
"「:split」などで複数ファイルを開く際などにTABで行う補完の挙動を変更する
set wildmode=list:longest,full


"新しい行を作ったときに自動インデントを行う
set autoindent


"footer: writen by "$(basename $0)" script.

_EOF_

