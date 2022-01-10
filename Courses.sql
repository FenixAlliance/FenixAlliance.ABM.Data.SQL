-- Get courses
SELECT 
	b.BusinessLegalName AS BUSINESS,
	c.Email AS INSTRUCTOR_EMAIL,
    u.Email AS INSTRUCTOR_USER_EMAIL, 
    i.Title as COURSE_TITLE
FROM item i
JOIN business b
	on b.ID = i.BusinessID
JOIN contactprofile cp
	on cp.ID = i.InstructorProfileID    
JOIN contact c
	on c.ID = cp.ContactID
JOIN aspnetusers u
	on u.Id = c.RelatedAccountHolderID
Where i.Type = "Course";