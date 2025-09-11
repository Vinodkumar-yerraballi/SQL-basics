--If you want to find the top 5 countries with city name alphabetically and city_name in descending numerical values, we use the  groupby function
--and having used for condition and order by for ascending, descending, the values limit used for how many values we should print the data
SELECT city,count(city) as city_names
FROM patients
group by city 
having city_names >5
order by city asc, city_names asc
limit 5 ;

-- Write the query first name start with a and weight between 65 to 70 and gender like male and city name should be hamilton
select * from patients
where weight between 65 and 75
and first_name like 'a%'
and gender='M'
and city='Hamilton'
