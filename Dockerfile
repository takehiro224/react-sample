# ベースイメージを指定
FROM node:20.13.1-bullseye

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# プロジェクトの依存関係をインストール
RUN \
    if [ -f "./app/react-app/package.json" ]; then \
        cp ./app/react-app/package.json ./react-app/package.json; \
    fi
RUN \
    if [ -f "./app/react-app/package-lock.json" ]; then \
        cp ./app/react-app/package.json ./react-app/package-lock.json; \
    fi
RUN \
    if [ -f "./app/react-app/package.json" ]; then \
        cd react-app && npm install; \
    fi