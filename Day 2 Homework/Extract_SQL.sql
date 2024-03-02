SELECT * FROM Customers;


SELECT * FROM Movies;


SELECT * FROM Tickets;


SELECT * FROM Concessions;


SELECT * FROM Tickets WHERE CustomerID = 'CustomerID';


SELECT * FROM Concessions WHERE CustomerID = 'CustomerID';


SELECT Customers.* FROM Customers
JOIN Tickets ON Customers.CustomerID = Tickets.CustomerID
WHERE Tickets.MovieID = 'MovieID';
