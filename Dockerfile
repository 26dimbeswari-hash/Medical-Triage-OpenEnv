FROM python:3.10-slim

WORKDIR /app

# Copy all files into the container
COPY . .

# Install dependencies
RUN pip install fastapi uvicorn pydantic openai

# Expose the port (Hugging Face uses 7860 by default)
EXPOSE 7860

# Run the server on port 7860
CMD ["python", "server/app.py"]
