# 第10回課題
##  課題内容
- 第5回課題で構築した以下構成図をCloudFormationで構築する
![構成図](image/lecture10/picture1.png)

##  作成したテンプレートファイル
- [VPC.yml](yml/VPC.yml)
- [EC2.yml](yml/EC2.yml)
- [ALB.yml](yml/ALB.yml)
- [RDS.yml](yml/RDS.yml)
- [S3.yml](yml/S3.yml)
  
##  CloudFormationのスタック作成結果
![CloudFormation](image/lecture10/picture3.png)

##  EC2からRDSへの接続確認
![接続確認](image/lecture10/picture2.png)
  
## 感想
- テンプレートを1つにまとめる場合と分ける場合それぞれ良さがあると思うのでどちらでも対応できるようにしていきたいと思います。
- 一度テンプレートを作成することが出来ればかなり時短になるので、CloudFormationは良いサービスだと感じました。