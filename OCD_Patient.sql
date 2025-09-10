-- 1. Count & Percentage of pateint by gender, and it's respective Average Obsession Score
with data as(
select 
Gender, 
count(`Patient ID`) as patient_count
from ocd_patient_dataset
group by 1
order by 2
)

select 

sum(case when Gender = 'Female' then patient_count else 0 end) as count_female,
sum(case when Gender = 'Male' then patient_count else 0 end) as count_male,

round(
(sum(case when Gender = 'Female' then patient_count else 0 end)) * 100/ (
sum(case when Gender = 'Female' then patient_count else 0 end) + 
sum(case when Gender = 'Male' then patient_count else 0 end) ), 2) as pct_female,

round(
((sum(case when Gender = 'Male' then patient_count else 0 end)) * 100/ (
sum(case when Gender = 'Female' then patient_count else 0 end) + 
sum(case when Gender = 'Male' then patient_count else 0 end) )),2 ) as pct_male

from data
;


-- 2. Count of Patient by Ethnicities and their respective Average Obsession Score
select Ethnicity,
count(`Patient ID`) as patient_count,
avg(`Y-BOCS Score (Obsessions)`) as obs_score
from ocd_patient_dataset
group by 1
order by 2
;

-- 3. Number of people diagnosed with OCD MoM
alter table ocd_patient_dataset
modify `OCD Diagnosis Date` date;

select
date_format(`OCD Diagnosis Date`, '%Y-%m-01') as month,
count(`Patient ID`) as patient_count
from ocd_patient_dataset
group by 1
order by 1;

-- 4. What is the most common Obsession Type (Count) & it's respective Average Obsession Score
select
`Obsession Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`), 2) as obs_score
from ocd_patient_dataset
group by 1
order by 2;

-- 5. What is the most common Compulsion type (Count) & and it's respective Average Obsession Score
select
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`), 2) as obs_score
from ocd_patient_dataset
group by 1
order by 2;






