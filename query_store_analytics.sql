#SQL project querying multiple tables, to gather statistics about a store, their orders, customers and data.
#BIT

#1. How many orders were placed in January? 
  SELECT
    COUNT(orderid)
  FROM
    JanSales
  WHERE
    length(orderid) = 6
    AND orderid <> 'Order ID'

#2. What is the total revenue for each product sold in January?
  SELECT
    SUM(Quantity) * price AS revenue,
    product
  FROM
    JanSales
  GROUP BY
    Product

#3. How many of those orders were for an iPhone? 
  SELECT
    COUNT(orderid)
  FROM
    JanSales
  WHERE
    length(orderid) = 6
    AND orderid <> 'Order ID'
    AND Product = 'iPhone'

  
#4. Which product was the cheapest one sold in January, and what was the price? 
SELECT DISTINCT
		Product, MIN(price) as min_price
	FROM
		JanSales

#5. Select the customer account numbers for all the orders that were placed in February. 
  SELECT DISTINCT
    acctnum
  FROM
    customers c
    INNER JOIN FebSales f ON c.order_id = f.orderid
  WHERE
    length(orderid) = 6
    AND orderid <> 'Order ID'


#6. Which products were sold in February at 548 Lincoln St, Seattle, WA 98101, how many of each were sold, and what was the total revenue?
  SELECT
    SUM(Quantity),
    SUM(Quantity) * price AS revenue,
    Product
  FROM
    FebSales
  WHERE
    LOCATION = '548 Lincoln St, Seattle, WA 98101'
  GROUP BY
    Product

#7. How many customers ordered more than 2 products at a time, and what was the average amount spent for those customers? 
  SELECT
    COUNT(DISTINCT c.acctnum) AS account,
    AVG(Quantity * price) AS average
  FROM
    FebSales f
    LEFT JOIN customers c ON f.orderid = c.order_id
  WHERE
    f.Quantity > 2
    AND length(orderid) = 6
    AND orderid <> 'Order ID'
