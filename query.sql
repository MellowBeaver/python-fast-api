CREATE TABLE customers (
    id integer PRIMARY KEY AUTOINCREMENT,
    name varcar(200) NOT NULL);

CREATE TABLE store (
    id integer PRIMARY KEY AUTOINCREMENT,
    store_name varcar(200) NOT NULL);

CREATE TABLE orders (
    id integer PRIMARY KEY AUTOINCREMENT,
    customer_id integer,
    store_id integer,
    amount integer,
    FOREIGN KEY (store_id) REFERENCES store(id)
    FOREIGN KEY (customer_id) REFERENCES customers(id)
    ON DELETE CASCADE);

CREATE TABLE tickets (
    id integer PRIMARY KEY AUTOINCREMENT,
    order_id integer,
    FOREIGN KEY (order_id) REFERENCES Orders(id)
    ON DELETE CASCADE);