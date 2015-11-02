__author__ = 'Abdulquadir Shaikh, Nagesh Dali Venugopal'
__version__ = 1.0
__DateCreated__ = 10/27/2015


# Import packages
from bs4 import BeautifulSoup
import urllib.request
import xlsxwriter

# Read URL and open URL
url = "file:///E:/EE297BProject/297bcoverage/urgReport/dashboard.html"
page = urllib.request.urlopen(url)

# Read HTML page
soup = BeautifulSoup(page, "html.parser")

# Extract table from HTML
table0 = soup.findAll('table', attrs={'align': 'left'})[0]
table1 = soup.findAll('table', attrs={'align': 'left'})[1]

list_of_rows = []

# Function to extract table data from HTML


def extractrows(tabledata):

    for row in tabledata.findAll('tr'):
        list_of_cell = []

        for cell in row.findAll('td'):
            text = cell.text.replace('&nbsp;', '')
            list_of_cell.append(text)

        list_of_rows.append(list_of_cell)

    return list_of_rows

extractrows(table0)
extractrows(table1)

# Create an excel sheet using XLSXWriter Package
workbook = xlsxwriter.Workbook('E:\EE297BProject\coverageproject\samplecov.xlsx')
worksheet = workbook.add_worksheet()

# Initialize row and columns
row = 0
col = 0
i = 0

# Write data from table into excel sheet
for elements in list_of_rows:

    for element in range(len(elements)):
        worksheet.write(row, col+i, elements[i])
        i += 1

    i = 0
    row +=1

workbook.close()