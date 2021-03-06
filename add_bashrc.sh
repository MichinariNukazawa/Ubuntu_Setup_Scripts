#!/bin/bash



#下記UUIDの有無にて、本設定が追記済みであるか判定する
UUID=14a93b55-eb34-4ea3-9374-9de99a8df20d
if [ 0 -ne $(cat ~/.bashrc | grep ${UUID} | wc -l) ] ; then
	echo -e "already written. exit."
	exit
fi

cat << _EOF_ >> ~/.bashrc

#header: writen by "$(basename $0)" script.

#下記UUIDの有無にて、本設定が追記済みであるか判定する
#${UUID}


# http://d.hatena.ne.jp/takami_hiroki/20101018/p1

#historyの保存結果に日時情報を追加
export HISTTIMEFORMAT='%F %T '

#historyの保存件数を増やす
export HISTSIZE=10000

#historyの記録対象から除外
export HISTIGNORE=ls:history


#footer: writen by "$(basename $0)" script.

_EOF_

