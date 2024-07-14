# 第六回課題

## AWSの利用記録をCloudTrailのイベント履歴から探し出す

### イベント名：ConsoleLogin
 ![event](/image/lecture06/picture1.png)
### 含まれている内容3つをピックアップ
  - eventTime: 2024-07-13T00:19:32Z
  - eventSource: signin.amazonaws.com
  - eventName: ConsoleLogin
### イベントレコード
  ![eventrecord](/image/lecture06/picture2.png)

## CloudWatchアラームを使ってALBのアラームを設定しメール通知を確認

### アラームとアクションを設定した状態で動作確認
  - Railsアプリケーションが使える状態の時：OK状態のメールが届く
  ![okmail](/image/lecture06/picture3.png)
 
  - Railsアプリケーションが使えない状態の時：Alarm状態のメールが届く
  ![alarmmail](/image/lecture06/picture4.png)

## 今日までに作成したAWSリソースの利用料の内容を見積もる（URLで共有）

 - 見積は[こちら](https://calculator.aws/#/estimate)


## マネジメントコンソールから、現在の利用料を確認
 - パブリックIPアドレスの使用が無料枠を超えていたためVPCの料金が発生している。
 - EC2は無料枠内で使用できており料金は発生しなかった。
 ![利用料](/image/lecture06/picture5.png)
 ![利用料内訳](/image/lecture06/picture6.png)

## 感想
 - 問題が発生した際の原因はログを取得することで判明する場合もあるため、ログの重要性を感じました。
 - コスト管理について確認することで自分の無駄な出費を認識することが出来ました。