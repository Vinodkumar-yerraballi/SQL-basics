--If you want to find the top 5 countries with city name alphabetically and city_name in descending numerical values, we use the  groupby function
--and having used for condition and order by for ascending, descending, the values limit used for how many values we should print the data
SELECT city,count(city) as city_names
FROM patients
group by city 
having city_names >5
order by city asc, city_names asc
limit 5 ;

-- To remove the ducplicate values
select distinct company_name
from Works;

-- Write the query first name start with a and weight between 65 to 70 and gender like male and city name should be hamilton
select * from patients
where weight between 65 and 75
and first_name like 'a%'
and gender='M'
and city='Hamilton'
-- 
select m.match_id,m.player_1,m.player_2,m.winner,m.match_date,p.score
from Matches m
inner join Players p
on m.winner=p.player_name
order by match_date desc
limit 5 ;
