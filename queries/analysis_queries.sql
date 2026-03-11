-- Question 1
-- Daytime sleepiness vs sleep hours

SELECT
CASE
    WHEN sleep_hours < 5 THEN 'Sleep Deprived'
    WHEN sleep_hours BETWEEN 5 AND 7 THEN 'Moderate Sleep'
    ELSE 'Well Rested'
END AS sleep_group,
AVG(daytime_sleepiness)
FROM sleep_deprivation_dataset_detailed
GROUP BY sleep_group;

-- Question 2
-- Sleep quality vs age

SELECT
CASE
    WHEN age BETWEEN 18 AND 25 THEN '18-25'
    WHEN age BETWEEN 26 AND 35 THEN '26-35'
    ELSE '36+'
END AS age_group,
AVG(sleep_quality_score)
FROM sleep_deprivation_dataset_detailed
GROUP BY age_group;

-- Question 3
-- Caffeine vs stress

SELECT caffeine_intake, AVG(stress_level)
FROM sleep_deprivation_dataset_detailed
GROUP BY caffeine_intake
ORDER BY caffeine_intake;
