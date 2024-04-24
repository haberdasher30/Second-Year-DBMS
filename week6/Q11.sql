#11 Write SQL Query to Perform left outer join to get the following output.
select course_id,title,dept_name,credits,prereq_id from CourseQ6
left outer join PrereqQ6 using(course_id);