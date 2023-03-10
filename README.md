# Group-3

Our website combines and streamlines the college application selection process for students and parents by providing a platform for students to search for colleges and universities, and for parents to search for colleges and universities that are a good fit for their children.

To help students evaluate schools based on these concerns, our website helps compare tuition costs, career outcomes, and social capital all in one place, to help choose a school that is affordable and likely to help them achieve their goals.

**Link to project:** <https://sainismriti.github.io/Group-3-/>

![Website screenshot](/images/website_screenshot.png)

## Authors

- [Faye Henry](https://github.com/fhenry551)
- [Jake Steckler](https://github.com/jakesteckler)
- [Jordan Callahan](https://github.com/jordancallahan)
- [Smriti Saini](https://github.com/sainismriti)

## How It's Made

**DATA used:** College Scorecard, Opportunity Insights
The college Scorecard data is a large dataset and we used it on our desktop. The link to the data is [here](https://collegescorecard.ed.gov/data/).
The Opportunity Insights data is called [social_capital_college.csv](data/social_capital_college.csv) and is in the [data](data) folder of the Group-3 repository.

**Tech used:** HTML, CSS, JavaScript, Datawrapper, Stata, R, and DALL-E

This website was created primarily using HTML, CSS, and a little bit of JavaScript. The data was gathered from many sources, including [College Scorecard](https://collegescorecard.ed.gov/compare), Opportunity Insights' [Social Capital Atlas](https://socialcapital.org/?dimension=EconomicConnectednessIndividual&geoLevel=college&selectedId=&dim1=EconomicConnectednessIndividual&dim2=CohesivenessClustering&dim3=CivicEngagementVolunteeringRates&bigModalSection=&bigModalChart=scatterplot&showOutliers=false&colorBy=), and Payscale's [College Salary Report](https://www.payscale.com/college-salary-report/bachelors), and the data was visualized using R and Datawrapper.

Using STATA, we combined all relevant metrics into a single dataset. The do-file can be found at [here](scripts/Group3_datacleaning.do) in the [scripts](scripts) folder. We then used R to create an interactive datatable that allows students to sort by each metric and search for their colleges of choice. R code with notes can be found in scripts/r_notebook.Rmd. Additionally, with the combined dataset, we created a map visualization in Datawrapper (link [here](https://datawrapper.dwcdn.net/T6xvO/6/)), which allows users of the website to see geographically where all the colleges in our dataset are located.

We also used OpenAI's DALL-E to create images on our homepage to help set an appropriate tone for the website and be as user friendly as possibly.

There is a link to a data readme file in our data folder, linked [here](data/README.md).

## Lessons Learned

### Agile

As a team, when we first used agile methodologies, we learned how to be more flexible and responsive to change. We learned how to break projects down into smaller, more manageable chunks, which allowed us to focus on delivering value incrementally and continuously. This approach also helped us to work more collaboratively, with a focus on clear communication and shared goals. Additionally, we learned how to prioritize and manage our workload more effectively by regularly reassessing priorities and adjusting our plans accordingly. Overall, using agile methodologies for the first time was a valuable learning experience for us as it helped us to improve our ability to deliver high-quality work in a dynamic and fast-paced environment.

### Git

As a team, when we first used git, we learned how to manage and track changes to our codebase more effectively. The four of us had varying levels of familiarity and comfort with the technology, which allowed us to lean on each other for support. We learned how to use branches to isolate different features and fix bugs, and how to use pull requests to review and merge changes. We also learned how to use git for collaboration and version control, allowing us to work on the same codebase at the same time without interfering with each other's work. Using git for the first time was a valuable learning experience for us as it helped us to improve our workflow and collaboration efforts.

### Data Visualization

By attempting to visualize our data in a coherent, useable way, we learned the challenges of handling a large dataset. It took a great deal of deliberation to determine which of the datasets nearly 8000 schools were applicable to our purporse and which of the thousands of available variables were relevant. Once this part was settled, we also learned the challenges of converting a dataset of raw information into a user-friendly visualization. We initially intended to visualize all variables on one interactive map on Datawrapper, but faced challenges making the information user friendly given the size of the dataset and number of variables. Instead, we used Datawrapper to simply show the locations of the many colleges in the U.S. 

### Burndown

The link to the file: [https://docs.google.com/spreadsheets/d/1-LDDnzYHJmxts6pnp8wE-N1GPX4PMQ6uH_59U33kfp0/edit#gid=2024175038](https://docs.google.com/spreadsheets/d/1-LDDnzYHJmxts6pnp8wE-N1GPX4PMQ6uH_59U33kfp0/edit#gid=2024175038)
