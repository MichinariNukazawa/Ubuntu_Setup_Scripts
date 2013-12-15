
Ubuntuを自分が使いやすいよう設定するスクリプト群です。  


##add_bashrc.sh

bashrcの設定ファイルに追記します。  

 * historyに、実行日時を記録するオプションなどを追加


##add_shortcut.sh

Ubuntuデスクトップ環境にカスタムショートカットを設定します(Ubuntu12.04)  
[PrintScreen][]

 * サスペンド(CTRL+ALT+SHIFT+L)
 * スクリーンショットの5秒タイマー撮影(Super+PrintScreen)


##add_vimrc.sh

vimrcの設定ファイルに追記します  
[Suspend][]

 * オートインデント
 * シンタックスおよび空白文字の表示
 * split時のファイル名補完の挙動を変更
 * その他


##samba_useradd.sh

Sambaサーバにアクセス可能なユーザを追加します  

引数などはスクリプト本体を参照してください  
注意：最低限の引数チェックしかしていないので、  
	問題発生時に対処できない場合は参考に留めてください。  


[PrintScreen]: http://blog.michinari-nukazawa.com/2013/12/different-method-screenshot-printscreen.html "PrintScreen"
[Suspend]: http://blog.michinari-nukazawa.com/2013/12/add-suspend-shortcut-ubuntu12-04.html "Suspend"

