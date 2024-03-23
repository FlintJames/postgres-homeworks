"""Скрипт для заполнения данными таблиц в БД Postgres."""
import csv
import psycopg2

with psycopg2.connect(
        host="localhost",
        database="north",
        user="postgres",
        password="12345"
) as connection:

    with connection.cursor() as cursor:
        with open('north_data\\employees_data.csv') as csv_file:
            header = next(csv_file)
            csv_reader = csv.reader(csv_file)
            for row in csv_reader:

                query = """INSERT INTO employees 
                VALUES (%s, %s, %s, %s, %s, %s)"""

                cursor.execute(query, row)

connection.close()