-- Cursor 1: Selects all users from the Users table
DELIMITER //
CREATE PROCEDURE GetAllUsers()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE user_id INT;
    DECLARE username VARCHAR(50);
    DECLARE email VARCHAR(100);
    
    DECLARE cur_users CURSOR FOR
        SELECT UserID, Username, Email FROM Users;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur_users;
    
    read_loop: LOOP
        FETCH cur_users INTO user_id, username, email;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Process the fetched data (print it in this case)
        SELECT user_id, username, email;
    END LOOP;
    
    CLOSE cur_users;
END;
//
DELIMITER ;

-- Cursor 2: Selects all events from the Events table
DELIMITER //
CREATE PROCEDURE GetAllEvents()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE event_id INT;
    DECLARE event_name VARCHAR(100);
    
    DECLARE cur_events CURSOR FOR
        SELECT EventID, EventName FROM Events;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur_events;
    
    read_loop: LOOP
        FETCH cur_events INTO event_id, event_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Process the fetched data (print it in this case)
        SELECT event_id, event_name;
    END LOOP;
    
    CLOSE cur_events;
END;
//
DELIMITER ;

-- Cursor 3: Selects all tickets from the Tickets table
DELIMITER //
CREATE PROCEDURE GetAllTickets()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE ticket_id INT;
    DECLARE ticket_name VARCHAR(100);
    
    DECLARE cur_tickets CURSOR FOR
        SELECT TicketID, TicketName FROM Tickets;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur_tickets;
    
    read_loop: LOOP
        FETCH cur_tickets INTO ticket_id, ticket_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Process the fetched data (print it in this case)
        SELECT ticket_id, ticket_name;
    END LOOP;
    
    CLOSE cur_tickets;
END;
//
DELIMITER ;

-- Cursor 4: Selects all purchases from the Purchases table
DELIMITER //
CREATE PROCEDURE GetAllPurchases()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE purchase_id INT;
    DECLARE user_id INT;
    DECLARE ticket_id INT;
    
    DECLARE cur_purchases CURSOR FOR
        SELECT PurchaseID, UserID, TicketID FROM Purchases;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur_purchases;
    
    read_loop: LOOP
        FETCH cur_purchases INTO purchase_id, user_id, ticket_id;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Process the fetched data (print it in this case)
        SELECT purchase_id, user_id, ticket_id;
    END LOOP;
    
    CLOSE cur_purchases;
END;
//
DELIMITER ;

-- Cursor 5: Selects all categories from the EventCategories table
DELIMITER //
CREATE PROCEDURE GetAllCategories()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE category_id INT;
    DECLARE category_name VARCHAR(50);
    
    DECLARE cur_categories CURSOR FOR
        SELECT CategoryID, CategoryName FROM EventCategories;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    OPEN cur_categories;
    
    read_loop: LOOP
        FETCH cur_categories INTO category_id, category_name;
        IF done THEN
            LEAVE read_loop;
        END IF;
        -- Process the fetched data (print it in this case)
        SELECT category_id, category_name;
    END LOOP;
    
    CLOSE cur_categories;
END;
//
DELIMITER ;
