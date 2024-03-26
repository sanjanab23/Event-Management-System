-- 1. Group events by organizer and count the number of events each organizer has, ordered by the number of events in descending order
SELECT OrganizerID, COUNT(*) AS EventCount
FROM Events
GROUP BY OrganizerID
ORDER BY EventCount DESC;

-- 2. Group purchases by ticket ID and calculate the total quantity purchased for each ticket, ordered by total quantity in descending order
SELECT TicketID, SUM(Quantity) AS TotalQuantityPurchased
FROM Purchases
GROUP BY TicketID
ORDER BY TotalQuantityPurchased DESC;

-- 3. Group events by location and calculate the average ticket price for each location, ordered by average ticket price in ascending order
SELECT Location, AVG(Price) AS AverageTicketPrice
FROM Events
JOIN Tickets ON Events.EventID = Tickets.EventID
GROUP BY Location
ORDER BY AverageTicketPrice ASC;

-- 4. Group purchases by user ID and calculate the total amount spent by each user, ordered by total amount spent in descending order
SELECT UserID, SUM(Price * Quantity) AS TotalAmountSpent
FROM Purchases
GROUP BY UserID
ORDER BY TotalAmountSpent DESC;

-- 5. Group events by start date and calculate the count of events for each month, ordered by start date in ascending order
SELECT DATE_FORMAT(StartDateTime, '%Y-%m') AS Month, COUNT(*) AS EventCount
FROM Events
GROUP BY MONTH(StartDateTime), YEAR(StartDateTime)
ORDER BY StartDateTime ASC;
