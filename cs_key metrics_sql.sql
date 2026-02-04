-- 1. Find the first response time, first resolution time & full resolution time baseline. (Baseline taken from average 2024 data)
select
	 avg (first_response_time_minutes) as first_response_time_minutes_baseline,
	 avg (first_resolution_time_minutes) as first_resolution_time_minutes_baseline,
	 avg (full_resolution_time_minutes) as full_resolution_time_minutes_baseline
from `cs_key_metrics`.`cleaned_cs_key metrics`
WHERE year = 2024

-- 2. Find the number of good satisfactory score and true from isFCR (First Contract Rate) baseline.
SELECT 
    SUM(CASE WHEN satisfaction_score = 'Good' THEN 1 ELSE 0 END) AS satisfactory_score_good_baseline,
    SUM(CASE WHEN isfcr = 'TRUE' THEN 1 ELSE 0 END) AS isfcr_true_baseline
 FROM `cs_key_metrics`.`cleaned_cs_key metrics`
 WHERE year = '2024'

-- 3. Find the 2025 first response time, first resolution time & full resolution time performance.
select
	avg (first_response_time_minutes) as first_response_time_minutes_baseline,
	avg (first_resolution_time_minutes) as first_resolution_time_minutes_baseline,
	avg (full_resolution_time_minutes) as full_resolution_time_minutes_baseline
from `cs_key_metrics`.`cleaned_cs_key metrics`
WHERE year = '2025'

-- 4. Find the 2025 number of good satisfactory score and true from isFCR (First Contract Rate).
SELECT 
    SUM(CASE WHEN satisfaction_score = 'Good' THEN 1 ELSE 0 END) AS satisfactory_score_good_baseline,
    SUM(CASE WHEN isfcr = 'TRUE' THEN 1 ELSE 0 END) AS isfcr_true_baseline
FROM `cs_key_metrics`.`cleaned_cs_key metrics`
WHERE year = '2025'