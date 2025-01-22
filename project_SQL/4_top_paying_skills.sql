
SELECT 
    skills,
    round(avg(salary_year_avg)) as average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim on job_postings_fact.job_id=skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id=skills_dim.skill_id
WHERE job_title_short='Data Analyst' 
and salary_year_avg is NOT NULL
GROUP BY skills
ORDER BY average_salary DESC
LIMIT 25
