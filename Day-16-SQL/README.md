Sure! Here's an explanation of the `GROUP BY` clause in SQL along with some practice questions and solutions:

### Theory:

In SQL, the `GROUP BY` clause is used to group rows that have the same values into summary rows. It is often used with aggregate functions like `COUNT`, `SUM`, `AVG`, `MIN`, and `MAX` to perform calculations on each group.

Syntax:
```sql
SELECT column1, aggregate_function(column2)
FROM table_name
GROUP BY column1;
```

### Practice Questions:

1. **Find the total number of orders for each customer:**
   ```sql
   SELECT customer_id, COUNT(order_id) AS total_orders
   FROM orders
   GROUP BY customer_id;
   ```

2. **Calculate the average price of products in each category:**
   ```sql
   SELECT category_id, AVG(price) AS average_price
   FROM products
   GROUP BY category_id;
   ```

3. **Determine the total sales amount for each year:**
   ```sql
   SELECT YEAR(order_date) AS order_year, SUM(total_amount) AS total_sales
   FROM orders
   GROUP BY YEAR(order_date);
   ```

4. **Find the number of employees in each department:**
   ```sql
   SELECT department_id, COUNT(employee_id) AS total_employees
   FROM employees
   GROUP BY department_id;
   ```

5. **Identify the highest-paid employee in each department:**
   ```sql
   SELECT department_id, MAX(salary) AS max_salary
   FROM employees
   GROUP BY department_id;
   ```

### Solutions:

1. Customer-wise order count:
   ```
   customer_id   |  total_orders
   -----------------------------
   1             |  15
   2             |  10
   3             |  8
   ...
   ```

2. Average price per category:
   ```
   category_id   |  average_price
   ------------------------------
   1             |  50.75
   2             |  30.20
   3             |  40.00
   ...
   ```

3. Total sales per year:
   ```
   order_year   |  total_sales
   -----------------------------
   2020         |  50000.00
   2021         |  75000.00
   2022         |  90000.00
   ...
   ```

4. Employee count per department:
   ```
   department_id   |  total_employees
   -----------------------------------
   1               |  25
   2               |  18
   3               |  12
   ...
   ```

5. Highest salary per department:
   ```
   department_id   |  max_salary
   ------------------------------
   1               |  90000
   2               |  85000
   3               |  80000
   ...
   ```

These practice questions and solutions should help you get more comfortable with using the `GROUP BY` clause in SQL! Let me know if you need further clarification or assistance.
