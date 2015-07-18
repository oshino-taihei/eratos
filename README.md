# eratos

## エラトステネスのふるいを実装する
「エラトステネスのふるい」とは、指定された整数以下のすべての素数を発見するためのアルゴリズムです。
https://ja.wikipedia.org/wiki/エラトステネスの篩

## 問題
以下のように、与えられた整数から素数の列を返すプログラムを作成してください。アルゴリズムについては上記のWikipediaの情報を参考にコーディングしてください。

```ruby
$ ruby eratos.rb 30
2, 3, 5, 7, 11, 13, 17, 19, 23, 29
```
## セットアップ
```
$ git clone https://github.com/oshino-taihei/eratos.git
$ gem install bundler
$ rbenv local 2.1.1
$ bundle install
```
