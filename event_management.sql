-- CREATE THE EVENT MANAGEMENT DATABASE FIRST

CREATE DATABASE eventMN;

-- CREATE TABLES

USE eventMN;

CREATE TABLE venue (
    venue_id INT AUTO_INCREMENT PRIMARY KEY,
    venue_name VARCHAR(100) NOT NULL,
    location VARCHAR(255) NOT NULL,
    capacity INT NOT NULL
);

CREATE TABLE event(
    event_id INT AUTO_INCREMENT PRIMARY KEY,
    event_name VARCHAR(100) NOT NULL,
    event_date DATE NOT NULL,
    venue_id INT,
    FOREIGN KEY (venue_id) REFERENCES Venue(venue_id)
);

CREATE TABLE attendee (
    attendee_id INT AUTO_INCREMENT PRIMARY KEY,
    attendee_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE ticket (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    event_id INT,
    attendee_id INT,
    purchase_date DATE NOT NULL,
    seat_number VARCHAR(20),
    FOREIGN KEY (event_id) REFERENCES Event(event_id),
    FOREIGN KEY (attendee_id) REFERENCES Attendee(attendee_id)
);

-- POPULATE THE TABLES

INSERT into venue (venue_name, location, capacity) 
VALUES('Nelson Mandela Stadium', '11 Mngomezulu Str', 10000),
('City Hall', '123 Main St', 500),
('Jake Gerwell Arena', 'Muizenberg City Center', 600),
('Grand Arena', '456 Center Rd', 2000);

INSERT INTO event (event_name, event_date, venue_id) 
VALUES('Tech Expo 2025', '2025-06-20', 1),
('Cotton Fest25', '2025-07-20', 2),
('Jazz Festival', '2025-07-31', 3),
('All Nighter 2025', '2025-10-20', 4);

INSERT INTO attendee (attendee_name, email) 
VALUES('Allen Grey', 'allen@example.com'),
('Makazole Maphimpi', 'makazole@example.com'),
('Alice Mokoena', 'alice@example.com'),
('Brian Ndlovu', 'brian@example.com');

INSERT INTO ticket (event_id, attendee_id, purchase_date, seat_number) 
VALUES(1, 1, '2025-05-01', 'A12'),
(2, 2, '2025-05-01', 'B09'),
(3, 3, '2025-05-01', 'C17'),
(4, 4, '2025-05-01', 'D23');


