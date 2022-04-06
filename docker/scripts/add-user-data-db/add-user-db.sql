-- пользователи для MYSQL
--
-- user for phpmyadmin
-- without GRANT privileges
CREATE USER 'php_madm'@'%' IDENTIFIED BY 'My1Admin!';
GRANT ALL PRIVILEGES ON *.* TO 'php_madm'@'%';
-- GRANT ALL - в целях обучения
--
FLUSH PRIVILEGES;
