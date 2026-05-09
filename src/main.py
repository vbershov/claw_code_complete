from fastapi import FastAPI

app = FastAPI(title="Base Orchestration Project")

@app.get("/")
async def root():
    return {"message": "Welcome to the Agent Orchestration System"}

@app.get("/status")
async def status():
    return {"status": "operational", "version": "0.1.0"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=8000)
