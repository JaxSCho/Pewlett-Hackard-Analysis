--------------------------------------------------------------
-- Deliverable 1: The Number of Retiring Employees by Title --
--------------------------------------------------------------

-- Retrieve employee and title information born between 1952 and 1955 
SELECT e.emp_no, 
	e.first_name, 
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
--INTO retirement_titles 
FROM employees AS e
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

-- Distinct employee info and current title information -- 72,458
SELECT DISTINCT ON (emp_no) emp_no, 
	first_name, 
	last_name,
	title
--INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no;

-- Employee count by title
SELECT COUNT(emp_no) as count, title
--INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count desc;

----------------------------------------------------------------------
-- Deliverable 2: The Employees Eligible for the Mentorship Program --
----------------------------------------------------------------------

SELECT DISTINCT ON (e.emp_no) e.emp_no, -- 1,549
	e.first_name, 
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
--INTO mentorship_eligibility 
FROM employees AS e
INNER JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
INNER JOIN titles AS t
ON (e.emp_no = t.emp_no) and t.to_date = '9999-01-01'
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
	AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;

