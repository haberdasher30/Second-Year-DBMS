#12.	Write SQL Query to Perform right outer join to get the following output.
select course_id,title,dept_name,credits,prereq_id from CourseQ6
right outer join PrereqQ6 using(course_id);