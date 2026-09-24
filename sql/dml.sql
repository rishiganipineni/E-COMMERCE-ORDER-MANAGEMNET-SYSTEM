INSERT INTO Customer (customer_id, first_name, last_name, email, registration_date) VALUES 
(101, 'Anita', 'Patel', 'anita.patel@mail.com', '2023-01-15'),
(102, 'Ramesh', 'Nair', 'ramesh.nair@mail.com', '2023-03-22'),
(103, 'Divya', 'Singh', 'divya.singh@mail.com', '2024-06-10'),
(104, 'Kiran', 'Kumar', 'kiran.kumar@mail.com', '2023-04-11'),
(105, 'Pooja', 'Sharma', 'pooja.sharma@mail.com', '2023-05-19'),
(106, 'Rahul', 'Verma', 'rahul.verma@mail.com', '2023-06-25'),
(107, 'Sneha', 'Iyer', 'sneha.iyer@mail.com', '2023-07-02'),
(108, 'Vikram', 'Rao', 'vikram.rao@mail.com', '2023-08-14'),
(109, 'Priya', 'Menon', 'priya.menon@mail.com', '2023-09-05'),
(110, 'Amit', 'Gupta', 'amit.gupta@mail.com', '2023-10-12'),
(111, 'Neha', 'Das', 'neha.das@mail.com', '2023-11-20'),
(112, 'Siddharth', 'Joshi', 'siddharth.joshi@mail.com', '2023-12-01'),
(113, 'Meera', 'Pillai', 'meera.pillai@mail.com', '2024-01-18'),
(114, 'Karan', 'Malhotra', 'karan.malhotra@mail.com', '2024-02-22'),
(115, 'Ananya', 'Roy', 'ananya.roy@mail.com', '2024-03-30');

INSERT INTO Address (address_id, customer_id, street, city, state, pincode, address_type) VALUES 
(201, 101, '12 MG Road', 'Bangalore', 'Karnataka', '560001', 'Home'),
(202, 102, '45 Park Street', 'Kolkata', 'West Bengal', '700016', 'Home'),
(203, 103, '78 Nehru Nagar', 'Mumbai', 'Maharashtra', '400001', 'Office'),
(204, 104, '10 Civil Lines', 'Delhi', 'Delhi', '110054', 'Home'),
(205, 105, '22 Anna Salai', 'Chennai', 'Tamil Nadu', '600002', 'Office'),
(206, 106, '56 Banjara Hills', 'Hyderabad', 'Telangana', '500034', 'Home'),
(207, 107, '89 SG Highway', 'Ahmedabad', 'Gujarat', '380054', 'Office'),
(208, 108, '34 FC Road', 'Pune', 'Maharashtra', '411004', 'Home'),
(209, 109, '90 Mall Road', 'Shimla', 'Himachal Pradesh', '171001', 'Home'),
(210, 110, '15 MG Road', 'Kochi', 'Kerala', '682011', 'Office'),
(211, 111, '23 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001', 'Home'),
(212, 112, '67 MI Road', 'Jaipur', 'Rajasthan', '302001', 'Home'),
(213, 113, '44 Station Road', 'Patna', 'Bihar', '800001', 'Office'),
(214, 114, '88 Marine Drive', 'Mumbai', 'Maharashtra', '400020', 'Home'),
(215, 115, '19 Park Circus', 'Kolkata', 'West Bengal', '700017', 'Office');

INSERT INTO Category (category_id, category_name, parent_category_id) VALUES 
(301, 'Electronics', NULL),
(302, 'Apparel', NULL),
(303, 'Smartphones', 301),
(304, 'Laptops', 301),
(305, 'Men Wear', 302),
(306, 'Women Wear', 302),
(307, 'Home Appliances', NULL),
(308, 'Kitchenware', 307),
(309, 'Footwear', NULL),
(310, 'Books', NULL),
(311, 'Sports', NULL),
(312, 'Televisions', 301),
(313, 'Audio Devices', 301),
(314, 'Fitness Equipment', 311),
(315, 'Fiction Books', 310);

