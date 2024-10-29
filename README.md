ehe =)


CREATE DATABASE codeweb; 
USE codeweb; 
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

CREATE TABLE cart (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    quantity INT,
    price DECIMAL(10, 2),
    user_id INT,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
