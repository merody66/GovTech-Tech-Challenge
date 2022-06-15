# GovTech-Tech-Challenge
Repository containing solutions to Data-Engineer-Tech-Challenge

The repo is structured in 5 different branches according to the challenge requirements <br>
1. data-pipelines
2. databases
3. sys-design
4. charts-apis
5. ml

## Data Pipelines Task
For this task, I have broken down into two parts. First would be the actual data pipeline that handles the reading of sample dataset <br>
file and processes it to produce a cleaner dataset. Second would be the scheduling component, in which I have decided to use Apache Airflow. <br>

### Step 1
run processData.py with `python processData.py <dataset_filename>`