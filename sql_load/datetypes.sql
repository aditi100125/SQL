SELECT 
    job_title_short AS title,
    job_location AS location,
    job_posted_date AT TIME ZONE 'UTC' At TIME ZONE 'EST' AS date_time,
    EXTRACT(MONTH from job_posted_date) as date_month,
    EXTRACT(YEAR from job_posted_date) as date_year
    
FROM job_postings_fact
LIMIT 5;