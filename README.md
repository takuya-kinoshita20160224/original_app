# 賞味期限管理アプリ
## Best Before
  ![Best_Before](https://user-images.githubusercontent.com/68414493/92594032-2626e980-f2dd-11ea-925b-b45bd6aebd1e.png)
## アプリ概要

 ### 開発環境

 - Ruby 6.0.0
 - Ruby On Rails
 - javascript
 - mysql
 - VSCode (Visual Studio Code)

 ### git clone 
  - git clone https://github.com/takuya-kinoshita/original_app.git

### アプリURL 
- https://original-app-28435.herokuapp.com/

### Basic認証
- id: takuyakinoshita
- password: 20160224

### テスト用アカウント
- email: kinoshita@gmail.com
- password: kino1116

### DB設計
- ![ER図](https://user-images.githubusercontent.com/68414493/92547469-e84fa400-f28f-11ea-8b37-2673870ddbde.png)

## 利用方法

### トップ画面
![Best Before](https://user-images.githubusercontent.com/68414493/92594032-2626e980-f2dd-11ea-925b-b45bd6aebd1e.png)
1. ユーザー登録・ログイン

  - 新規登録画面から必要事項を入力しユーザー登録を行います。
  ![signup](https://user-images.githubusercontent.com/68414493/92548573-56956600-f292-11ea-9d52-e9515aeef3b2.png)

  - ログイン画面から必要事項を入力しログインしてください
  ![login](https://user-images.githubusercontent.com/68414493/92594220-71d99300-f2dd-11ea-851d-3ec8631e3270.png)

  - マイページボタンからマイページへ進んで下さい
  ![mypage](https://user-images.githubusercontent.com/68414493/92594271-83bb3600-f2dd-11ea-8a33-822f37bbaa4d.png)

 ### マイページ
 
 - 期限が近い商品が上から順に一覧で表示されます
 - 期限までの日数が表示されます
 - 期限までの日数によって状態が変化します
![topview](https://user-images.githubusercontent.com/68414493/92547531-04ebdc00-f290-11ea-98cb-4b6fe262baf7.png)

2. 商品登録

  - 商品登録ボタンから、必要事項を入力し商品を登録します。
  - 登録された商品はトップ画面で表示されます。
  - 一覧画面の商品名のところから、編集・削除を行うことができます。
  ![newentry](https://user-images.githubusercontent.com/68414493/92548606-6c0a9000-f292-11ea-9683-d57759f3ac23.png)

3. 検索機能

  - 検索フォームに入力した文字を含む商品のみを表示させることができます
  ![search](https://user-images.githubusercontent.com/68414493/92548748-c572bf00-f292-11ea-95b8-ac91f2098092.png)

4. 多言語対応

  - 言語ボタンから日本語、英語、中国語の切り替えが可能です
  ![English](https://user-images.githubusercontent.com/68414493/92548642-880e3180-f292-11ea-8597-567334b40fb2.png)
  ![中文](https://user-images.githubusercontent.com/68414493/92548678-a07e4c00-f292-11ea-9a31-04e2d503d9be.png)

## アプリ作成までの経緯

### 自身の経験からこのアプリを作成しました。

  - 我が家では食品や調味料の賞味期限を切らしてしまい、捨ててしまうことが  
    少なくありませんでした。  
    賞味期限は商品に記載されている為、使用する時以外確認することがあまりありません。  
    そこで賞味期限を一括で管理できる物があれば便利と思いこのアプリを作成することに決めました。

 ### 工夫した点

  - 見た目にわかりやすいアプリを意識しました。
  - 誰でも使用できる使いやすいアプリを意識しました。

  ### 課題・今後の実装実装したい機能

  - 多言語対応機能はまだ未完成なので今後の課題として改善していきます
  - JavaScriptのserviceWorkerを使用したpush通知機能は今後実装を考えています
