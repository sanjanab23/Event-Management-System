-- Inserting data into Users table
INSERT INTO Users (Username, Password, Email, Role) VALUES
('admin', 'admin123', 'admin@example.com', 'Admin'),
('organizer1', 'org123', 'organizer1@example.com', 'Organizer'),
('organizer2', 'org456', 'organizer2@example.com', 'Organizer'),
('participant1', 'part123', 'participant1@example.com', 'Participant'),
('participant2', 'part456', 'participant2@example.com', 'Participant'),
('participant3', 'part789', 'participant3@example.com', 'Participant');

-- Inserting data into Events table
INSERT INTO Events (OrganizerID, EventName, Description, Location, StartDateTime, EndDateTime) VALUES
(2, 'Conference 1', 'Annual tech conference', 'Convention Center', '2024-04-15 09:00:00', '2024-04-17 18:00:00'),
(3, 'Workshop 1', 'Introduction to web development', 'Co-working space', '2024-05-10 10:00:00', '2024-05-10 16:00:00'),
(3, 'Seminar 1', 'Business strategies for startups', 'Business Center', '2024-06-20 13:00:00', '2024-06-20 17:00:00'),
(4, 'Concert 1', 'Rock music night', 'City Park', '2024-07-05 19:00:00', '2024-07-05 22:00:00'),
(4, 'Exhibition 1', 'Art and culture showcase', 'Art Gallery', '2024-08-12 10:00:00', '2024-08-15 18:00:00'),
(4, 'Workshop 2', 'Digital marketing strategies', 'Conference Room', '2024-09-25 11:00:00', '2024-09-25 15:00:00');

-- Inserting data into EventParticipants table
INSERT INTO EventParticipants (EventID, ParticipantID) VALUES
(1, 4),
(1, 5),
(2, 6),
(3, 4),
(4, 5),
(5, 6);

-- Inserting data into Tickets table
INSERT INTO Tickets (EventID, TicketName, Price, Quantity) VALUES
(1, 'General Admission', 50.00, 100),
(1, 'VIP Pass', 100.00, 50),
(2, 'Workshop Ticket', 20.00, 30),
(3, 'Seminar Ticket', 10.00, 50),
(4, 'Concert Ticket', 25.00, 80),
(5, 'Exhibition Pass', 15.00, 150);

-- Inserting data into Purchases table
INSERT INTO Purchases (UserID, TicketID, Quantity, PurchaseDate) VALUES
(4, 1, 2, '2024-04-10 08:30:00'),
(5, 2, 1, '2024-04-11 10:45:00'),
(6, 3, 2, '2024-05-08 15:20:00'),
(4, 4, 3, '2024-06-18 11:10:00'),
(5, 5, 4, '2024-07-03 13:55:00'),
(6, 6, 1, '2024-08-10 09:00:00');

-- Inserting data into Comments table
INSERT INTO Comments (UserID, EventID, Comment, CommentDate) VALUES
(4, 1, 'Looking forward to it!', '2024-04-05 14:30:00'),
(5, 1, 'Got my VIP pass already!', '2024-04-06 11:20:00'),
(6, 2, 'Excited to learn!', '2024-05-09 09:45:00'),
(4, 3, 'Important topics!', '2024-06-21 15:00:00'),
(5, 4, 'Rock on!', '2024-07-05 20:30:00'),
(6, 5, 'Can''t wait to see the exhibits!', '2024-08-13 12:00:00');

-- Inserting data into EventCategories table
INSERT INTO EventCategories (CategoryName) VALUES
('Technology'),
('Business'),
('Music'),
('Art');

-- Inserting data into EventCategoryMapping table
INSERT INTO EventCategoryMapping (EventID, CategoryID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 2);

-- Inserting data into EventImages table
INSERT INTO EventImages (EventID, ImageURL) VALUES
(1, 'https://example.com/event1_image1.jpg'),
(1, 'https://example.com/event1_image2.jpg'),
(2, 'https://example.com/event2_image1.jpg'),
(3, 'https://example.com/event3_image1.jpg'),
(4, 'https://example.com/event4_image1.jpg'),
(5, 'https://example.com/event5_image1.jpg');

-- Inserting data into EventTags table
INSERT INTO EventTags (TagName) VALUES
('Tech'),
('Business'),
('Music'),
('Art');

-- Inserting data into EventTagMapping table
INSERT INTO EventTagMapping (EventID, TagID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4),
(6, 2);
