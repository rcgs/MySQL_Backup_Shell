# MySQL_Backup_Shell
MySQLのバックアップを.sqlの形式で作成するShell。
cronを使って定期実行するように設定してください。
`openssl`を用いてパスワードを暗号化しています。
変数の中身を環境に応じて書き換えてから使ってください。


##使い方
`PASS.txt`を作成する。内容はMySQLのパスワード。
`openssl`を用いて`PASS.txt`を暗号化したファイル`PASS.rsa`を作成する。
`PASS.ras`を復号してパスワードとして用いる。
詳細は参考URLの通り。

参考URL　http://auewe.hatenablog.com/entry/2014/04/14/213319
