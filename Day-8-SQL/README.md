**This repository explores various string manipulation functions available in many programming languages, along with providing a basic understanding of National Language Support (NLS).**

**String Manipulation Functions**

* **Upper**
    - Converts all characters in a string to uppercase.
    - Example:

      ```
      text = "Hello, World!"
      uppercase_text = upper(text)
      print(uppercase_text)  # Output: HELLO, WORLD!
      ```

* **Lower**
    - Converts all characters in a string to lowercase.
    - Example:

      ```
      text = "HELLO, WORLD!"
      lowercase_text = lower(text)
      print(lowercase_text)  # Output: hello, world!
      ```

* **Initcap**
    - Converts the first letter of each word in a string to uppercase, leaving the remaining letters lowercase.
    - Example:

      ```
      text = "hello world"
      initcapped_text = initcap(text)
      print(initcapped_text)  # Output: Hello World
      ```

* **Lpad**
    - Pads a string with a specified character on the left side to reach a desired length.
    - Example:

      ```
      text = "abc"
      padded_text = lpad(text, 10, "*")
      print(padded_text)  # Output: *******abc
      ```

* **Rpad**
    - Pads a string with a specified character on the right side to reach a desired length.
    - Example:

      ```
      text = "abc"
      padded_text = rpad(text, 10, "*")
      print(padded_text)  # Output: abc*******
      ```

* **Ltrim**
    - Removes leading whitespace characters (spaces, tabs, newlines) from a string.
    - Example:

      ```
      text = "  trimmed text"
      trimmed_text = ltrim(text)
      print(trimmed_text)  # Output: trimmed text
      ```

* **Rtrim**
    - Removes trailing whitespace characters from a string.
    - Example:

      ```
      text = "trimmed text  "
      trimmed_text = rtrim(text)
      print(trimmed_text)  # Output: trimmed text
      ```

* **Trim**
    - Removes both leading and trailing whitespace characters from a string.
    - Example:

      ```
      text = "  trimmed text  "
      trimmed_text = trim(text)
      print(trimmed_text)  # Output: trimmed text
      ```

* **Translate**
    - Replaces a set of characters in a string with another set of characters.
    - Example:

      ```
      text = "hello, world!"
      translated_text = translate(text, "aeiou", "*")
      print(translated_text)  # Output: h*ll*, w*rld!
      ```

* **Replace**
    - Replaces all occurrences of a substring with another substring.
    - Example:

      ```
      text = "This is a string."
      replaced_text = replace(text, "is", "was")
      print(replaced_text)  # Output: This was a string.
      ```

* **Length**
    - Returns the length (number of characters) of a string.
    - Example:

      ```
      text = "Hello, World!"
      text_length = length(text)
      print(text_length)  # Output: 13
      ```

* **Concat**
    - Concatenates (joins) two or more strings into a single string.
    - Example:

      ```
      text1 = "Hello"
      text2 = "World"
      combined_text = concat(text1, ", ", text2)
      print(combined_text)  # Output: Hello, World
      ```

**National Language Support (NLS)**

NLS features in programming languages allow you to adapt your application to different languages and locales. This includes:

* Character set encodings (e.g., UTF-8 for handling various character sets)
* Collation rules (sorting order based on language-specific conventions)
* Date and time formatting
* Number formatting (e.g., decimal separators
