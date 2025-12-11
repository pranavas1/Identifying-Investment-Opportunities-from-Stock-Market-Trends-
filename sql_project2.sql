SELECT * FROM project2.stocks;
SELECT * FROM stocks WHERE companyname = 'TCS';

SELECT DISTINCT Ticker
FROM stocks;
SELECT * FROM stocks 
ORDER BY Date DESC 
LIMIT 5;
SELECT * 
FROM stocks 
WHERE volumetraded > 1000000;
SELECT Ticker, AVG(closeprice) AS avg_closing_price 
FROM stocks 
GROUP BY ticker;
SELECT CompanyName, MAX(highprice) AS highest_price 
FROM stocks 
GROUP BY CompanyName;
SELECT CompanyName, sum(VolumeTraded) AS total_volume
FROM stocks 
GROUP BY CompanyName;
select* from stocks
where Date = '01/03/2024' and ClosePrice>OpenPrice;
SELECT * FROM stocks 
WHERE ClosePrice< openprice;
SELECT CompanyName,
       ROUND((SUM(closeprice - openprice) / SUM(openprice)) * 100, 2) AS percentage_change
FROM stocks
GROUP BY CompanyName;

Select s.ticker,s.Date,s.closeprice from stocks s 
join(
Select month(Date) as mon,max(ClosePrice) as max_close from stocks
group by month(Date)
)p
on MONTH(s.date) = p.mon
 AND s.closeprice = p.max_close;

  


