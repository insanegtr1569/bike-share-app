CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE bike_types (
    bike_type_id INT PRIMARY KEY AUTO_INCREMENT,
    type_name VARCHAR(50) NOT NULL,
    rental_price DECIMAL(10, 2) NOT NULL
);

INSERT INTO bike_types (type_name, rental_price) VALUES
('Mountain Bike', 45.00),
('Road Bike', 40.00),
('City Bike', 35.00),
('Electric Bike', 80.00),
('Hybrid Bike', 50.00);

CREATE TABLE bikes (
    bike_id INT PRIMARY KEY AUTO_INCREMENT,
    bike_type_id INT,
    bike_number VARCHAR(20) UNIQUE NOT NULL,
    available BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (bike_type_id) REFERENCES bike_types(bike_type_id)
);

INSERT INTO bikes (bike_type_id, bike_number) VALUES
(1, 'MB001'),
(2, 'RB002'),
(3, 'CB003'),
(4, 'EB004'),
(5, 'HB005'),
(1, 'MB006');

CREATE TABLE bookings (
    booking_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    bike_id INT,
    start_time DATETIME,
    end_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (bike_id) REFERENCES bikes(bike_id)
);

CREATE TABLE payments (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    booking_id INT,
    amount DECIMAL(10, 2),
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (booking_id) REFERENCES bookings(booking_id)
);

CREATE TABLE sms_notifications (
    notification_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    message VARCHAR(255),
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);