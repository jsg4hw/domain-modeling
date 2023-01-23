-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. 
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS salesteam;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS activities;
DROP TABLE IF EXISTS industries;
DROP TABLE IF EXISTS company_industries;

CREATE TABLE company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_name TEXT
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_name TEXT
);

CREATE TABLE company_industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_id INTEGER,
    company_id INTEGER
);

CREATE TABLE salesteam (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT

);

CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salesperson_id INTEGER,
    company_id INTEGER,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone_number TEXT,
    job_title TEXT
);

CREATE TABLE activities (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    salesperson_id INTEGER,
    contact_id INTEGER,
    activity_type TEXT,
    activity_time TEXT,
    message_text TEXT
);



-- CREATE TABLES
