create schema cars;
use cars;
-- read data--
select*from car_dekho;
-- count total cars --
select count(*)from car_dekho;
-- how many cars will be able be available in 2023? --
select count(*) from car_dekho where year = 2023;
-- how many cars will be available for 2020,2021,2022 --
select count(*) from car_dekho where year = 2020; 
select count(*) from car_dekho where year = 2021; 
select count(*) from car_dekho where year = 2022; 
 -- group by --
-- select count(*) from car_dekho where year is (2020,2021,2022) group by year; -- 
-- 88 --
select year, count(*) from car_dekho group by year;
-- diesel car will be available in 2020 --
select count(*) from car_dekho where year = 2020 and fuel = 'diesel';
select count(*) from car_dekho where year = 2020 and fuel = 'petrol';
-- print all the fuel cars (petrol,diesel & cng) --
select year, count(*) from car_dekho where fuel = 'petrol' group by year;
select year, count(*) from car_dekho where fuel = 'diesel' group by year;
select year, count(*) from car_dekho where fuel = 'cng' group by year;

select year, count(*) from car_dekho group by year having count(*)>100;

select count(*) from car_dekho where year between 2015 and 2023;

select *from car_dekho where year between 2013 and 2023;
--- end ---
