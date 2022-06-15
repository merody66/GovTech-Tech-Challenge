import csv
import sys

from torch import true_divide

### Usage: python processData.py <csv_file_name>

FILE_NAME = sys.argv[1]
OUTPUT_FILE_NAME = 'processed_dataset.csv'

processed_data = []

with open(FILE_NAME, mode='r') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    header = []
    header = next(csv_reader)

    for row in csv_reader:
        # print(row)
        name = row[0].split()
        if len(name) != 0:
            first_name = name[0]
            last_name = name[1]
            # print(first_name, last_name)
            
            price = float(row[1])
            if price > 100:
                above_100 = True

            processed_data.append([first_name, last_name, price, above_100])

        # if row does not have a name, don't process that row
        else:
            continue

    # print(processed_data)


with open(OUTPUT_FILE_NAME, mode='w', newline='') as output_file:
    output_writer = csv.writer(output_file, delimiter=',')
    output_header = ['first_name', 'last_name', 'price', 'above_100']
    output_writer.writerow(output_header)
    output_writer.writerows(processed_data)