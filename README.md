# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# Database Design
Calendar
 - Time Slot (Morning, After School, etc.)
    (Time Slot names will be prefixed with the hour the slot is assumed to start. This is just to enable lexical sorting by date/time)
 - Date (e.g., April 25)
 - Weather
 - Weather Modifier
 - Events
 - Event Requirements
 - Notes
 - Confidants Available
    - Location
Users
 - email
 - password
 - Playthroughs
    - Title
    - Notes
    - Diary Entries
      - Time Slot
      - Date
      - Event Chosen
      - Dialog Choices
      - Notes
      - Stat Increases
      - Stat Rankups
      - Confidant Increases
      - Confidant Rankups
