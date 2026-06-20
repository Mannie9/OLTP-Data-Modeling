-- Create Schema
CREATE SCHEMA IF NOT EXISTS OLTP_datamodelling;
USE OLTP_datamodelling;

-- ==========================
-- CUSTOMERS TABLE
-- ==========================
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(20),
    date_joined DATE
);

-- ==========================
-- STORE BRANCH TABLE
-- ==========================
CREATE TABLE store_branch (
    store_branch_id INT AUTO_INCREMENT PRIMARY KEY,
    store_branch_name VARCHAR(150) NOT NULL,
    store_branch_location VARCHAR(255)
);

-- ==========================
-- PRODUCTS TABLE
-- ==========================
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    category_id INT,
    price DECIMAL(10,2) NOT NULL,
    stock_qty INT DEFAULT 0
);

-- ==========================
-- ORDERS TABLE
-- ==========================
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME NOT NULL,
    total_amount DECIMAL(12,2) NOT NULL,
    store_branch_id INT NOT NULL,

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id),

    CONSTRAINT fk_orders_store_branch
        FOREIGN KEY (store_branch_id)
        REFERENCES store_branch(store_branch_id)
);

-- ==========================
-- PAYMENTS TABLE
-- ==========================
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_method VARCHAR(50),
    payment_amount DECIMAL(12,2) NOT NULL,
    payment_status VARCHAR(50),
    transaction_status VARCHAR(50),

    CONSTRAINT fk_payments_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);

-- ==========================
-- SHIPMENTS TABLE
-- ==========================
CREATE TABLE shipments (
    shipment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    shipping_carrier VARCHAR(100),
    tracking_number VARCHAR(255),
    shipment_status VARCHAR(50),
    estimated_delivery_date DATE,

    CONSTRAINT fk_shipments_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id)
);

-- ==========================
-- ORDER ITEMS TABLE
-- ==========================
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    qty INT NOT NULL,
    line_amount DECIMAL(12,2) NOT NULL,

    CONSTRAINT fk_orderitems_order
        FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    CONSTRAINT fk_orderitems_product
        FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);