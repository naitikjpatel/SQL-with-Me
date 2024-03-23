**DML (Data Manipulation Language)**

DML commands in SQL are used to modify existing data within a database. These commands allow you to add, update, and delete records in database tables. Here are the core DML commands:

1. **INSERT:** Used to insert new rows (records) into a table.

   ```sql
   INSERT INTO table_name (column1, column2, ...)
   VALUES (value1, value2, ...);
   ```

   Example:

   ```sql
   INSERT INTO customers (name, email, phone)
   VALUES ('John Doe', 'john.doe@example.com', '123-456-7890');
   ```

2. **UPDATE:** Used to modify existing data in a table based on a specific condition.

   ```sql
   UPDATE table_name
   SET column1 = new_value, column2 = new_value2, ...
   WHERE condition;
   ```

   Example:

   ```sql
   UPDATE customers
   SET email = 'jane.smith@example.com'
   WHERE id = 2;
   ```

3. **DELETE:** Used to remove rows from a table based on a specific condition.

   ```sql
   DELETE FROM table_name
   WHERE condition;
   ```

   Example:

   ```sql
   DELETE FROM orders
   WHERE order_date < '2023-01-01';
   ```

**TCL (Transaction Control Language)**

TCL commands in SQL are used to manage the permanence of changes made by DML statements. They ensure data consistency by controlling how modifications are committed or rolled back. Here are the key TCL commands:

1. **COMMIT:** Makes all changes from the current transaction permanent.

   ```sql
   COMMIT;
   ```

2. **ROLLBACK:** Undoes all changes from the current transaction.

   ```sql
   ROLLBACK;
   ```

**Example Transaction**

```sql
BEGIN TRANSACTION;  -- Start a transaction

INSERT INTO products (name, price) VALUES ('Laptop', 800);
UPDATE products SET price = 900 WHERE name = 'Laptop';

-- Simulate an error scenario (e.g., network issue)
RAISE EXCEPTION 'Unexpected error occurred!';

ROLLBACK;  -- Undo all changes due to the error

COMMIT;  -- (This line wouldn't be executed due to the ROLLBACK)
```

**Explanation:**

1. `BEGIN TRANSACTION`: Marks the beginning of a transaction.
2. `INSERT`: Adds a new product record.
3. `UPDATE`: Increases the price of the laptop.
4. `RAISE EXCEPTION`: Simulates an error that might prevent successful completion.
5. `ROLLBACK`: Undoes both `INSERT` and `UPDATE` statements due to the error.
6. `COMMIT`: This line wouldn't be executed because the transaction was rolled back.

**Important Notes:**

- Use transactions to ensure data integrity, especially when performing multiple DML operations that should be treated as a single unit.
- Transactions can improve performance by minimizing overhead associated with frequent commits.
- Choose the appropriate isolation level (e.g., READ COMMITTED, REPEATABLE READ) to control how transactions interact with each other and prevent issues like dirty reads or lost updates.