INSERT INTO Product (product_id, product_name, description, price, stock_quantity, category_id) VALUES 
(401, 'Samsung Galaxy S24', 'Flagship Android smartphone with AI features', 65000.00, 50, 303),
(402, 'Laptop HP Pavilion', '15.6-inch display, 16GB RAM, 512GB SSD', 55000.00, 30, 304),
(403, 'Cotton T-Shirt', '100% breathable cotton casual wear t-shirt', 499.00, 200, 305),
(404, 'Sony Bravia 55 inch', '4K Ultra HD Smart LED TV', 75000.00, 20, 312),
(405, 'Nike Running Shoes', 'Lightweight comfortable sports shoes for running', 3499.00, 100, 309),
(406, 'Wireless Mouse Logitech', 'Ergonomic wireless optical mouse with USB receiver', 999.00, 150, 301),
(407, 'JBL Flip 6 Speaker', 'Portable waterproof Bluetooth speaker', 9999.00, 75, 313),
(408, 'Milton Steel Flask', '1000ml insulated stainless steel water bottle', 899.00, 250, 308),
(409, 'Atomic Habits Book', 'Self-improvement bestseller paperback book', 450.00, 300, 315),
(410, 'Yoga Mat', 'Anti-slip thick exercise mat for home workouts', 799.00, 120, 314),
(411, 'Levi Slim Fit Jeans', 'Stretchable dark blue denim jeans for men', 2499.00, 85, 305),
(412, 'Ethnic Kurti Set', 'Printed rayon fabric straight kurti for women', 1199.00, 90, 306),
(413, 'Prestige Induction Stove', '2000W push-button cooking induction cooktop', 2899.00, 40, 308),
(414, 'Canon EOS 1500D', '24.1 digital SLR camera with 18-55mm lens', 42999.00, 15, 301),
(415, 'Dumbbell Set 10kg', 'PVC coated adjustable hand weights for fitness', 1599.00, 60, 314);

INSERT INTO Orders (order_id, customer_id, address_id, order_date, order_status) VALUES 
(501, 101, 201, '2024-08-01', 'Delivered'),
(502, 102, 202, '2024-08-05', 'Shipped'),
(503, 103, 203, '2024-08-10', 'Pending'),
(504, 104, 204, '2024-08-11', 'Delivered'),
(505, 105, 205, '2024-08-12', 'Processing'),
(506, 106, 206, '2024-08-13', 'Shipped'),
(507, 107, 207, '2024-08-14', 'Pending'),
(508, 108, 208, '2024-08-15', 'Delivered'),
(509, 109, 209, '2024-08-16', 'Cancelled'),
(510, 110, 210, '2024-08-17', 'Shipped'),
(511, 111, 211, '2024-08-18', 'Delivered'),
(512, 112, 212, '2024-08-19', 'Processing'),
(513, 113, 213, '2024-08-20', 'Pending'),
(514, 114, 214, '2024-08-21', 'Shipped'),
(515, 115, 215, '2024-08-22', 'Delivered');

INSERT INTO Order_Item (item_id, order_id, product_id, quantity, unit_price) VALUES 
(601, 501, 401, 1, 65000.00),
(602, 502, 402, 1, 55000.00),
(603, 503, 403, 2, 499.00),
(604, 504, 404, 1, 75000.00),
(605, 505, 405, 1, 3499.00),
(606, 506, 406, 2, 999.00),
(607, 507, 407, 1, 9999.00),
(608, 508, 408, 3, 899.00),
(609, 509, 409, 1, 450.00),
(610, 510, 410, 2, 799.00),
(611, 511, 411, 1, 2499.00),
(612, 512, 412, 2, 1199.00),
(613, 513, 413, 1, 2899.00),
(614, 514, 414, 1, 42999.00),
(615, 515, 415, 2, 1599.00);

INSERT INTO Payment (payment_id, order_id, payment_date, amount, method, status, transaction_id) VALUES 
(701, 501, '2024-08-01', 65000.00, 'UPI', 'Success', 'TXN9876543210'),
(702, 502, '2024-08-05', 55000.00, 'NetBanking', 'Success', 'TXN1234567890'),
(703, 503, '2024-08-10', 998.00, 'Card', 'Pending', 'TXN5554443332'),
(704, 504, '2024-08-11', 75000.00, 'UPI', 'Success', 'TXN1112223334'),
(705, 505, '2024-08-12', 3499.00, 'COD', 'Pending', 'TXN4445556667'),
(706, 506, '2024-08-13', 1998.00, 'Card', 'Success', 'TXN7778889990'),
(707, 507, '2024-08-14', 9999.00, 'NetBanking', 'Pending', 'TXN3332221115'),
(708, 508, '2024-08-15', 2697.00, 'UPI', 'Success', 'TXN6665554448'),
(709, 509, '2024-08-16', 450.00, 'Card', 'Failed', 'TXN9998887771'),
(710, 510, '2024-08-17', 1598.00, 'UPI', 'Success', 'TXN1231231234'),
(711, 511, '2024-08-18', 2499.00, 'NetBanking', 'Success', 'TXN4564564567'),
(712, 512, '2024-08-19', 2398.00, 'COD', 'Pending', 'TXN7897897890'),
(713, 513, '2024-08-20', 2899.00, 'Card', 'Pending', 'TXN3213213214'),
(714, 514, '2024-08-21', 42999.00, 'UPI', 'Success', 'TXN6546546547'),
(715, 515, '2024-08-22', 3198.00, 'NetBanking', 'Success', 'TXN9879879870');
--select statements
SELECT * FROM Customer;

SELECT * FROM Address;

SELECT * FROM Category;

SELECT * FROM Product;

SELECT * FROM Orders;

SELECT * FROM Order_Item;

SELECT * FROM Payment;
