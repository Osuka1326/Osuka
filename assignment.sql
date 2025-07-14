create database cohort_raw;

CREATE TABLE cohort_data (
    cohort_id TEXT,
    cohort_code VARCHAR(20),
    start_date BIGINT,
    end_date BIGINT,
    size INTEGER
);

select * from cohort_data;

drop table cohort_data;
-- maximum and minimum cohort size?
select max(size) as max_size, min(size) as min_size
from cohort_data; -- result: max = 100000 and min = 3



-- checking for duplicates
SELECT cohort_code, COUNT(*)
FROM cohort_data
GROUP BY cohort_code
HAVING COUNT(*) > 1; -- result no duplicates found


-- average cohort size?
select avg(size) as avg_size
from cohort_data  -- result 5741.42 rounded to 2 decimal places


-- How many  cohorts are there?
select count(*) as cohort_count
from cohort_data -- result 639 cohorts


-- top 15 cohorts by size
select *
from cohort_data
order by size desc
limit 10;




