# docker-compose run
--template typescript: typescriptをインストールする
--rm: コンテナを起動後に削除する
sh -c: コンテナ起動後に時効するコマンド

```
docker-compose run --rm front sh -c 'npx create-react-app react-app --template typescript'
```

```
docker compose --file docker-compose.yml up -d
```

- docker-compose.ymlファイルを利用してコンテナを起動
- 「npx create-react-app react-app --template typescript」を実行
1. react-appというreactのプロジェクトを作成
2. typescriptをインストールする
- コンテナを削除

## 最初だけ
reactプロジェクトの作成(public, srcディレクトリ)
package.json(package-lock.json)の作成

## 他
node_modulesが必要
npm install