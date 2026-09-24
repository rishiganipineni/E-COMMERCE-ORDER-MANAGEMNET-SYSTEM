--DDL commands
--customer table
CREATE TABLE Customer (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  registration_date DATE DEFAULT (CURRENT_DATE)
);

-- Address Table
CREATE TABLE Address (
  address_id INT PRIMARY KEY,
  customer_id INT NOT NULL,
  street VARCHAR(200) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  pincode VARCHAR(10) NOT NULL,
  address_type VARCHAR(20) DEFAULT 'Home' CHECK (address_type IN ('Home', 'Office', 'Other')),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE CASCADE
);

-- Category Table
CREATE TABLE Category (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(100) NOT NULL UNIQUE,
  parent_category_id INT,
  FOREIGN KEY (parent_category_id) REFERENCES Category(category_id) ON DELETE SET NULL
);

-- Product Table
CREATE TABLE Product (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(200) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
  stock_quantity INT NOT NULL DEFAULT 0 CHECK (stock_quantity >= 0),
  category_id INT,
  FOREIGN KEY (category_id) REFERENCES Category(category_id) ON DELETE SET NULL
);

-- Orders Table
CREATE TABLE Orders (
  order_id INT PRIMARY KEY,
  customer_id INT NOT NULL,
  address_id INT NOT NULL,
  order_date DATE DEFAULT (CURRENT_DATE),
  order_status VARCHAR(30) DEFAULT 'Pending' CHECK (order_status IN ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled')),
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id) ON DELETE RESTRICT,
  FOREIGN KEY (address_id) REFERENCES Address(address_id) ON DELETE RESTRICT
);

-- Order_Item Table
CREATE TABLE Order_Item (
  item_id INT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  quantity INT NOT NULL CHECK (quantity > 0),
  unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price >= 0),
  FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE RESTRICT
);

-- Payment Table
CREATE TABLE Payment (
  payment_id INT PRIMARY KEY,
  order_id INT UNIQUE NOT NULL,
  payment_date DATE DEFAULT (CURRENT_DATE),
  amount DECIMAL(10,2) NOT NULL CHECK (amount >= 0),
  method VARCHAR(30) NOT NULL CHECK (method IN ('UPI', 'Card', 'NetBanking', 'COD')),
  status VARCHAR(20) DEFAULT 'Pending' CHECK (status IN ('Pending', 'Success', 'Failed')),
  transaction_id VARCHAR(100) UNIQUE NOT NULL,
  FOREIGN KEY (order_id) REFERENCES Orders(order_id) ON DELETE CASCADE
);


