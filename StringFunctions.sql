-- CONCAT: Concatenates two or more strings together.
SELECT CONCAT('Hello', ' ', 'World') AS ConcatenatedString;

-- SUBSTRING: Extracts a substring from a string.
SELECT SUBSTRING('Hello World', 7) AS SubstringFromPosition7;

-- LENGTH: Calculates the length of a string.
SELECT LENGTH('Hello World') AS StringLength;

-- UPPER: Converts a string to uppercase.
SELECT UPPER('hello world') AS UppercaseString;

-- LOWER: Converts a string to lowercase.
SELECT LOWER('HELLO WORLD') AS LowercaseString;

-- REPLACE: Replaces occurrences of a substring within a string with another substring.
SELECT REPLACE('Hello World', 'World', 'Universe') AS ReplacedString;
