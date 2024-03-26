-- CURRENT_DATE: Returns the current date.
SELECT CURRENT_DATE AS CurrentDate;

-- CURRENT_TIME: Returns the current time.
SELECT CURRENT_TIME AS CurrentTime;

-- CURRENT_TIMESTAMP: Returns the current date and time.
SELECT CURRENT_TIMESTAMP AS CurrentDateTime;

-- EXTRACT: Extracts a specific part of a date or time.
SELECT 
    EXTRACT(YEAR FROM '2024-03-26') AS ExtractedYear,
    EXTRACT(MONTH FROM '2024-03-26') AS ExtractedMonth,
    EXTRACT(DAY FROM '2024-03-26') AS ExtractedDay;

-- DATE_FORMAT: Formats a date according to a specified format.
SELECT 
    DATE_FORMAT('2024-03-26', '%Y-%m-%d') AS FormattedDate,
    DATE_FORMAT('2024-03-26', '%W, %M %e, %Y') AS LongDateFormat;

-- DATE_ADD: Adds a specified time interval to a date.
SELECT DATE_ADD('2024-03-26', INTERVAL 1 MONTH) AS DateAfterOneMonth;

-- DATE_SUB: Subtracts a specified time interval from a date.
SELECT DATE_SUB('2024-03-26', INTERVAL 1 WEEK) AS DateBeforeOneWeek;
