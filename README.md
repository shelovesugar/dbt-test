# __dbt__ test project

### How to run
0. Clone repo `git clone https://github.com/shelovesugar/dbt-test`
1. Download Docker PostgreSQL image: `docker pull postgres`
2. Run container with postgres db: `docker run --name postgres-db -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`
3. Install dbt-core dbt-postgres packages: `pip install dbt-core dbt-postgres`
5. Go to dbt project root: `cd dbt-test\dbt_project`
6. Import csv to db (dbt_project/seeds): `dbt seed`
7. Run dbt models (dbt_project/models): `dbt run`
8. Print result: `docker exec -it postgres-db psql -U postgres -d postgres -c 'SELECT * FROM country_ranking'`