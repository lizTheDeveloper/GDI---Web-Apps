## Please note: Usually you want to use Environment Secrets for this, but .env files won't fork properly in repl.it (because they shouldn't, normally)
## I have included the .sql files so you can stand up your own database. https://Thin.dev provides free cloud databases.
## https://www.psycopg.org/docs/usage.html - link to the docs for python

DATABASE_URL = "postgresql://ViJTKnrYdrCTQbogshiJDtppwZidnRrP:NMEGIqMAwUJkiEQSzIFhzTLyZwbTWxdQ@db.thin.dev/43e1dc43-96f8-4483-91d2-3cfddf84d88c"

import psycopg2 ## takes awhile to install

conn = psycopg2.connect(DATABASE_URL)

cur = conn.cursor()

cur.execute("SELECT * FROM Customer;")

customers = cur.fetchall()

customer_index = {}

for customer in customers:
  print(customer)
  customer_index[customer[0]] = {
    "name" : customer[1],
    "id": customer[0],
    "product_total": 0
  }


# -- Problem 1: how many products has each customer purchased - get the total quantity of products purchased per customer

# -- how many orders has each customer made?
cur.execute("SELECT Customer_ID,Orders.Order_ID, SUM(Order_Products.Quantity) FROM Orders JOIN Order_Products ON Order_Products.Order_ID = Orders.Order_ID GROUP BY Customer_ID,Orders.Order_ID;")

orders = cur.fetchall()
for order in orders:
  customer_index[order[0]]["product_total"] += order[2]


for customer in customer_index.keys():
  print(customer_index[customer])

import json
from flask import Flask, request, jsonify
## create a Flask server
app = Flask(__name__)


@app.route('/')
def hello():
  return 'Hello World!!!!!!!'

@app.route('/customers')
def customers():
  ## get all customers from the database
  cur.execute("SELECT * FROM Customer;")
  customers = cur.fetchall()
  return jsonify(customers=customers)

@app.route('/customers/<customer_id>')
def customer(customer_id):
  ## get a specific customer from the database
  cur.execute("SELECT * FROM Customer WHERE Customer_ID = %s;", (customer_id,))
  customer = cur.fetchone()
  return jsonify(customer=customer)

@app.route('/products')
def products():
  ## get all products from the database
  cur.execute("SELECT * FROM Product;")
  products = cur.fetchall()
  return jsonify(products=products)
  
@app.route('/products/<product_id>')
def product(product_id):
  ## get a specific product from the database
  cur.execute("SELECT * FROM Product WHERE Product_ID = %s;", (product_id,))
  product = cur.fetchone()
  return jsonify(product=product)

@app.route('/orders')
def orders():
  ## get all orders from the database
  cur.execute("SELECT * FROM Orders;")
  orders = cur.fetchall()
  return jsonify(orders=orders)
  
@app.route('/orders/<order_id>')
def order(order_id):
  ## get a specific order from the database
  cur.execute("SELECT * FROM Orders WHERE Order_ID = %s;", (order_id,))
  order = cur.fetchone()
  return jsonify(order=order)
  
@app.route('/orders/<order_id>/products')
def order_products(order_id):
  ## get all products from the database
  cur.execute("SELECT * FROM Order_Products WHERE Order_ID = %s;", (order_id,))
  products = cur.fetchall()
  return jsonify(products=products)




if __name__ == '__main__':
  app.run(host='0.0.0.0', port=8080)