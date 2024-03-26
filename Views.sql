-- View 1: Events with their Organizers' Information
CREATE VIEW EventOrganizers AS
SELECT 
    e.EventID,
    e.EventName,
    e.Description AS EventDescription,
    e.StartDateTime,
    e.EndDateTime,
    u.UserID AS OrganizerID,
    u.Username AS OrganizerUsername,
    u.Email AS OrganizerEmail
FROM Events e
JOIN Users u ON e.OrganizerID = u.UserID;

-- View 2: Events with the Count of Participants
CREATE VIEW EventParticipantCounts AS
SELECT 
    EventID,
    COUNT(ParticipantID) AS ParticipantCount
FROM EventParticipants
GROUP BY EventID;

-- View 3: Events with Available Tickets
CREATE VIEW AvailableTickets AS
SELECT 
    t.EventID,
    t.TicketName,
    t.Price,
    t.Quantity - COALESCE(SUM(p.Quantity), 0) AS AvailableQuantity
FROM Tickets t
LEFT JOIN Purchases p ON t.TicketID = p.TicketID
GROUP BY t.TicketID;

-- View 4: Event Categories with the Count of Events
CREATE VIEW EventCategoryCounts AS
SELECT 
    ec.CategoryName,
    COUNT(ecm.EventID) AS EventCount
FROM EventCategories ec
LEFT JOIN EventCategoryMapping ecm ON ec.CategoryID = ecm.CategoryID
GROUP BY ec.CategoryID;

-- View 5: Purchases with Users' Information
CREATE VIEW PurchaseDetails AS
SELECT 
    p.PurchaseID,
    p.UserID,
    u.Username,
    u.Email,
    p.TicketID,
    t.TicketName,
    p.Quantity,
    p.PurchaseDate
FROM Purchases p
JOIN Users u ON p.UserID = u.UserID
JOIN Tickets t ON p.TicketID = t.TicketID;
