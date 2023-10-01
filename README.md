## Тестовый проект dbt

### How to run
1. `docker pull postgres`
2. `docker run --name postgres-db -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`
3. `pip install dbt-core dbt-postgres`
4. `cd dbt_project`
5. `dbt run`