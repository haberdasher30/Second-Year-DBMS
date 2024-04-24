# 13.	Write SQL query to Perform full outer join to get the following output. 
select course_id,title,dept_name,credits,prereq_id from CourseQ6
left join PrereqQ6 using(course_id)
union
select course_id,title,dept_name,credits,prereq_id from CourseQ6
right join PrereqQ6 using(course_id);
