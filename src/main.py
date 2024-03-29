from fastapi import FastAPI

app = FastAPI()


@app.get("/")
def read_root():
    return {"Hello": "World"}


def main():
    import uvicorn

    uvicorn.run(app, host="0.0.0.0")
