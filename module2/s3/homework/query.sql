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
    CONSTRAINT fk_order FOREIGN KEY (order_id) REFERENCES orders (id),
    CONSTRAINT fk_item_order FOREIGN KEY (item_id) REFERENCES items (id),
    PRIMARY KEY(id) 
    );

------------------------ 3 ----------------------------

INSERT INTO customers VALUES (1,'Ariel','+6202840921490'),(2,'Mickey','+6292479249429'),(3,'Mulan','+62324628746823'),(4,'Pocahontas','+626482648917291'),(5,'Aurora','+6289624816912');

INSERT INTO orders VALUES (1,'20201010',5),(2,'20201001',1),(3,'20201009',1),(4,'20201005',3),(5,'20211002',2),(6,'20190405',3),(7,'20190908',4),(8,'20190603',1);

INSERT INTO order_details VALUES (1,5,2),(2,4,3),(3,1,4),(4,7,2),(5,5,5),(6,2,8),(7,2,2),(8,4,7);