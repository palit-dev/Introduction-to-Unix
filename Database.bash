#!/bin/bash
# Create a database foo with the given structure
echo "Enter username:"
read username
echo "Enter password"
read password
MYSQL_PWD=$password mysql -u $username -e "create database if not exists foo;
					   use foo;
					   CREATE TABLE IF NOT EXISTS Products (
					   Product_ID varchar(10) NOT NULL PRIMARY KEY,
					   Product_Name varchar(20) NOT NULL,
					   Price INT NOT NULL,
					   Quantity INT NOT NULL);
					   desc Products;"
