-- Procedure 1: Retrieve Event Details by EventID
DELIMITER //
CREATE PROCEDURE GetEventDetails(IN event_id INT)
BEGIN
    SELECT * FROM Events WHERE EventID = event_id;
END;
//
DELIMITER ;

-- Procedure 2: Retrieve Ticket Details by TicketID
DELIMITER //
CREATE PROCEDURE GetTicketDetails(IN ticket_id INT)
BEGIN
    SELECT * FROM Tickets WHERE TicketID = ticket_id;
END;
//
DELIMITER ;

-- Procedure 3: Retrieve Purchases by UserID
DELIMITER //
CREATE PROCEDURE GetUserPurchases(IN user_id INT)
BEGIN
    SELECT * FROM Purchases WHERE UserID = user_id;
END;
//
DELIMITER ;

-- Procedure 4: Update Ticket Price by TicketID
DELIMITER //
CREATE PROCEDURE UpdateTicketPrice(IN ticket_id INT, IN new_price DECIMAL(10,2))
BEGIN
    UPDATE Tickets SET Price = new_price WHERE TicketID = ticket_id;
END;
//
DELIMITER ;

-- Procedure 5: Delete Event by EventID
DELIMITER //
CREATE PROCEDURE DeleteEvent(IN event_id INT)
BEGIN
    DELETE FROM Events WHERE EventID = event_id;
END;
//
DELIMITER ;
