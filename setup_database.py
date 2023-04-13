DATABASE_URL = "your_db_url"

import psycopg2 ## takes awhile to install

conn = psycopg2.connect(DATABASE_URL)

cur = conn.cursor()

cur.execute("SELECT * FROM Customer;")

customers = cur.fetchall()
## do this if you want to stand up your own database.
# f = open("schema.sql")
# cur.execute(f.read())