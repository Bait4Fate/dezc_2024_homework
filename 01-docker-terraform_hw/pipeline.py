winpty docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v /e/dev//dezc_2024/dezc_2024_homework/01-docker-terraform_hw/ny_taxi_postgres_data/...:/var/lib/postgresql/data \
  -p 5432:5432 \
  postgres:13

E:\Dev\DEZC_2024\dezc_2024_homework\01-docker-terraform_hw

winpty docker run -it \
  -e POSTGRES_USER="root" \
  -e POSTGRES_PASSWORD="root" \
  -e POSTGRES_DB="ny_taxi" \
  -v "E:\Dev\DEZC_2024\dezc_2024_homework\01-docker-terraform_hw/ny_taxi_postgres_data:/var/lib/postgresql/data" \
  -p 5432:5432 \
  postgres:13

docker run -it \
  -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
  -e PGADMIN_DEFAULT_PASSWORD="root" \
  -p 8080:80 \
  dpage/pgadmin4