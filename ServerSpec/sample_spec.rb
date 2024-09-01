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
