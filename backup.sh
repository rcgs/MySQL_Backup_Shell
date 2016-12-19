#!/bin/sh
#!/bin/ibash

#保存先のパス
dirpath=/Users/tsukasa/Desktop/GAP/mysql_backup

#バックアップファイルの名前
filename=backup`date "+%Y%m%d_%H%M"`

#ユーザー名
user=#MySQLのユーザー名

#パスワード
password=$(openssl rsautl -decrypt -inkey ~/.ssh/id_rsa -in PASS.rsa)

#データベース名
dbname=#データベース名
#ダンプの実行
mysqldump --opt -u $user --password=$password $dbname > $dirpath/$filename.sql


