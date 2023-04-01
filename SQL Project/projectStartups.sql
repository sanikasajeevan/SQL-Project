create database project;
use project;
select * from startups;

/* 1) Write a query to fetch company name,
founders name,industries and funding amount 
from the startup table where the starting 
year is 2015 and E-learning industry     */

select Company,Founders,Industries,FundingAmount 
from startups where StartingYear=2015 
and Industries like "%E-Learning%";

/* 2) Write a query to fetch company name,funding amount and no.of investors 
where no of investors in between 10 and 40 and funding amount less than 7000000*/

select Company,FundingAmount,NoOfInvestors 
from startups where (NoOfInvestors between 10 and 40) 
and (FundingAmount<7000000);

/* 3) Write a query to find city having highest no of investors  */

select city,count(NoOfInvestors) from startups
 group by city order by count(NoOfInvestors) desc limit 1;

/* 4) Write a query to find company and name of founders
 having highest funding amount */

select Company,Founders,FundingAmount from startups
 where FundingAmount=(select max(FundingAmount) from startups);

/* 5) write a query to fetch the company name 
with industries Elearning and Edtech  */
select Company,Industries from startups
 where Industries like "%E-Learning%" or "%EdTech%";

/* 6) write a query to find company and
 starting year having lowest no of investors */
select Company,StartingYear,NoOfInvestors from startups
 where NoOfInvestors=(select min(NoOfInvestors) from startups);

/* 7) write a query to find company,funding round and starting year
 where funding round between 5 and 10 and StartingYear greater than 2017 */

select Company,FundingRound,StartingYear from startups
 where (FundingRound between 5 and 10) and (StartingYear>2017);
