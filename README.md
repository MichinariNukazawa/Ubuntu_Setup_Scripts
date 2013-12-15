
Ubuntuを自分が使いやすいよう設定するスクリプト群です。  


##add_bashrc.sh

bashrcの設定ファイルに追記します。  

 * historyコマンドに対して、実行日時を記録するオプションほかを設定


##add_shortcut.sh

Ubuntuデスクトップ環境にカスタムショートカットを設定します(Ubuntu12.04)  
[Suspend][]
[PrintScreen][]

 * サスペンド(CTRL+ALT+SHIFT+L)
 * スクリーンショットの5秒タイマー撮影(Super+PrintScreen)


##add_vimrc.sh

vimrcの設定ファイルに追記します  

 * オートインデント
 * シンタックスおよび空白文字の表示
 * split時のファイル名補完の挙動を変更
 * その他


##samba_useradd.sh

Sambaサーバにアクセス可能なユーザを追加します  

引数などはスクリプト本体を参照してください  
注意：最低限の引数チェックしかしていないので、  
	問題発生時に対処できない場合は参考に留めてください。  


##add_login_autostart.sh

いくつかのアプリケーションを、ログイン時に自動起動するよう設定します  

実体は「自動起動するアプリケーション」(gnome-session-properties)による設定と
同じ設定ファイルの作成です  


[PrintScreen]: http://blog.michinari-nukazawa.com/2013/12/different-method-screenshot-printscreen.html "PrintScreen"
[Suspend]: http://blog.michinari-nukazawa.com/2013/12/add-suspend-shortcut-ubuntu12-04.html "Suspend"

