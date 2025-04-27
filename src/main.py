# main.py
from fastapi import FastAPI
from fastapi.responses import PlainTextResponse # 文字列をそのまま返すためにインポート

# FastAPIアプリケーションインスタンスを作成
app = FastAPI()

# ルートパス ("/") へのGETリクエストを処理するエンドポイントを定義
@app.get("/")
async def read_root():
    """
    ルートパスへのGETリクエストに対して "Hello World" の文字列を返します。
    """
    return {"message": "Hello World"}
