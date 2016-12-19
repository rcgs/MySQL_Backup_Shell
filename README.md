# MySQL_Backup_Shell
MySQLのバックアップを.sqlの形式で作成するShell
`openssl`を用いてパスワードを暗号化しています。

##使い方
`PASS.txt`を作成する。内容はMySQLのパスワード。
`openssl`を用いて`PASS.txt`暗号化したファイル`PASS.rsa`を作成する。
`PASS.ras`を復号してパスワードとして用いる。
詳細は参考URLの通り。
参考URL　http://auewe.hatenablog.com/entry/2014/04/14/213319
