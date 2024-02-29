*🚀 Welcome to the SQL Mastery Series! Today, we dived deep into advanced sorting techniques and made our queries more powerful.* 

This document covers:

* **ORDER BY Clause:** Used to sort data in tables based on specific columns.
* **Ascending and Descending Order:**
    * **Ascending:** Sorts data from **smallest to largest** (numbers: 1, 2, 3; letters: A, B, C).
    * **Descending:** Sorts data from **largest to smallest** (numbers: 3, 2, 1; letters: Z, Y, X).
   * **ASCENDING:** EARLIEST DATE FIRST,LATEST DATE LAST
   * **DESCENDING:** LATEST DATE FIRST,EARLIEST DATE LAST
* **ROWID:** A unique identifier assigned to each table row.
* **NULL Handling:**
    * **NULLS FIRST:** Null values appear before non-null values when sorting.
    * **NULLS LAST:** Null values appear after non-null values when sorting.
* **Multiple Columns:** Use commas to specify multiple columns for sorting, with each column having its own ascending/descending preference.

### Example Code Snippets:

Here are some code snippets demonstrating the concepts:

**1. Ascending Order:**

```sql
SELECT * FROM table_name ORDER BY column_name ASC;
```

**2. Descending Order:**

```sql
SELECT * FROM table_name ORDER BY column_name DESC;
```

**3. NULLS FIRST:**

```sql
SELECT * FROM table_name ORDER BY column_name NULLS FIRST;
```

**4. NULLS LAST:**

```sql
SELECT * FROM table_name ORDER BY column_name NULLS LAST;
```

**5. Multiple Columns (Ascending, Descending):**

```sql
SELECT * FROM table_name ORDER BY column1 ASC, column2 DESC;
```

Remember to replace `table_name`, `column_name`, and other placeholders with actual values in your specific context.

**🚀 Elevate Your SQL Skills:**
Feel the power of sorting! Enhance your SQL skills by practicing advanced order by techniques. Don't hesitate to explore and experiment with the sample queries provided.

**📚 Resources:**
SQL Mastery Series: [W3SCHOOL](https://www.w3schools.com/sql/sql_ref_order_by.asp)
