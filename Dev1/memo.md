#rubyの環境構築
docker image build -t ruby/server:latest .

docker container run -it -p 8000:8000 --name rubyWEB -v ${PWD}/src:/app ruby/server:latest

##　Gemfileの中身をインストール
前提：bash内にて実行する
・bundle installのインストール先を指定する
bundle config -local set path 'vendor/bundle'

・Gemfileのライブラリをインストール
bundle install
