#!/bin/sh
#!/bin/ibash

#保存先のパス
dirpath=#フルパスで指定

#バックアップファイルの名前（現在は「backup年月日時分.sql」）
filename=backup`date "+%Y%m%d_%H%M"`

#MySQLのユーザー名
usname=#ユーザー名

#パスワード、opensslを用いて暗号化された「PASS.rsa」ファイルを参照する
password=$(openssl rsautl -decrypt -inkey ~/.ssh/id_rsa -in PASS.rsa)

#バックアップをとるデータベースの名前
dbname=#データベース名

#ダンピングの実行
mysqldump --opt -u $usname --password=$password $dbname > $dirpath/$filename.sql


