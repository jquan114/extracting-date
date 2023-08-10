select  extract (year from orderdate) as "year",
        extract (month from orderdate) as "month",
        extract (day from orderdate) as "day",
        sum(ol.quantity)
from orderlines as ol

group by 
    ROLLUP(
    extract (year from orderdate),
    extract (month from orderdate),
    extract (day from orderdate)  
   )
order by 
    extract ( year from orderdate),
    extract (month from orderdate),
    Extract ( day from orderdate);
