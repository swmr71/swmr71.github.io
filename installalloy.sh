# 必要なツールのインストール
sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget

# GPGキーの登録
sudo mkdir -p /etc/apt/keyrings
wget -q -O - https://apt.grafana.com/gpg.key | gpg --dearmor | sudo tee /etc/apt/keyrings/grafana.gpg > /dev/null

# リポジトリの追加
echo "deb [signed-by=/etc/apt/keyrings/grafana.gpg] https://apt.grafana.com stable main" | sudo tee /etc/apt/sources.list.d/grafana.list

# インストール
sudo apt-get update
sudo apt-get install alloy
