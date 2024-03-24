**DML Commands:**

* **SELECT:** This command retrieves data from a database table. You can specify which columns you want to see and filter the results using a WHERE clause.

**Example:**

```sql
SELECT name, email FROM customers WHERE city = 'New York';
```

**Exercise 1:** Write a SELECT query to get all product names and prices from a "products" table.

* **INSERT:** This command adds new data to a database table. You specify the column names and the values for each row you want to insert.

**Example:**

```sql
INSERT INTO orders (customer_id, order_date, total_amount) VALUES (10, '2024-03-24', 150.00);
```

**Exercise 2:** Write an INSERT query to add a new customer record with their name, email, and phone number.

* **UPDATE:** This command modifies existing data in a database table. You can change specific columns based on a WHERE clause.

**Example:**

```sql
UPDATE customers SET phone_number = '555-555-1212' WHERE email = 'john.doe@example.com';
```

**Exercise 3:** Write an UPDATE query to update the email address for a customer with a specific ID.

* **DELETE:** This command removes data from a database table. Use a WHERE clause to specify which rows to delete.

**Example:**

```sql
DELETE FROM products WHERE stock = 0;
```

**Exercise 4:** Write a DELETE query to remove all products from a table that are out of stock (stock = 0).

**Additional Tips:**

* Practice using different WHERE clause conditions to filter your data retrieval and modification.
* Combine DML commands with other SQL statements like JOIN to retrieve data from multiple tables.
* Explore using functions within your DML statements for calculations and data manipulation.

By working on these exercises, you'll gain a solid understanding of how to use DML commands to effectively manage data in your databases. There are many online resources available that offer additional exercises and tutorials to help you solidify your DML skills.
