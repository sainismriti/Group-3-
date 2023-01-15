# Data Handling

## Data Sources

Our data was sourced from the following sources:

1. [College Scorecard](https://collegescorecard.ed.gov/data) by the U.S. Department of Education
2. Opportunity Insights' [Social Capital Atlas](https://socialcapital.org/?dimension=EconomicConnectednessIndividual&geoLevel=college&selectedId=&dim1=EconomicConnectednessIndividual&dim2=CohesivenessClustering&dim3=CivicEngagementVolunteeringRates&bigModalSection=&bigModalChart=scatterplot&showOutliers=false&colorBy=) (Specific link to data set [here](https://data.humdata.org/dataset/social-capital-atlas))
3. Payscale's [College Salary Report](https://www.payscale.com/college-salary-report/bachelors)

## Manipulations

We took the data from the College Scorecard and merged it with the data from the Social Capital Atlas and the College Salary Report. We then cleaned the data by removing unnecessary columns and rows, and renaming columns to make them more readable. We then exported the data to a CSV file, which we used to create our visualizations.

The original College Scorecard data had nearly 3,000 columns, so we narrowed it down significantly. The columns that we kept, along with their definitions, can be found [here](college_v2_dictionary.csv).

In addition to that, we made the following changes to our dataset:

1. Excluded For-Profit colleges
2. Renamed columns to make them more readable and easily understood
3. Converted the 'own_sc_low' variable to a percentage by multiplying it by 100 then dividing by 2

## Scripts

We used the following scripts to clean, manipulate, and help visualize our data:

1. [R Notebook](../scripts/r_notebook.Rmd)
   - This script was used to clean and manipulate our data. It also contains the code used to create our visualizations.
2. [Jupyter Notebok](../scripts/test-notebook.ipynb)
   - This notebook was used to get some descriptive statistics about our data sets, including the amount of null values, the amount of features and rows, and some basic internal visualizations.
3. [Stata File](../scripts/group3_datacleaning.do)
   - To be updated
