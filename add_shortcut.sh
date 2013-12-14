#!/bin/bash
#キーボードショートカット設定スクリプト

#カスタムショートカットキーの設定パス
KEY_BASE="/desktop/gnome/keybindings"

#add_shortcutに設定値を渡すための変数
NAME=""
BINDING=""
ACTION=""

#ショートカットを登録する関数
#既存の設定を上書きしないよう、空き番号を探す
function add_shortcut(){
	NUM=-1	#ループ先頭でインクリメントされてゼロになる
	LEN=1	#ループに突入するためにゼロでない値を入れておく
	while [ 0 -ne ${LEN} ]
	do
		NUM=$((NUM+1))	#インクリメント
		KEY="${KEY_BASE}/custom${NUM}"
		LEN=$( gconftool-2 --get "${KEY}/name" 2> /dev/null | wc -l )
	done
	echo "key:${KEY}"

	#設定を行う前にGConfデーモンを終了させる
	#(終了しておかないと、デスクトップ設定が壊れて戻らなくなる場合がある)
	gconftool-2 --shutdown
	#設定を実行
	gconftool-2 -t str --set "${KEY}/name"    "${NAME}"
	gconftool-2 -t str --set "${KEY}/binding" "${BINDING}"
	gconftool-2 -t str --set "${KEY}/action"  "${ACTION}"
}



#サスペンドのショートカットを登録
NAME="サスペンド"
BINDING="<CTRL><SHIFT><ALT>l"
ACTION='dbus-send --system --print-reply --dest="org.freedesktop.UPower" /org/freedesktop/UPower org.freedesktop.UPower.Suspend'
add_shortcut

#タイマー撮影のショートカットを登録
NAME="タイマー撮影でスクリーンショットを撮る"
BINDING="<Super>Print"
ACTION='gnome-screenshot --delay=5'
add_shortcut

