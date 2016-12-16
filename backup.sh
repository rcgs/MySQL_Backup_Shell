#!/bin/sh
#!/bin/ibash

#保存先のパス
dirpath=/Users/tsukasa/Desktop/GAP

#バックアップファイルの名前
filename=backup`date "+%Y%m%d"`

#ダンプの実行
mysqldump --opt -u MySQLのユーザー名 --password=MySQLのパスワード backuptestdata > $dirpath/$filename.sql
