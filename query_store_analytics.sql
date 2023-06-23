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
    
#8. List all the products sold in Los Angeles in February, and include how many of each were sold. 
  SELECT
    Product,
    SUM(quantity)
  FROM
    FebSales
  WHERE
    LOCATION LIKE '%Los Angeles%'
  GROUP BY
    Product
	
#9.  Which locations in New York received at least 3 orders in January, and how many orders did they each receive?
  SELECT DISTINCT
   location, 
   COUNT(orderID)
  FROM
   JanSales
  WHERE
   location LIKE '%NY%'
   AND length(orderid) = 6
   AND orderid <> 'Order ID'
   GROUP BY location
   HAVING COUNT(orderID) > 2

#10. How many of each type of headphone were sold in February?
  SELECT
	Product,
	SUM(Quantity) AS Quantity
  FROM
	FebSales
  WHERE
	length(orderid) = 6
	AND orderid <> 'Order ID'
	AND Product LIKE '%Headphones%'
  GROUP BY
	Product

#11. What was the average amount spent per account in February?
  SELECT
	AVG(Quantity * price) as Average
  FROM
	FebSales f
  LEFT JOIN 
	customers c
  ON 
	f.orderID = c.order_id
  WHERE
	length(orderid) = 6
	AND orderid <> 'Order ID'

#12. What was the average quantity of products purchased per account in February? 
  SELECT
	SUM(Quantity)/COUNT(c.acctnum) as Average
  FROM
	FebSales f
  LEFT JOIN 
	customers c
  ON 
	f.orderID = c.order_id
  WHERE
	length(orderid) = 6
	AND orderid <> 'Order ID'

#13. Which product brought in the most revenue in January and how much revenue did it bring in total? 
  SELECT
	Product,
	SUM(quantity * price) AS JanRevenue
  FROM
	JanSales
  GROUP BY
	Product
  ORDER BY
	SUM(Quantity * price) DESC
  LIMIT 1
