-- Trigger 1: Before Insert Trigger on Events table to validate start and end datetime
DELIMITER //
CREATE TRIGGER ValidateEventDateTimeBeforeInsert
BEFORE INSERT ON Events
FOR EACH ROW
BEGIN
    IF NEW.StartDateTime >= NEW.EndDateTime THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Start datetime must be before end datetime';
    END IF;
END;
//
DELIMITER ;

-- Trigger 2: After Insert Trigger on EventParticipants table to update participant count
DELIMITER //
CREATE TRIGGER UpdateParticipantCountAfterInsert
AFTER INSERT ON EventParticipants
FOR EACH ROW
BEGIN
    UPDATE EventParticipantCounts
    SET ParticipantCount = ParticipantCount + 1
    WHERE EventID = NEW.EventID;
END;
//
DELIMITER ;

-- Trigger 3: Before Delete Trigger on EventParticipants table to update participant count
DELIMITER //
CREATE TRIGGER UpdateParticipantCountBeforeDelete
BEFORE DELETE ON EventParticipants
FOR EACH ROW
BEGIN
    UPDATE EventParticipantCounts
    SET ParticipantCount = ParticipantCount - 1
    WHERE EventID = OLD.EventID;
END;
//
DELIMITER ;

-- Trigger 4: After Insert Trigger on Purchases table to update available ticket quantity
DELIMITER //
CREATE TRIGGER UpdateAvailableTicketsAfterInsert
AFTER INSERT ON Purchases
FOR EACH ROW
BEGIN
    UPDATE AvailableTickets
    SET AvailableQuantity = AvailableQuantity - NEW.Quantity
    WHERE TicketID = NEW.TicketID;
END;
//
DELIMITER ;

-- Trigger 5: Before Delete Trigger on Purchases table to update available ticket quantity
DELIMITER //
CREATE TRIGGER UpdateAvailableTicketsBeforeDelete
BEFORE DELETE ON Purchases
FOR EACH ROW
BEGIN
    UPDATE AvailableTickets
    SET AvailableQuantity = AvailableQuantity + OLD.Quantity
    WHERE TicketID = OLD.TicketID;
END;
//
DELIMITER ;
