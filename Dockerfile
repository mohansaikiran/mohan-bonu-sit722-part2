# Dockerfile for book_catalog microservice

FROM python:3.11-slim
WORKDIR /app/book_catalog
COPY ./book_catalog/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY ./book_catalog /app/book_catalog
EXPOSE 8000
ENV DATABASE_URL = postgresql://books_cm6w_user:QIcpppD0z4oa49ZOCl4l1wv6e8SSxhT8@dpg-cr8klstsvqrc739bhp50-a.oregon-postgres.render.com/books_cm6w
CMD [ "uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000" ]
