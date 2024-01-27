FROM python:3.9

RUN pip install pandas
RUN pip install pyarrow

WORKDIR /app
COPY pipeline.py pipeline.py

docker run -it \

  -e POSTGRES_USER="root" \

  -e POSTGRES_PASSWORD="root" \

  -e POSTGRES_DB="ny_taxi" \

  -v "./ny-taxi-volume:/var/lib/postgresql/data" \

  -p 5432:5432 \

  postgres:13

ENTRYPOINT [ "bash" ]