# DBMS-WEEK-8-ASSIGNMENT

 Event Management System & Contact Book API

 Project Description

This repo includes two beginner-friendly projects using MySQL and Python:

 Question 1: Event Management System (SQL only)
A simple database to manage:
- Events
- Venues
- Attendees
- Ticket sales

 Question 2: Contact Book CRUD API (Python + MySQL)
A FastAPI-based application that allows you to:
- Add, update, delete, and view contacts
- Store contact names, emails, and phone numbers

---

How to Setup and Run

 Question 1 – SQL Only

1. Open your MySQL Workbench 
2. Run the `event_management.sql` file
3. It will create tables and insert sample data

 Question 2 – Contact Book API

 How to Run the API
1. Install dependencies:
pip install fastapi uvicorn mysql-connector-python

2. Create MySQL database:
CREATE DATABASE contact_book;

3. Run the API:
uvicorn main:app --reload
