-- 1. INNER JOIN: Retrieve events along with their organizers' information
SELECT e.EventID, e.EventName, e.Description, e.Location, e.StartDateTime, e.EndDateTime,
       u.UserID AS OrganizerID, u.Username AS OrganizerUsername, u.Email AS OrganizerEmail
FROM Events e
INNER JOIN Users u ON e.OrganizerID = u.UserID;

-- 2. LEFT JOIN: Retrieve all events along with the count of participants
SELECT e.EventID, e.EventName, COUNT(ep.ParticipantID) AS ParticipantCount
FROM Events e
LEFT JOIN EventParticipants ep ON e.EventID = ep.EventID
GROUP BY e.EventID, e.EventName;

-- 3. RIGHT JOIN: Retrieve all users along with their corresponding purchases (assuming each user has made at least one purchase)
SELECT u.UserID, u.Username, p.PurchaseID, p.TicketID, p.Quantity, p.PurchaseDate
FROM Users u
RIGHT JOIN Purchases p ON u.UserID = p.UserID;

-- 4. FULL JOIN: Retrieve all event categories along with the count of associated events, including categories with no events
SELECT ec.CategoryID, ec.CategoryName, COUNT(ecm.EventID) AS EventCount
FROM EventCategories ec
FULL JOIN EventCategoryMapping ecm ON ec.CategoryID = ecm.CategoryID
GROUP BY ec.CategoryID, ec.CategoryName;

