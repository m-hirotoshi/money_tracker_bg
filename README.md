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
$ create database expense_tracker;
$ \q
$ psql -d expense_tracker -f docs/expense_tracker.sql
$ devbox services stop
```