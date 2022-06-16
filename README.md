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
file and processes it to produce a cleaner dataset. Second would be the scheduling component, in which I think scheduling a cron to crontab would do the job. <br>

### Step 1
run processData.py with `python processData.py <dataset_filename>`

### Step 2
I actually intended to create a bash script to schedule the cron but due to the lack of time and mainly because I am using Windows, I have decided to
pen down my thoughts instead. 

### Step 3
`sudo crontab -e` <br>
insert this line into the cron file - `30 1 * * * /usr/bin/python /path/to/GovTech-Tech-Challenge/processData.py` <br>
The cron should run everyday at 1:30AM since the data files are expected to be available at 1:00AM everyday. 