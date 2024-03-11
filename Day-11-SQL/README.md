**NULL-Related Functions in SQL**

**Introduction**

In SQL, NULL values represent missing or unknown data. These functions provide essential tools for handling NULL values effectively in your queries:

- `NVL` (Null Value Logic)
- `NVL2` (Null Value Logic with Two Options)
- `NULLIF` (Null If Equal)
- `COALESCE` (Coalesce Expressions)

**Understanding NULL Values**

- NULL signifies the absence of a meaningful value in a database column.
- It's distinct from zero (0), empty strings (''), or blank spaces.
- NULL values can arise due to various reasons, such as:
    - Data entry errors (e.g., leaving a field blank)
    - Data deletion or updates
    - Calculations resulting in an undefined value

**Choosing the Right Function**

The appropriate function depends on your specific needs:

**1. NVL (Null Value Logic)**

```sql
NVL(expr1, expr2)
```

- **Purpose:** Replaces NULL values in `expr1` with `expr2`.
- **Syntax:**
    - `expr1`: The expression to be evaluated.
    - `expr2`: The value to return if `expr1` is NULL.
- **Example:**

```sql
SELECT customer_name, NVL(email, 'No email address provided')
FROM customers;
```

**2. NVL2 (Null Value Logic with Two Options)**

```sql
NVL2(expr1, expr2, expr3)
```

- **Purpose:** Offers a conditional replacement based on `expr1`.
- **Syntax:**
    - `expr1`: The expression to be evaluated.
    - `expr2`: The value to return if `expr1` is NOT NULL.
    - `expr3`: The value to return if `expr1` is NULL.
- **Example:**

```sql
SELECT product_id,
       NVL2(discount, 'Discounted', 'Full Price') AS price_status
FROM products;
```

**3. NULLIF (Null If Equal)**

```sql
NULLIF(expr1, expr2)
```

- **Purpose:** Returns NULL if `expr1` is equal to `expr2`.
- **Syntax:**
    - `expr1`: The first expression to be compared.
    - `expr2`: The second expression to be compared.
- **Example:**

```sql
SELECT order_id,
       NULLIF(ship_city, 'New York') AS non_ny_orders
FROM orders;
```

**4. COALESCE (Coalesce Expressions)**

```sql
COALESCE(expr1, expr2, ..., exprN)
```

- **Purpose:** Returns the first non-NULL expression from a list.
- **Syntax:**
    - `expr1`, `expr2`, ..., `exprN`: A sequence of expressions to be evaluated.
- **Example:**

```sql
SELECT employee_id,
       COALESCE(phone_number, mobile_number, 'No contact information')
FROM employees;
```

**Key Considerations**

- **Data Type Compatibility:** Ensure that replacement values (expr2, expr3 in NVL/NVL2) have compatible data types with expr1.
- **Logical Order:** When using COALESCE, list expressions in order of priority, returning the first non-NULL value encountered.
- **Alternative Functions:** Consider using CASE expressions for more complex conditional logic.

By effectively using these NULL-related functions, you can enhance the clarity, robustness, and maintainability of your SQL queries.
