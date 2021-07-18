------------------------ 2 ----------------------------
CREATE TABLE customers(
    id INT NOT NULL, 
    customer_name VARCHAR(50),
    customer_phone VARCHAR(20) UNIQUE,
    PRIMARY KEY(id) 
    );

CREATE TABLE orders(
    id INT NOT NULL, 
    order_date date,
    customer_id INT,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers (id),
    PRIMARY KEY(id) 
    );

CREATE TABLE order_details(
    id INT NOT NULL,
    order_id INT,
    item_id INT,
    quantity INT,
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders (id),
    CONSTRAINT fk_item_order FOREIGN KEY (item_id) REFERENCES items (id),
    PRIMARY KEY(id) 
    );

------------------------ 3 ----------------------------

INSERT INTO customers VALUES (1,'Ariel','+6202840921490'),(2,'Mickey','+6292479249429'),(3,'Mulan','+62324628746823'),(4,'Pocahontas','+626482648917291'),(5,'Aurora','+6289624816912');

INSERT INTO orders VALUES (1,'20201010',5),(2,'20201001',1),(3,'20201009',1),(4,'20201005',3),(5,'20211002',2),(6,'20190405',3),(7,'20190908',4),(8,'20190603',1),(9,'20201010',2),(10,'20190908',3);

INSERT INTO order_details VALUES (1,5,2,10),(2,4,3,12),(3,1,4,8),(4,7,2,9),(5,5,5,7),(6,2,8,2),(7,2,2,33),(8,4,7,12);

------------------------ 4 -----------------------------

SELECT MIN(orders.id) AS order_id, orders.order_date, MIN(customers.customer_name) AS customer_name, MIN(customers.customer_phone) AS customer_phone,  SUM(quantity*items.price) AS total_price, GROUP_CONCAT(items.name) AS item_bought
FROM order_details 
LEFT JOIN orders
ON orders.id = order_details.order_id
LEFT JOIN customers
on customers.id = orders.customer_id
INNER JOIN items
on order_details.item_id = items.id
GROUP BY orders.order_date;