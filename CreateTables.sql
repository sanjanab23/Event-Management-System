CREATE TABLE Users (
    UserID INT AUTO_INCREMENT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Password VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Role ENUM('Admin', 'Organizer', 'Participant') NOT NULL,
    UNIQUE(Username)
);

CREATE TABLE Events (
    EventID INT AUTO_INCREMENT PRIMARY KEY,
    OrganizerID INT NOT NULL,
    EventName VARCHAR(100) NOT NULL,
    Description TEXT,
    Location VARCHAR(100),
    StartDateTime DATETIME NOT NULL,
    EndDateTime DATETIME NOT NULL,
    FOREIGN KEY (OrganizerID) REFERENCES Users(UserID)
);

CREATE TABLE EventParticipants (
    EventID INT NOT NULL,
    ParticipantID INT NOT NULL,
    PRIMARY KEY (EventID, ParticipantID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (ParticipantID) REFERENCES Users(UserID)
);

CREATE TABLE Tickets (
    TicketID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT NOT NULL,
    TicketName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

CREATE TABLE Purchases (
    PurchaseID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    TicketID INT NOT NULL,
    Quantity INT NOT NULL,
    PurchaseDate DATETIME NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (TicketID) REFERENCES Tickets(TicketID)
);

CREATE TABLE Comments (
    CommentID INT AUTO_INCREMENT PRIMARY KEY,
    UserID INT NOT NULL,
    EventID INT NOT NULL,
    Comment TEXT NOT NULL,
    CommentDate DATETIME NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

CREATE TABLE EventCategories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL
);

CREATE TABLE EventCategoryMapping (
    EventID INT NOT NULL,
    CategoryID INT NOT NULL,
    PRIMARY KEY (EventID, CategoryID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (CategoryID) REFERENCES EventCategories(CategoryID)
);

CREATE TABLE EventImages (
    ImageID INT AUTO_INCREMENT PRIMARY KEY,
    EventID INT NOT NULL,
    ImageURL VARCHAR(255) NOT NULL,
    FOREIGN KEY (EventID) REFERENCES Events(EventID)
);

CREATE TABLE EventTags (
    TagID INT AUTO_INCREMENT PRIMARY KEY,
    TagName VARCHAR(50) NOT NULL
);

CREATE TABLE EventTagMapping (
    EventID INT NOT NULL,
    TagID INT NOT NULL,
    PRIMARY KEY (EventID, TagID),
    FOREIGN KEY (EventID) REFERENCES Events(EventID),
    FOREIGN KEY (TagID) REFERENCES EventTags(TagID)
);
