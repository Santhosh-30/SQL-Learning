-- now we wre going to make an data cleaning project with sql
-- now wew need to do it in a step by step procedure

-- 1.we need to remove duplicates from our data

select* from eg;
-- before actually changing anything from our orginal data we need to take a backup this is crucial step 
-- then we can work on the back up data so the actual data will be there

create table clean like eg;
-- it create  the structure of the table like eg

select* from clean;
-- now we need to copy our data feom eg it can be done through

insert into clean
select * from eg;
-- so now we have successfully copyed everything from eg

select* ,
 row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,'date',stage,country,funds_raised_millions ) as row_num
 from clean ;
-- now ew need to find any duplicates in our data 
-- it cam be done through window function now we are creating a row no column in our table then partitioning with every column from our table
-- it checjks each an every row with thier corresponding colum if two row matches then the row no will be 2 similarly how many row matches then the row number will be incresed that much time
 
 with stage_  as (
 select * ,
 row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions ) as row_num
 from clean 
 )
 select * from stage_ where row_num>1;
-- now we ara making an cte to check whether any duplicates if row_num is > 1 then it definitly should be a duplicate
 
 select * from clean where company='Hibob';
-- now we are checking those duplicte rows

-- now we can't delete a row from cte so we need to create a new we can't create a table like before we did with "like" keyword
-- because we are creating a new column so we need to crete it as new
-- you can copy insert statements from your from your table in mysql
 CREATE TABLE `Stage1` (
  `company` text,
  `location` text,
  `industry` text,
  `total_laid_off` int DEFAULT NULL,
  `percentage_laid_off` text,
  `date` text,
  `stage` text,
  `country` text,
  `funds_raised_millions` int DEFAULT NULL,
  `row_num` int
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

 
 select * from stage1;
 
 
 insert into stage1
  select * ,
 row_number() over(partition by company,location,industry,total_laid_off,percentage_laid_off,`date`,stage,country,funds_raised_millions ) as row_num
 from clean;
-- now we are inserting data into our table with the same command from the cte

select * from stage1 where row_num>1;
-- now we are finding duplicates

delete from stage1 where row_num>1;
-- now we are deleting those duplicates

select* from stage1;
-- this is the table after removing duplicates


-- step 2 standardizing data

-- this process involves removing unwanted spaces and periods'.' from our data and also finding the mistakes in the data

select distinct company ,trim(company)from stage1
;

update stage1 set company=trim(company);
update stage1 set location=trim(location);
update stage1 set industry=trim(industry);
update stage1 set stage=trim(stage);
update stage1 set country=trim(country);
-- now we are removing the unwanted spaces from each column

select distinct company from stage1 order by 1;
select distinct location from stage1 order by 1;
select distinct industry from stage1 order by 1;
select distinct stage from stage1 order by 1;
select distinct country from stage1 order by 1;
-- now we are checking each and every column data by spelling or .

update stage1 set industry='crypto' where
industry='crypto%';
-- after identifiying mistakes it need to be updated

-- step 3 dealing with null and blank values

-- the best practice while dealing in null and blank values we always convert the blank values to null values 

select * from stage1;
update stage1 set total_laid_off = null where total_laid_off='';
update stage1 set company = null where company='';
update stage1 set location = null where location='';
update stage1 set industry = null where industry='';
update stage1 set percentage_laid_off = null where percentage_laid_off='';
update stage1 set `date` = null where `date`='';
update stage1 set stage = null where stage='';
update stage1 set country = null where country='';
update stage1 set funds_raised_millions = null where funds_raised_millions='';
-- now we are updating every blank vaues as null values 

select  distinct industry from stage1 order by 1;
select * from stage1 where industry is null;
-- now we are checking each any every column based on their null values
-- if we can populate data from other rows we need to do it
-- eg in this below code we are identifying the industry's which are null
-- we can check whether the company name is same then they might be the same industry

select* from stage1 where company='Airbnb';
-- now we are checking an eg company from this data
select * from stage1 as t1 join stage1 as t2 on
(t1.company=t2.company and t1.industry is null) and t2.industry is not null;
-- to populate data you need to have join the same table by giving diffrent alis
-- in this we are checking company name should be same in both table then in one table if the industry is null then another table industry is not null by same company name

update stage1 t1
join stage1 as t2
on t1.company=t2.company and t1.location=t2.location set
t1.industry=t2.industry where
t1.industry is null and t2.industry is not null;
-- now we are updating our populate data to the table

select* from stage1;
-- verifying the table

delete from stage1  where industry is null ;
-- now we are deleting the industry which is still null after populated too...

select *  from stage1 where stage is null;
-- checking the stage

select* from stage1 where total_laid_off is null and percentage_laid_off is null;
-- we are identifying if these both are null then they are useless

delete from stage1 where total_laid_off is null and percentage_laid_off is null;
-- now the useless data are delted from the table

 select * from stage1;
 