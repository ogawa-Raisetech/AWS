# 第11回課題
## 課題内容
* ServerSpecを使用してサーバーに対して自動テストを実施し成功させる
* テスト定義には指示された内容はないため、任意で決めた内容を設定して良い

## 学習内容
### EC2へServerSpecをインストール
```
$ gem install serverspec  
$ mkdir serverspec  
$ cd serverspec 

# /home/ec2-user/serverspec/ に ServerSpec をインストール
$ serverspec-init

Select OS type:

  1) UN*X
  2) Windows

Select number: 1

Select a backend type:

  1) SSH
  2) Exec (local)

Select number: 1

Vagrant instance y/n: n

# テストするサーバのホスト名を任意で入力
Input target host name: target
```
/home/ec2-user/serverspec内にディレクトリ、ファイルが自動作成される。
```
severspec/
├─ spec
│  ├─ target
│  │  └─ sample_spec.rb
│  └─ spec_helper.rb
├─ Rakefile
└─ .rspec
```

### テスト内容の設定
[sample_spec.rb](/ServerSpec/sample_spec.rb)へテスト内容を記載
```rb
require 'spec_helper'

listen_port = 80

# Mysqlバージョン確認
describe command('mysql --version') do
  its(:stdout) { should match /mysql\s+Ver\s+8\.4\.2/ }
end

# Nginxインストール確認
describe package('nginx') do
  it { should be_installed }
end

# Nginx起動確認
describe service('nginx') do
  it { should be_running }
end

# gitインストール確認
describe package('git') do
  it { should be_installed }
end  

# ユーザが指定のグループに所属しているか確認
describe user('ec2-user') do
  it { should belong_to_group 'ec2-user' }
end

# 指定のportでlistenしているか
describe port(listen_port) do
  it { should be_listening }
end

# 指定されたURLに対してHTTPリクエストを送信し、レスポンスのHTTPステータスコードが200（成功）であることを確認
describe command('curl http://127.0.0.1:#{listen_port}/_plugin/head/ -o /dev/null -w "%{http_code}\n" -s') do
  its(:stdout) { should match /^200$/ }
end
```

### 実行結果
rake specでテストの実行が成功したことを確認
 ![実行結果](/image/lecture11/picture2.png)
 ![実行結果](/image/lecture11/picture1.png)

### 感想
* 手動で実施すると手間のかかるテスト内容を簡単に実施できるのは効率が良いと感じました。