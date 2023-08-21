-- Dataset taken from BIT(Break Into Tech) Data Analysis course. 

-- Final SQL project. 

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

# 5. SELECT DISTINCT
	BillingCountry
FROM
	invoices
    
  
