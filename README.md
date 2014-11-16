RequestEcho
===========

来たリクエストをechoするだけの超便利なウェブサーバ（coffeescript）

* なんかのテストに使うと便利な気がします
* POSTリクエストはPOSTされた内容も出します
* それ以外はリクエストされたURLを出します
    + GETとPOST以外はあんまり考えてません

### 必要条件

* coffee script あれば動くはずです

### 実行例

* 実行するとデフォルトだと3000番で起動します
* ブラウザから繋ぐと「GET」と「POST」のサブミットボタンがあるので、ぽちぽち押して試してみてください
* URL自体は何も見ずに捨ててるので、どこにアクセスしても大丈夫です

```
$ coffee server.coffee
------ server start ------
GET  /
POST / (arg=POST)
GET  /?arg=GET
GET  /asdf/foobar
POST /asdf/foobar (arg=POST)
GET  /asdf/foobar?arg=GET
^C------ GOOD LUCK ------
```
