/* Задача 1 */
CREATE SCHEMA 'HomeWork1';

CREATE TABLE 'HomeWork1'.'phones' (
    'id' INT UNSIGNED NOT NULL AUTO_INCREMENT,
    'product_name' VARCHAR(50) NOT NULL,
    'manufacturer' VARCHAR(50) NOT NULL,
    'product_count' INT UNSIGNED NOT NULL,
    'price' DECIMAL(10) UNSIGNED NOT NULL,
    PRIMARY KEY ('id'));

INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`)VALUES ('Apple', 'Iphone 5s', '3', '50000.2');
INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`)VALUES ('Apple', 'Iphone 6plus', '3', '50000.5');
INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`)VALUES ('Apple', 'Iphone 8', '1', '50000.5');
INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`) VALUES ('Sony', 'Xperia', '5', '2500.0');
INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`) VALUES ('ZTE', 'Blade', '2', '1500.2');
INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`) VALUES ('Samsung', 'Note 10', '3', '8500.0');
INSERT INTO `HomeWork1`.`phones` (`manufacturer`, `product_name`, `product_count`, `price`) VALUES ('Samsung', 'Galaxy 10', '1', '9500.0');

/* Задача 2 */

SELECT product_name, manufacturer, price from HomeWork1.phones
    WHERE product_count > 2;

/* Задача 3 */

SELECT * from HomeWork1.phones
where manufacturer = 'Samsung';

/* Задачи 4 */

SELECT * from HomeWork1.phones where product_name LIKE '%Iphone%';

SELECT * from HomeWork1.phones where product_name LIKE '%Samsung%';

SELECT * from phones WHERE product_name REGEXP '[0-9]';

SELECT * from phones WHERE product_name LIKE '%0%' or product_name LIKE '%1%'
    or product_name LIKE '%2%' or product_name LIKE '%3%' or product_name LIKE '%4%'
    or product_name LIKE '%5%' or product_name LIKE '%6%' or product_name LIKE '%7%'
    or product_name LIKE '%8%' or product_name LIKE '%9%';

SELECT * from phones WHERE product_name LIKE '%8%' OR product_name REGEXP '8';