-------------------------------------------------------------------------------------------------------
-- Exercise A: Aggregate Functions
-------------------------------------------------------------------------------------------------------

-- Query A1: Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.
select SUM(COST) from PETRESCUE

--Query A2: Enter a function that displays the total cost of all animal rescues in the PETRESCUE table in a column called SUM_OF_COST.
select SUM(COST) AS SUM_OF_COST from PETRESCUE

-- Query A3: Enter a function that displays the maximum quantity of animals rescued.
Select MAX(QUANTITY) From PETRESCUE

--Query A4: Enter a function that displays the average cost of animals rescued.
select AVG(COST) from PETRESCUE

-- Query A5: Enter a function that displays the average cost of rescuing a dog.
select AVG(COST) from PETRESCUE where LCASE(ANIMAL) = 'dog' -- This is incorrect Solution
select AVG( COST / QUANTITY ) from PETRESCUE where LCASE(ANIMAL) = 'Dog'; -- Keep Quantity in mind

-------------------------------------------------------------------------------------------------------
--Exercise B: Scalar and String Functions
-------------------------------------------------------------------------------------------------------

--Query B1: Enter a function that displays the rounded cost of each rescue.
Select round(COST) from PETRESCUE

-- Query B2: Enter a function that displays the length of each animal name.
Select length(animal) from PETRESCUE

--Query B3: Enter a function that displays the animal name in each rescue in uppercase.
select ucase(ANIMAL) from PETRESCUE

-- Query B4: Enter a function that displays the animal name in each rescue in uppercase without duplications.
select distinct(ucase(ANIMAL)) from PETRESCUE

--Query B5: Enter a query that displays all the columns from the PETRESCUE table, where the animal(s) rescued are cats. Use cat in lower case in the query.
select * from PETRESCUE where lcase(animal) = 'cat'

-------------------------------------------------------------------------------------------------------
Exercise C: Date and Time Functions
-------------------------------------------------------------------------------------------------------

--Query C1: Enter a function that displays the day of the month when cats have been rescued.
select DAY(RESCUEDATE) from PETRESCUE where UCASE(ANIMAL) = 'CAT'

-- Query C2: Enter a function that displays the number of rescues on the 5th month.
select SUM(QUANTITY) from PETRESCUE where MONTH(RESCUEDATE)='05'

-- Query C3: Enter a function that displays the number of rescues on the 14th day of the month.
select SUM(QUANTITY) from PETRESCUE where DAY(RESCUEDATE)='14';

-- Query C4: Animals rescued should see the vet within three days of arrivals. Enter a function that displays the third day from each rescue.
select RESCUEDATE,(RESCUEDATE + 3 DAYS) from PETRESCUE 

--Query C5: Enter a function that displays the length of time the animals have been rescued; the difference between today’s date and the rescue date.
Select (CURRENT_DATE - RESCUEDATE) From PETRESCUE



