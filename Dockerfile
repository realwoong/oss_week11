FROM python:3.9

WORKDIR /app

COPY . /app

RUN apt-get update && \
    pip3 install --no-cache-dir fastapi==0.110.3 && \
    pip3 install --no-cache-dir 'uvicorn[standard]'

EXPOSE 80

ENV STUDENT_ID 2016314590

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
