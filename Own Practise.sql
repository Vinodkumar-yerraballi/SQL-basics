--If you want to find the top 5 countries with city name alphabetically and city_name in descending numerical values, we use the  groupby function
--and having used for condition and order by for ascending, descending, the values limit used for how many values we should print the data
SELECT city,count(city) as city_names
FROM patients
group by city 
having city_names >5
order by city asc, city_names asc
limit 5 ;
