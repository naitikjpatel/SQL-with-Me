**1. Nested Summary Functions with GROUP BY:**

This technique involves using multiple summary functions within a single SQL query, often combined with a `GROUP BY` clause. Here's how it works:

* **Outermost Level:** You use `GROUP BY` to categorize your data based on specific columns.
* **Inner Level:** Within the `SELECT` clause, you apply summary functions like `COUNT`, `SUM`, `AVG`, etc., to calculate aggregated values for each group.
* **Nesting:** You can further nest summary functions within the inner level for more complex calculations.

For example, imagine a table storing sales data with columns for `Product`, `Region`, and `SalesAmount`. You might want to find the total sales per region and then calculate the average sales for each product within each region. Here's the SQL query:

```sql
SELECT Region,
       SUM(SalesAmount) AS TotalSales,
       AVG(
           (SELECT AVG(SalesAmount) FROM Sales S2
            WHERE S2.Region = S1.Region AND S2.Product = S1.Product)
       ) AS AvgSalesPerProduct
FROM Sales S1
GROUP BY Region, Product;
```

**2. DECODE Function:**

The `DECODE` function (or its variations like `CASE` in some databases) allows you to conditionally transform values based on specific criteria. It's helpful for:

* **Mapping Codes:** Convert numeric or string codes into more descriptive labels.
* **Categorization:** Group values into categories based on certain ranges.
* **Handling Null Values:** Specify a default value to display when encountering nulls.

Here's the basic syntax for `DECODE`:

```sql
DECODE(expression, value1, result1, value2, result2, ..., default_result)
```

* `expression`: The column or value to be evaluated.
* `valueX`: Specific values to check against.
* `resultX`: The corresponding result to return if the expression matches `valueX`.
* `default_result`: The value returned if none of the conditions match.

For instance, let's say your table has a `CustomerStatus` column with numeric codes (1 - Active, 2 - Inactive). You can use `DECODE` to display user-friendly labels:

```sql
SELECT CustomerID,
       DECODE(CustomerStatus, 1, 'Active', 2, 'Inactive', 'Unknown') AS Status
FROM Customers;
```

Remember, specific function names and syntax might vary slightly depending on your database system. 

Do you have any specific questions about using these concepts in your queries, or would you like examples for different databases?
