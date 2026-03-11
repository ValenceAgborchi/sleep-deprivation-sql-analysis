# Sleep Deprivation SQL Analysis

This project explores a sleep deprivation dataset from Kaggle using SQL.

The goal was to investigate relationships between sleep patterns, cognitive performance, and lifestyle factors.

Dataset size:
- 60 participants
- Variables include sleep hours, sleep quality, daytime sleepiness, caffeine intake, and stress levels.

## Questions Explored

1. How does daytime sleepiness change across different sleep durations?
2. Does sleep quality change with age?
3. Is higher caffeine intake associated with higher stress levels?

## Tools Used

- SQLite
- SQL
- Kaggle dataset

## Example Query

SELECT caffeine_intake, AVG(stress_level)
FROM sleep_deprivation_dataset_detailed
GROUP BY caffeine_intake;

## Repository Structure

data/ – raw dataset  
queries/ – SQL queries used for analysis  
slides/ – LinkedIn slides summarizing findings 
