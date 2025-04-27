# money_tracker_bg

## 環境構築
### devboxのインストール
```sh
$curl -fsSL https://get.jetpack.io/devbox | bash
```

### プロジェクト作成
- GitHubでリポジトリを作成
- リポジトリをクローンする: `git clone <repository-url>`
- プロジェクトのディレクトリに移動し、`git flow init`
- devbox環境作成: `devbox init`

### Pythonインストール
- プロジェクトのディレクトリで以下のコマンドを実行する
```bash
$ devbox add python
$ devbox shell
$ python --version  → Python 3.13.1
$ devbox add python313Packages.pip
$ python -m venv venv
```
- devbox.jsonを変更する
```json
"init_hook": [
    ". .venv/bin/activate"
],
```

### PostgreSQLインストール
```bash
$ devbox add postgresql
$ initdb
$ devbox services up
$ psql postgres
$ create database money_tracker;
$ \q
$ psql -d money_tracker -f docs/money_tracker.sql
$  devbox services stop
```

### FAST API環境構築
- インストール
```bash
$ pip install fastapi uvicorn
```
- APIサーバの起動(main.pyのディレクトリで実行)
```bash
$ uvicorn main:app --reload
```
- Webブラウザで http://localhost:8000/ にアクセスする
