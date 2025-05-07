-- Create the database
CREATE DATABASE IF NOT EXISTS `graduate`
  DEFAULT CHARACTER SET = utf8mb4
  DEFAULT COLLATE = utf8mb4_unicode_ci;
USE `graduate`;

-- Admins table
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `admin_name` VARCHAR(100) NOT NULL,
  `password_hash` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `role` VARCHAR(50) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO `admins` (`admin_name`, `password_hash`, `email`, `gender`, `role`)
VALUES 
('Alice Tan', 'hashed_password_1', 'alice@admin.com', 'Female', 'superadmin'),
('Bob Lee', 'hashed_password_2', 'bob@admin.com', 'Male', 'admin');

-- Users (members) table
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password_hash` VARCHAR(255) NOT NULL,
  `user_name` VARCHAR(100) NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO `users` (`email`, `password_hash`, `user_name`, `gender`)
VALUES
('johndoe@gmail.com', 'hashed_user_pass1', 'John Doe', 'Male'),
('janedoe@gmail.com', 'hashed_user_pass2', 'Jane Doe', 'Female');

-- Coupon codes
DROP TABLE IF EXISTS `coupon_code`;
CREATE TABLE `coupon_code` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `coupon_code` VARCHAR(50) NOT NULL UNIQUE,
  `value` DECIMAL(10,2) NOT NULL,
  `status` TINYINT(1) NOT NULL DEFAULT 1,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO `coupon_code` (`coupon_code`, `value`, `status`)
VALUES
('WELCOME10', 10.00, 1),
('SUMMER20', 20.00, 1),
('EXPIRED15', 15.00, 0);

-- Products
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `category` VARCHAR(100) NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `image` VARCHAR(255),
  `details` TEXT,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO `products` (`category`, `name`, `price`, `image`, `details`)
VALUES
('Shirts', 'Slim Fit Cotton Shirt', 49.99, 'shirt1.jpg', 'Comfortable slim-fit shirt made from 100% cotton.'),
('Pants', 'Casual Denim Jeans', 79.99, 'jeans1.jpg', 'High-quality blue denim jeans with modern fit.'),
('Accessories', 'Leather Belt', 29.99, 'belt1.jpg', 'Genuine leather belt with adjustable buckle.');

-- Checkout/orders
DROP TABLE IF EXISTS `checkout`;
CREATE TABLE `checkout` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `phone` VARCHAR(50) NOT NULL,
  `address` TEXT NOT NULL,
  `details` TEXT NOT NULL,       -- JSON‐encoded cart
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO `checkout` (`name`, `email`, `phone`, `address`, `details`)
VALUES
('John Doe', 'johndoe@gmail.com', '0123456789', '123 Main St, KL', '[{"product_id":1,"qty":2},{"product_id":3,"qty":1}]'),
('Jane Doe', 'janedoe@gmail.com', '0987654321', '456 Park Ave, Selangor', '[{"product_id":2,"qty":1}]');

-- Contact messages
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `No` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `Name` VARCHAR(100) NOT NULL,
  `Phone` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Message` TEXT NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB;

INSERT INTO `contact` (`Name`, `Phone`, `Email`, `Message`)
VALUES
('Alex Wong', '0191234567', 'alexwong@example.com', 'I want to know more about your return policy.'),
('Lily Tan', '0177654321', 'lilytan@example.com', 'Great website! Looking forward to more products.');
