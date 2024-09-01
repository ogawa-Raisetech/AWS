# 第4回課題　　
## 課題内容
- VPC・EC2・RDSの作成
- パブリックサブネット内のEC2からプライベートサブネット内のRDSへ接続が可能か確認

## 学習内容
- VPC及びサブネットの構築

![image 1](/image/lecture04/VPC.png)

- EC2の作成  

![image 2](/image/lecture04/EC2-1.png)  
![image 3](/image/lecture04/EC2-2.png) 

- EC2のインバウンドルール  

![image 4](/image/lecture04/EC2-inbound-rule.png)  

- RDSの作成  

![image 5](/image/lecture04/RDS.png)

- RDSのインバウンドルール  

![image 6](/image/lecture04/RDS-inbound-rule.png)　　

- EC2からRDSの接続  

![image 7](/image/lecture04/ec2-to-rds.png)  

## 感想  
- どの順番でサービスを作成すれば効率よく構成できるかというところが難しかったです。
- エラーが発生した場合、仕組みを理解していないと修正するのに時間がかかるので気を付けないといけないと感じました。