## Тестовый проект dbt

### How to run
1. `docker pull postgres`
2. `docker run --name postgres-db -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`
3. `pip install dbt-core dbt-postgres`
5. `cd dbt_project`
6. `dbt seed`
7. `dbt run`
8. Напечатать результат: `docker exec -it postgres-db psql -U postgres -d postgres -c 'SELECT * FROM country_ranking'`