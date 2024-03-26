-- 1. Retrieve all users
SELECT * FROM Users;

-- 2. Retrieve all events
SELECT * FROM Events;

-- 3. Retrieve all tickets
SELECT * FROM Tickets;

-- 4. Retrieve all purchases
SELECT * FROM Purchases;

-- 5. Retrieve all event categories
SELECT * FROM EventCategories;

-- 6. Retrieve specific user details by username
SELECT * FROM Users WHERE Username = 'username';

-- 7. Retrieve specific event details by EventID
SELECT * FROM Events WHERE EventID = 1;

-- 8. Retrieve specific ticket details by TicketID
SELECT * FROM Tickets WHERE TicketID = 1;

-- 9. Retrieve purchases made by a specific user
SELECT * FROM Purchases WHERE UserID = 1;

-- 10. Retrieve events organized by a specific user
SELECT * FROM Events WHERE OrganizerID = 1;

-- 11. Retrieve all participants for a specific event
SELECT * FROM EventParticipants WHERE EventID = 1;

-- 12. Retrieve all available tickets for a specific event
SELECT * FROM Tickets WHERE EventID = 1 AND Quantity > 0;

-- 13. Retrieve total number of purchases made
SELECT COUNT(*) AS TotalPurchases FROM Purchases;

-- 14. Retrieve total revenue generated from ticket sales
SELECT SUM(Price * Quantity) AS TotalRevenue FROM Purchases;

