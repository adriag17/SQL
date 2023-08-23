-- Dataset taken from BIT(Break Into Tech) Data Analysis course. 
-- REF: https://www.kaggle.com/code/alaasedeeq/chinook-sql
-- Final SQL project. Data about a digital media store including(artist, albums, tracks, playlists, playlist_track,
-- genres, media_types, customers, employees, invoices, invoices_items).

# 1. Show Customers (their full names, customer ID, and country) who are not in the US. 
  SELECT
	FirstName,
	LastName,
	CustomerId,
	Country
FROM
	customers
WHERE
	Country != "USA"

# 2. Show only the Customers from Brazil.
    SELECT
	FirstName,
	LastName,
	CustomerId,
	Country
FROM
	customers
WHERE
	Country = "Brazil"

# 3. Find the Invoices of customers who are from Brazil. The resulting table should show the customer's full name, Invoice ID, Date of the invoice, and billing country.
    SELECT
	cus.FirstName,
	cus.LastName,
	inv.CustomerId,
	inv.InvoiceDate,
	inv.BillingCountry
FROM
	customers cus
	JOIN invoices inv ON cus.CustomerId = inv.CustomerId
WHERE
	Country = "Brazil"

# 4. Show the Employees who are Sales Agents.
    SELECT
	*
FROM
	employees
WHERE
	Title LIKE "%Sales%"

# 5. Find a unique/distinct list of billing countries from the Invoice table.
     SELECT DISTINCT
	BillingCountry
FROM
	invoices

# 6. Provide a query that shows the invoices associated with each sales agent. The resulting table should include the Sales Agent's full name.
	SELECT
	e.FirstName,
	e.LastName,
	i.InvoiceId
FROM
	employees e
	JOIN customers c ON e.EmployeeId = c.CustomerId
	JOIN invoices i ON i.CustomerId = c.CustomerId
WHERE
	e.Title LIKE "%Agent%"

# 7. Show the Invoice Total, Customer name, Country, and Sales Agent name for all invoices and customers.
	SELECT
	i.Total,
	c.FirstName,
	c.Country,
	e.FirstName,
	e.Title
FROM
	invoices i
	JOIN customers c ON i.CustomerId = c.CustomerId
	JOIN employees e ON e.EmployeeId = c.SupportRepId
WHERE
	e.Title LIKE "%Agent"
ORDER BY
	c.Country

# 8. How many Invoices were there in 2009?
     SELECT
	COUNT(Total),
	InvoiceDate
FROM
	invoices
WHERE
	InvoiceDate LIKE "%2009%"

# 9. What are the total sales for 2009?
    SELECT
	SUM(Total)
FROM
	invoices
WHERE
	InvoiceDate LIKE "%2009%"

# 10. Write a query that includes the purchased track name with each invoice line ID.
	SELECT
	i.InvoiceLineID,
	t.Name
FROM
	invoice_items i
	JOIN tracks t ON i.TrackId = t.TrackId
ORDER BY
	i.InvoiceLineId

# 11. Write a query that includes the purchased track name AND artist name with each invoice line ID.
	SELECT
	i.InvoiceLineID,
	ar.Name,
	t.Name
FROM
	invoice_items i
	JOIN tracks t ON i.TrackId = t.TrackId
	JOIN albums a ON t.AlbumId = a.AlbumId
	JOIN artists ar ON ar.ArtistId = a.ArtistId
ORDER BY
	i.InvoiceLineId

# 12. Provide a query that shows all the Tracks, and include the Album name, Media type, and Genre.
	SELECT
	t.Name,
	a.Title,
	mt.Name,
	g.Name
FROM
	tracks t
	JOIN albums a ON t.AlbumId = a.AlbumId
	JOIN media_types mt ON mt.MediaTypeId = t.MediaTypeId
	JOIN genres g ON g.GenreId = t.GenreId

# 13. Show the total sales made by each sales agent.
	SELECT
	SUM(Total),
	e.FirstName
FROM
	customers c
	JOIN employees e ON c.SupportRepId = e.EmployeeId
	JOIN invoices i ON i.CustomerId = c.CustomerId
WHERE
	e.Title LIKE "%Agent%"
GROUP BY
	EmployeeId

# 14. Which sales agent made the most dollars in sales in 2009? 
SELECT
	SUM(Total),
	e.FirstName
FROM
	customers c
	JOIN employees e ON c.SupportRepId = e.EmployeeId
	JOIN invoices i ON i.CustomerId = c.CustomerId
WHERE
	e.Title LIKE "%Agent%"
	AND i.InvoiceDate LIKE "%2009%"
GROUP BY
	e.EmployeeId
ORDER BY
	e.EmployeeId DESC
LIMIT 1

  
