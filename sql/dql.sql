

   3. QUERY OPERATIONS (Q1 - Q21)
-- =========================================================================

-- 5.1 DQL – Basic Retrieval Queries
-- Q1: Retrieve all customer details who registered in or after the year 2024.
SELECT * FROM Customer WHERE registration_date >= '2024-01-01';

-- Q2: Fetch product names, prices, and quantities where stock is less than 50 units.
SELECT product_name, price, stock_quantity FROM Product WHERE stock_quantity < 50;

-- Q3: Retrieve all distinct payment methods used across customer transactions.
SELECT DISTINCT method FROM Payment;


-- 5.2 Join Operations
-- Q4: Inner Join: List order IDs, customer first names, dates, and statuses.
SELECT o.order_id, c.first_name, o.order_date, o.order_status 
FROM Orders o INNER JOIN Customer c ON o.customer_id = c.customer_id
  WHERE order_status=’Delivered’;

-- Q5: Left Outer Join: Display all product categories and their matching products.
SELECT c.category_name, p.product_name 
FROM Category c LEFT JOIN Product p ON c.category_id = p.category_id
  WHERE category_name=’Laptops’;

-- Q6: Right Outer Join: Retrieve all payments aligned with their parent order references.
SELECT o.order_id, p.payment_id, p.amount, p.status 
FROM Orders o RIGHT JOIN Payment p ON o.order_id = p.order_id
  WHERE status=’Pending’;

--Q7: Full Outer Join: Combine customer names and cities across both tables.
SELECT c.first_name, a.city 
FROM Customer c FULL OUTER JOIN Address a ON c.customer_id = a.customer_id
  WHERE city=’Delhi’;


-- 5.3 Aggregate Functions, GROUP BY and HAVING
-- Q8: Calculate total revenue generated from all successful payments.
SELECT SUM(amount) AS total_revenue FROM Payment WHERE status = 'Success';

-- Q9: Count the total number of transactions grouped by each payment method.
SELECT method, COUNT(*) AS transaction_count FROM Payment GROUP BY method;

-- Q10: Find categories where the average product price exceeds $5,000.
SELECT category_id, AVG(price) AS avg_price FROM Product GROUP BY category_id HAVING AVG(price) > 5000;


-- 5.4 Nested and Correlated Subqueries
-- Q11: Nested Subquery: Find products priced above the overall catalog average.
SELECT product_name, price FROM Product WHERE price > (SELECT AVG(price) FROM Product);

-- Q12: Correlated Subquery: Find products priced higher than their specific category average.
SELECT p.product_name, p.price, p.category_id 
FROM Product p 
WHERE p.price > (SELECT AVG(sub.price) FROM Product sub WHERE sub.category_id = p.category_id);


-- 5.5 Views and Relational Set Operations
-- Q13: Create an updatable view for the product catalog.
CREATE VIEW ProductCatalog AS 
SELECT product_id, product_name, price, stock_quantity FROM Product;

-- Q14: Create a non-updatable aggregate summary view for categories.
CREATE VIEW CategorySales AS 
SELECT category_id, COUNT(*) AS total_products, AVG(price) AS avg_price 
FROM Product GROUP BY category_id;

-- Q15: Set Operation (UNION): Combine unique cities from Maharashtra and West Bengal.
SELECT city FROM Address WHERE state = 'Maharashtra' 
UNION 
SELECT city FROM Address WHERE state = 'West Bengal';

-- Q16: Set Operation (EXCEPT): List customer IDs who have never placed a cancelled order.
SELECT customer_id FROM Customer 
EXCEPT 
SELECT customer_id FROM Orders WHERE order_status = 'Cancelled';



FROM Customer
EXCEPT
SELECT customer_id
FROM Orders
WHERE status = 'Cancelled';
