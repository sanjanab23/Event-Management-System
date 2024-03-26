# Event Management System Database

## Overview
The Event Management System Database is designed to store and manage data related to events, participants, tickets, and more. It provides a structured approach to organize information and facilitate various functionalities of the event management system.

## Tables and Features

### 1. Users
- **Features:**
  - Store information about system users.
  - Each user has a unique UserID.
  - Attributes: UserID, Username, Email, PasswordHash, Role.

### 2. Events
- **Features:**
  - Store details of events created by organizers.
  - Each event has a unique EventID.
  - Attributes: EventID, EventName, Description, OrganizerID, StartDateTime, EndDateTime, Location.

### 3. Tickets
- **Features:**
  - Store information about tickets available for events.
  - Each ticket has a unique TicketID.
  - Attributes: TicketID, EventID, TicketName, Price, Quantity.

### 4. Purchases
- **Features:**
  - Store records of ticket purchases made by participants.
  - Each purchase has a unique PurchaseID.
  - Attributes: PurchaseID, UserID, TicketID, Quantity, PurchaseDate.

### 5. EventParticipants
- **Features:**
  - Store records of participants registered for events.
  - Each record represents a participant's registration for an event.
  - Attributes: ParticipantID, EventID, UserID.

### 6. EventCategories
- **Features:**
  - Store categories to classify events.
  - Each category has a unique CategoryID.
  - Attributes: CategoryID, CategoryName.

### 7. EventCategoryMapping
- **Features:**
  - Establish a many-to-many relationship between events and categories.
  - Each record maps an event to one or more categories.
  - Attributes: EventID, CategoryID.

## Installation
1. **MySQL Setup:** Install MySQL database server on your system.
2. **Database Creation:** Execute the SQL script to create the database schema and tables.
3. **Data Population:** Optionally, populate tables with sample data for testing purposes.

## Usage
- Utilize the database tables to store and manage data for the Event Management System application.
- Use appropriate SQL queries to retrieve, insert, update, or delete records as required by the application's functionality.
