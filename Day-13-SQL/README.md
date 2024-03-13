**SQL Data Type Conversion Functions**

# Introduction

This document explores three essential data type conversion functions in SQL:

* `TO_DATE()`: Converts a string representation of a date into a `DATE` data type.
* `TO_NUMBER()`: Converts a string representation of a number into a numeric data type (e.g., `INTEGER`, `DECIMAL`).
* `TO_CHAR()`: Converts a value from other data types (e.g., `DATE`, `NUMBER`) into a character string (`VARCHAR2`).

These functions are crucial for data manipulation in SQL, allowing you to transform values between different formats for calculations, formatting, and interacting with external data sources.

# Function Details

## TO_DATE()

**Purpose:** Transforms a string in a specific date format into a `DATE` data type.

**Syntax:**

```sql
TO_DATE(string_value, format_model)
```

**Parameters:**

* `string_value`: The string representation of the date to be converted.
* `format_model` (optional): A string specifying the format of the `string_value`. If omitted, the database attempts to infer the format based on locale settings.

**Common Format Models:**

* `'YYYY-MM-DD'`: Year-Month-Day (e.g., '2024-03-13')
* `'DD-MON-YYYY'`: Day-Month-Year (e.g., '13-MAR-2024')
* `'MM/DD/YYYY'`: Month/Day/Year (e.g., '03/13/2024')

**Example:**

```sql
SELECT TO_DATE('2024-03-13', 'YYYY-MM-DD') AS converted_date;
```

**Output:**

```
converted_date
---------------
2024-03-13
```

## TO_NUMBER()

**Purpose:** Converts a string representation of a number into a numeric data type.

**Syntax:**

```sql
TO_NUMBER(string_value, format_model)
```

**Parameters:**

* `string_value`: The string representation of the number to be converted.
* `format_model` (optional): A string specifying the format of the `string_value`. If omitted, the database attempts to infer the format based on locale settings.

**Example:**

```sql
SELECT TO_NUMBER('1,234.56') AS converted_number;
```

**Output:**

```
converted_number
-----------------
1234.56
```

**Error Handling:** If the conversion fails due to an invalid format or incompatible characters, an error will be raised. It's recommended to include error handling mechanisms in your code to gracefully handle such cases.

## TO_CHAR()

**Purpose:** Converts a value from other data types (e.g., `DATE`, `NUMBER`) into a character string (`VARCHAR2`).

**Syntax:**

```sql
TO_CHAR(value, format_model)
```

**Parameters:**

* `value`: The value to be converted (e.g., a `DATE`, `NUMBER`, etc.).
* `format_model` (optional): A string specifying the desired format of the output string.

**Common Format Models for Dates:**

* `'YYYY-MM-DD'`: Year-Month-Day (e.g., '2024-03-13')
* `'DD-MON-YYYY'`: Day-Month-Year (e.g., '13-MAR-2024')
* `'MM/DD/YYYY'`: Month/Day/Year (e.g., '03/13/2024')
* Custom formats using various format elements for day, month, year, hour, minute, second, etc. (refer to your database documentation for details).

**Common Format Models for Numbers:**

* `'999999.99'` (default): Numbers with two decimal places
* `'FM99G99999999D00'` (custom format): Format mask for specific requirements (refer to your database documentation).

**Example (Date):**

```sql
SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY') AS formatted_date;
```

**Example (Number):**

```sql
SELECT TO_CHAR(1234
