-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.



SELECT NAME
FROM CITY
WHERE CountryCode = 'USA' AND Population > 120000;
