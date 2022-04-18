# Pewlett Hackard Analysis
## Overview of Project
### Purpose

Based on Pewlett Hackard's 6 employee information CSVs, we were able to help Bobby build an employee database in SQL. Now, Bobby's manager has requested some additional information:

1. Determine the number of retiring employees per title
2. Identify employees who are eligible to participate in a mentorship program.

This report will summarize this analysis and help prepare Bobby's manager for the "silver tsunami" as many current employees reach retirement age at Pewlett Hackard.

## Results

We used PostgreSQL to create the initial Pewlett Hackard employee database and we used pgAdmin to perform SQL queries to generate the requested future planning analysis.

To determine the number of retiring employees per title, we initially created a retirement titles table that holds all the titles of employees who were born between January 1, 1952 and December 31, 1955. We, then, pulled a unique table that contains the most recent title of each employee because some employees may have multiple titles in the database—for example, due to promotions. Then, the COUNT() function was used to create a table that has the number of current retirement-age employees by most recent job title (see Figure 1). Employees who have already left the company have been excluded.

![image](https://user-images.githubusercontent.com/99936542/163745410-acd971bc-b3b8-49d9-b1c8-53d8b88d1d5a.png)

<b>Fig.1 - Retiring Employees Per Title </b>

To identify employees who are eligible to participate in a mentorship program, we created a mentorship eligibility table that holds the current employees who were born in 1965. Figure 2 shows a snapshot of current employees eligible to participate in the mentorship program.

![image](https://user-images.githubusercontent.com/99936542/163753291-59ee550a-0520-43e8-8090-e3093904291b.png)

<b>Fig.2 - Snapshot of Employees Eligible for Mentorship Program </b>

Based on the two analysis deliverables described above,

- About 30% of the all employees who are currently employed at Pewlett Hackhard are born between 1952 and 1955 and therefore, eligible to retire (i.e., 72,458 out of 240,124 total current employees).
- About 70% of the employees eligible to retire hold senior-level job titles (i.e., Senior Engineer or Senior Staff) at Pewlett Hackhard.
- There are only 2 current managers eligible to retire.
- There are 1,549 unique employees who are currently employed at Pewlett Hackhard and who were born in 1965 and therefore, eligible to participate in the mentorship program.

## Summary

1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?

Assuming all positions held by eligible future retirees will need to be filled, Pewlett Hackhard will have to fill a total of 72,458 roles.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

No, there will not be enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackhard employees. If the new mentoriship program only seeks employees born in 1965, then only 1,549 current employees would be eligible to participate in the mentorship program.

Below are two additional queries or tables that may provide more insight into the upcoming "silver tsunami."

1. Employees eligible for the mentorship program by title -- This query helps us understand the job title breakdown of potential mentors based on the current eligibility criteria.

![image](https://user-images.githubusercontent.com/99936542/163752034-3469ddcd-8a6b-4711-9ad4-2854d8385848.png)

2. Current employees with senior-level roles not eligible for retirement - Expanding the mentorship program eligibility criteria to include more current employees with senior-level positions in the company can help minimize the impact of the "silver tsunami".

![image](https://user-images.githubusercontent.com/99936542/163752739-e00f757a-53b5-4395-bdac-f025bd4df592.png)


## Resources
- Data Sources: departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv
- Software: PostgreSQL, pgAdmin