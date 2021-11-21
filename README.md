# python-fast-api
Python Fast API 

## Tables
1. Tickets
2. Customers
3. Stores
4. Orders

## APIs
1. Get  
    - with ID
    - with name
    - with amounts (between, equal, less than etc)
2. Update
    - with Id
    - name 
    
    (omitted as it is similar to 6)
3. Get all customers related to a paticular store or related fields.
4. Get all orders related to a paticular store or related fields.
5. Add new consumers, orders, tickets, stores
6. Update records.
7. Delete records.(should delete relationships also)

## Execution
### 1. Execute query.sql file

>sqlite3 ticketing.db 

In order to delete related tickets when orders are deleted, execute:

>PRAGMA foreign_keys = on;

Creating the tables:

>.read query.sql


### 2. Run python file  

>uvicorn main:app --reload


### 3. Go to URL 
http://127.0.0.1:8000/docs
