create database campus;
use campus;
create table students(
  student_id int primary key not null,
  stu_stu_company_name varchar(45),Gender varchar(45),Date_of_Birth date,
  Email varchar(45),phone varchar(12),Department varchar(45),CGPA decimal);
create table job_postings(
  Job_id int primary key not null,company_id int,Job_role Varchar(45),
  Salary Decimal,
  Deadline date,foreign key(company_id) references companies(company_id));
  
  ALTER TABLE job_postings
ADD CONSTRAINT fk_ompany_id
FOREIGN KEY (company_id)
REFERENCES companies(company_id)
ON DELETE CASCADE;
  create table companies(
  company_id int primary key not null,
  company_stu_company_name varchar(45),Industry_type varchar(45),
  contact_email varchar(45),contact_phone varchar(45),Location varchar(45));
  
  create table applications(
   application_id int primary key not null,
   student_id int,foreign key(student_id) references students(student_id),
   Job_id int,foreign key(Job_id) references job_postings(Job_id),
   application_date date,status varchar(45));
   
   ALTER TABLE applications
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id)
REFERENCES students(student_id)
ON DELETE CASCADE;

ALTER TABLE applications
ADD CONSTRAINT fk_Job_id
FOREIGN KEY (Job_id)
REFERENCES job_postings(Job_id)
ON DELETE CASCADE;
  create table interviews(
   interview_id int primary key,
   application_id int,foreign key(application_id) references applications(application_id),
   round_number int,
   interview_date date);
   
   ALTER TABLE interviews
ADD CONSTRAINT fk_application_id
FOREIGN KEY (application_id)
REFERENCES applications(application_id)
ON DELETE CASCADE;
   
create table placement(
placement_id int primary key not null,
student_id int,foreign key(student_id) references students(student_id),
company_id int,foreign key(company_id) references companies(company_id),
Job_id int,foreign key(Job_id) references job_postings(Job_id),
offer_date date,Joining_date date);
ALTER TABLE placement
ADD CONSTRAINT fk_company_id
FOREIGN KEY (company_id)
REFERENCES companies(company_id)
ON DELETE CASCADE;


-- ALTER TABLE job_postings ADD CONSTRAINT fk_company_id FOREIGN KEY (company_id) REFERENCES Companies(company_id) ON DELETE CASCADE;

INSERT INTO students (student_id, stu_name,email, department, cgpa) VALUES (1001, 'Angela Perez', 'coreyhodge@davis.com', 'IT', 8.77);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1002, 'Kenneth Keller', 'ycollins@gmail.com', 'CSE', 7.91);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1003, 'Manuel Harris', 'melissamontoya@strickland.net', 'ECE', 7.0);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1004, 'Anna Santana', 'grantburton@nguyen-brown.net', 'IT', 6.97);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1005, 'Rachel Young', 'moorejillian@deleon.info', 'IT', 9.11);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1006, 'Laura Powell', 'hannahboyer@hunter-williams.com', 'IT', 8.76);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1007, 'Whitney Stephenson', 'michaelshannon@gmail.com', 'IT', 6.35);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1008, 'Thomas Singh', 'natalie61@hotmail.com', 'CSE', 6.34);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1009, 'Sandra Chandler', 'kellynoah@marshall.com', 'IT', 8.42);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1010, 'Katherine Chang', 'fishertravis@campbell-andrews.com', 'CSE', 9.12);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1011, 'Tracy Sullivan', 'trevor41@simpson-hines.com', 'CSE', 8.78);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1012, 'Courtney Clark', 'lisapatterson@huber-orr.com', 'CSE', 8.85);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1013, 'John Baldwin', 'millerchris@gmail.com', 'CSE', 7.89);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1014, 'Alexander Miller', 'tammy72@patterson-robbins.com', 'IT', 7.76);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1015, 'Jeffrey Vega', 'emily68@hotmail.com', 'CSE', 8.65);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1016, 'Hannah Rojas', 'xwilson@gmail.com', 'ECE', 7.37);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1017, 'Pamela Harper', 'rowlanderica@gmail.com', 'IT', 8.54);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1018, 'Cassie Cook', 'powellmatthew@hotmail.com', 'CSE', 8.1);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1019, 'Chad Gross', 'valdezsarah@yahoo.com', 'ECE', 7.47);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1020, 'Traci Walker', 'colsen@hart.com', 'ECE', 6.64);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1021, 'Manuel Green', 'michaelbates@huff-hensley.net', 'CSE', 7.65);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1022, 'Heather Shah', 'jason25@scott-white.com', 'ECE', 6.54);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1023, 'Veronica Smith', 'nluna@hotmail.com', 'ECE', 6.51);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1024, 'Jennifer Williams', 'melissaferguson@yahoo.com', 'IT', 6.85);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1025, 'Andrew Kelly', 'nguyennicholas@gmail.com', 'IT', 8.64);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1026, 'Erin Holland', 'kevinwhitehead@anderson.com', 'IT', 8.24);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1027, 'Rodney Thomas', 'patrickmalik@gibson.com', 'CSE', 9.04);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1028, 'Steven Vang', 'bryan06@hotmail.com', 'IT', 7.7);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1029, 'Amanda Lyons', 'maryvalentine@gmail.com', 'ECE', 7.88);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1030, 'Dr. Jose Thompson DVM', 'hensonjoshua@yahoo.com', 'ECE', 6.94);
INSERT INTO students (student_id, stu__name, email, department, cgpa) VALUES (1031, 'Matthew Velasquez', 'patricia66@gmail.com', 'ECE', 7.32);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1032, 'Robert Carson', 'nicole57@hotmail.com', 'CSE', 8.26);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1033, 'Francisco Benjamin', 'gfoster@mcclure.com', 'IT', 6.43);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1034, 'Ray Brooks', 'lmoss@yahoo.com', 'CSE', 8.23);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1035, 'Matthew Thomas', 'cynthia10@gmail.com', 'CSE', 8.46);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1036, 'Donna Yoder', 'christopherestes@yahoo.com', 'IT', 7.26);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1037, 'Dana Campbell', 'charlesbaker@gmail.com', 'CSE', 8.54);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1038, 'Dustin Phillips', 'batesdiane@reynolds.org', 'ECE', 6.82);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1039, 'Matthew Peterson', 'mitchelljaclyn@hotmail.com', 'IT', 9.05);
INSERT INTO students (student_id, stu_name, email, department, cgpa) VALUES (1040, 'Chloe Morse', 'pcarter@gutierrez.com', 'CSE', 7.03);


-- Insert Companies
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2001, 'Castillo, Taylor and Murray', 'jennifercolon@rollins.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2002, 'Herman LLC', 'garciadaniel@benson-cannon.biz');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2003, 'Williams PLC', 'hillmelissa@rodriguez.net');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2004, 'Figueroa-Schmitt', 'audrey63@kent.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2005, 'Pierce, Franco and Jackson', 'pamela50@rivera.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2006, 'Clark PLC', 'arnoldspencer@bell.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2007, 'Brown, Johnson and Spencer', 'bryansara@galvan-fields.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2008, 'Morrison, Wright and Hensley', 'pgomez@hanna.org');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2009, 'Cook-Sullivan', 'mccoyjason@sweeney-rodriguez.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2010, 'Hahn, Gordon and Barnes', 'cpatterson@cunningham-hall.info');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2011, 'Schultz LLC', 'allencharles@cisneros-walker.net');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2012, 'Morales Inc', 'shelbymiller@strickland.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2013, 'Luna Inc', 'dwalker@schultz.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2014, 'Gutierrez, Sosa and Edwards', 'wesley72@harvey-reynolds.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2015, 'Schmidt Inc', 'mturner@sullivan.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2016, 'Williams, Chaney and Duke', 'davidmontgomery@stewart.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2017, 'Dodson and Sons', 'robertsjacob@robinson.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2018, 'Davis PLC', 'amy08@ayala.org');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2019, 'Melton LLC', 'hartmanjohn@brown-bailey.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2020, 'Roman-Perry', 'jeremy12@george.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2021, 'Flores, Martinez and Wilson', 'townsendjay@buckley-sanders.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2022, 'Morris-Carey', 'gmiller@miller.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2023, 'Rodriguez PLC', 'aaroncook@zimmerman-swanson.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2024, 'Smith Group', 'ahoffman@king.info');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2025, 'Cohen-Park', 'brandymccall@miller-stephens.biz');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2026, 'Simon, Cohen and Hicks', 'rebeccafoster@cole-parrish.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2027, 'Gonzalez Group', 'cmccall@peterson.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2028, 'Owens PLC', 'edwinandrews@phelps-buchanan.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2029, 'Erickson-Good', 'thomaslloyd@walsh.net');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2030, 'Jackson, Bolton and Fritz', 'melanie99@anderson.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2031, 'Rodriguez-Hudson', 'michael36@blake-singh.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2032, 'Pierce LLC', 'brianwalker@kelley.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2033, 'Allen Ltd', 'jeffery20@miranda.org');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2034, 'Burke Inc', 'michaelcaldwell@morales-martinez.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2035, 'Johnson-Brown', 'april05@gonzalez.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2036, 'Brown-Martin', 'greenjessica@nunez-davis.net');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2037, 'Travis-Bowman', 'eanthony@williams.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2038, 'Davis Group', 'jherman@moore-holmes.org');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2039, 'Rice-Price', 'thomashernandez@meadows-kelly.com');
INSERT INTO Companies (company_id, company_name, contact_email) VALUES (2040, 'Clark LLC', 'haleymoran@kim.com');
INSERT INTO companies (company_id, company_name, contact_email)
VALUES (41, 'TCS', 'contact@tcs.com');

-- Insert  job_postings
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3001, 2002, 'DevOps Engineer', 4.03,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3002, 2003, 'DevOps Engineer', 5.56,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3003, 2004, 'Analyst', 11.43,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3004, 2005, 'Analyst', 7.18,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3005, 2006, 'Software Engineer', 11.47,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3006, 2007, 'DevOps Engineer', 6.15,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3007, 2008, 'Analyst', 4.35,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3008, 2009, 'DevOps Engineer', 4.01,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3009, 2010, 'Analyst', 11.5,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3010, 2011, 'Analyst', 4.95,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3011, 2012, 'DevOps Engineer', 3.12,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3012, 2013, 'Software Engineer', 3.03,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3013, 2014, 'Analyst', 8.3,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3014, 2015, 'Software Engineer', 9.37,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3015, 2016, 'Software Engineer', 7.98,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3016, 2017, 'Software Engineer', 10.13,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3017, 2018, 'Software Engineer', 8.73,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3018, 2019, 'Analyst', 7.8,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3019, 2020, 'DevOps Engineer', 10.11,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3020, 2021, 'Software Engineer', 6.62,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3021, 2022, 'Analyst', 3.55,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3022, 2023, 'DevOps Engineer', 8.19,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3023, 2024, 'DevOps Engineer', 11.06,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3024, 2025, 'DevOps Engineer', 4.5,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3025, 2026, 'Analyst', 4.12,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3026, 2027, 'Software Engineer', 4.89,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3027, 2028, 'Software Engineer', 8.77,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3028, 2029, 'DevOps Engineer', 9.81,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3029, 2030, 'Software Engineer', 8.17,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3030, 2031, 'Software Engineer', 7.64,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3031, 2032, 'DevOps Engineer', 3.2,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3032, 2033, 'Analyst', 7.67,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3033, 2034, 'DevOps Engineer', 7.45,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3034, 2035, 'Software Engineer', 7.99,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3035, 2036, 'Software Engineer', 11.4,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3036, 2037, 'DevOps Engineer', 4.5,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3037, 2038, 'Software Engineer', 8.25,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3038, 2039, 'DevOps Engineer', 6.02,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3039, 2040, 'Analyst', 7.15,"2025-05-07");
INSERT INTO  job_postings (job_id, company_id,  job_role, Salary,Deadline) VALUES (3040, 2001, 'Software Engineer', 5.54,"2025-05-07");

-- Insert applications
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4001, 1002, 3002, '2025-03-16',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4002, 1003, 3003, '2025-01-16',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4003, 1004, 3004, '2025-04-11',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4004, 1005, 3005, '2025-04-06',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4005, 1006, 3006, '2025-03-25',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4006, 1007, 3007, '2025-03-21',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4007, 1008, 3008, '2025-04-19',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4008, 1009, 3009, '2025-01-20',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4009, 1010, 3010, '2025-04-07',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4010, 1011, 3011, '2025-01-01',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4011, 1012, 3012, '2025-01-04',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4012, 1013, 3013, '2025-02-13',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4013, 1014, 3014, '2025-01-23',"Selected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4014, 1015, 3015, '2025-02-04',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4015, 1016, 3016, '2025-02-08',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4016, 1017, 3017, '2025-01-30',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4017, 1018, 3018, '2025-02-10',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4018, 1019, 3019, '2025-04-03',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4019, 1020, 3020, '2025-01-01',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4020, 1021, 3021, '2025-01-31',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4021, 1022, 3022, '2025-03-17',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4022, 1023, 3023, '2025-01-01',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4023, 1024, 3024, '2025-02-06',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4024, 1025, 3025, '2025-02-21',"Rejected");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4025, 1026, 3026, '2025-03-29',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4026, 1027, 3027, '2025-01-26',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4027, 1028, 3028, '2025-03-22',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4028, 1029, 3029, '2025-03-04',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4029, 1030, 3030, '2025-02-25',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4030, 1031, 3031, '2025-04-17',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4031, 1032, 3032, '2025-03-31',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4032, 1033, 3033, '2025-02-09',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4033, 1034, 3034, '2025-04-03',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4034, 1035, 3035, '2025-02-06',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4035, 1036, 3036, '2025-01-18',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4036, 1037, 3037, '2025-03-11',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4037, 1038, 3038, '2025-03-10',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4038, 1039, 3039, '2025-02-16',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4039, 1040, 3040, '2025-04-12',"Shortlisted");
INSERT INTO applications (application_id, student_id, job_id, application_date,status) VALUES (4040, 1001, 3001, '2025-03-03',"Shortlisted");

-- Insert interviews
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5001, 4002, 1, '2025-04-06');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5002, 4003, 1, '2025-03-16');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5003, 4004, 2, '2025-04-20');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5004, 4005, 1, '2025-01-07');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5005, 4006, 2, '2025-04-05');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5006, 4007, 3, '2025-03-01');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5007, 4008, 3, '2025-03-31');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5008, 4009, 3, '2025-01-04');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5009, 4010, 1, '2025-03-30');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5010, 4011, 1, '2025-02-27');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5011, 4012, 2, '2025-02-07');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5012, 4013, 2, '2025-04-23');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5013, 4014, 2, '2025-04-12');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5014, 4015, 1, '2025-03-19');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5015, 4016, 3, '2025-04-01');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5016, 4017, 1, '2025-03-29');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5017, 4018, 2, '2025-02-01');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5018, 4019, 1, '2025-04-01');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5019, 4020, 3, '2025-03-14');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5020, 4021, 2, '2025-02-01');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5021, 4022, 3, '2025-04-17');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5022, 4023, 3, '2025-02-14');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5023, 4024, 1, '2025-03-09');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5024, 4025, 3, '2025-01-30');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5025, 4026, 2, '2025-04-06');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5026, 4027, 1, '2025-04-10');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5027, 4028, 1, '2025-02-03');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5028, 4029, 1, '2025-01-27');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5029, 4030, 2, '2025-04-06');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5030, 4031, 2, '2025-02-13');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5031, 4032, 1, '2025-04-07');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5032, 4033, 3, '2025-02-04');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5033, 4034, 2, '2025-03-03');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5034, 4035, 2, '2025-01-22');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5035, 4036, 1, '2025-03-11');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5036, 4037, 3, '2025-04-05');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5037, 4038, 1, '2025-01-16');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5038, 4039, 1, '2025-03-29');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5039, 4040, 3, '2025-03-08');
INSERT INTO interviews (interview_id, application_id, round_number, interview_date) VALUES (5040, 4001, 1, '2025-03-07');

-- Insert placement
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6001, 1002, 2002, 3002, '2025-04-29', '2025-05-02');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6002, 1003, 2003, 3003, '2025-01-30', '2025-02-03');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6003, 1004, 2004, 3004, '2025-04-16', '2025-04-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6004, 1005, 2005, 3005, '2025-03-18', '2025-03-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6005, 1006, 2006, 3006, '2025-01-08', '2025-01-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6006, 1007, 2007, 3007, '2025-04-07', '2025-04-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6007, 1008, 2008, 3008, '2025-01-24', '2025-01-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6008, 1009, 2009, 3009, '2025-04-26', '2025-04-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6009, 1010, 2010, 3010, '2025-01-01', '2025-01-10');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6010, 1011, 2011, 3011, '2025-04-26', '2025-04-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6011, 1012, 2012, 3012, '2025-04-10', '2025-04-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6012, 1013, 2013, 3013, '2025-02-04', '2025-04-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6013, 1014, 2014, 3014, '2025-02-04', '2025-03-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6014, 1015, 2015, 3015, '2025-03-12', '2025-03-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6015, 1016, 2016, 3016, '2025-01-20', '2025-04-29');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6016, 1017, 2017, 3017, '2025-03-06', '2025-03-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6017, 1018, 2018, 3018, '2025-03-01', '2025-03-10');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6018, 1019, 2019, 3019, '2025-03-06', '2025-03-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6019, 1020, 2020, 3020, '2025-02-18', '2025-02-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6020, 1021, 2021, 3021, '2025-01-11', '2025-01-15');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6021, 1022, 2022, 3022, '2025-04-18', '2025-04-25');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6022, 1023, 2023, 3023, '2025-02-27', '2025-03-01');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6023, 1024, 2024, 3024, '2025-03-14', '2025-03-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6024, 1025, 2025, 3025, '2025-02-05', '2025-02-10');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6025, 1026, 2026, 3026, '2025-02-20', '2025-02-25');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6026, 1027, 2027, 3027, '2025-04-07', '2025-04-10');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6027, 1028, 2028, 3028, '2025-01-27', '2025-03-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6028, 1029, 2029, 3029, '2025-02-10', '2025-02-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6029, 1030, 2030, 3030, '2025-02-26', '2025-03-01');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6030, 1031, 2031, 3031, '2025-01-04', '2025-01-10');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6031, 1032, 2032, 3032, '2025-02-20', '2025-02-25');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6032, 1033, 2033, 3033, '2025-02-13', '2025-02-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6033, 1034, 2034, 3034, '2025-01-14', '2025-01-20');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6034, 1035, 2035, 3035, '2025-02-08', '2025-02-15');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6035, 1036, 2036, 3036, '2025-01-30', '2025-02-01');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6036, 1037, 2037, 3037, '2025-01-25', '2025-02-01');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6037, 1038, 2038, 3038, '2025-04-01', '2025-04-05');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6038, 1039, 2039, 3039, '2025-04-30', '2025-05-01');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6039, 1040, 2040, 3040, '2025-02-10', '2025-02-15');
INSERT INTO placement (placement_id, student_id, company_id, job_id, offer_date,Joining_date) VALUES (6040, 1001, 2001, 3001, '2025-04-25', '2025-05-02');

select* from placement;

-- views for students
CREATE VIEW view_students AS
SELECT student_id, stu_name,email, department, cgpa
FROM students;
SELECT * FROM view_students;
-- view for companies
CREATE VIEW view_companies AS
SELECT company_id, company_name , contact_email
FROM companies;
SELECT * FROM view_companies;
-- views for applications
CREATE VIEW view_applications AS
SELECT application_id, student_id, job_id, application_date,status
FROM applications;
SELECT * FROM view_applications;
-- views for job postings
CREATE VIEW view_job_postings AS
SELECT Job_id, company_id, Job_Role, Salary
FROM job_postings;

-- View for Interviews
CREATE VIEW view_interviews AS
SELECT interview_id, application_id, round_number, interview_date
FROM Interviews;


-- stored procedure for student table
DELIMITER //

CREATE PROCEDURE AddStudent (
    IN p_student_id INT,
    IN p_name VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_department VARCHAR(50),
    IN p_cgpa DECIMAL(4,2)
)
BEGIN
    INSERT INTO Students (student_id, stu_name, Email, Department,CGPA)
    VALUES (p_student_id, p_name, p_email, p_department, p_cgpa);
END //

DELIMITER ;
CALL AddStudent(41,"Angela Perez","coreyhodge@davis.com","IT",9);

-- Companies Table – Insert Stored Procedure
DELIMITER //

CREATE PROCEDURE AddCompany (
    IN p_company_id INT,
    IN p_company_name VARCHAR(100),
    IN p_contact_email VARCHAR(100)
)
BEGIN
    INSERT INTO companies (company_id, company_name,contact_email) 
    VALUES(p_company_id,p_company_name, p_contact_email);
END //
 DELIMITER ;
call AddCompany(43,"Hs03","hs03@gmail.com");



-- Job_Postings Table – Insert Stored Procedure
DELIMITER //

CREATE PROCEDURE AddJobPosting (
    IN p_Job_id INT,
    IN p_company_id INT,
    IN p_Job_role VARCHAR(100),
    IN p_Salary DECIMAL(5,2)
)
BEGIN
    INSERT INTO Job_Postings (job_id, company_id, Job_role, Salary)
    VALUES (p_job_id, p_company_id, p_Job_role, p_Salary);
END //

DELIMITER ;

CALL AddJobPosting(45, 41, "Analyst", 8);


 -- Applications Table – Insert Stored Procedure
 DELIMITER //
-- Applications Table – Insert Stored Procedure
CREATE PROCEDURE AddApplication (
    IN p_application_id INT,
    IN p_student_id INT,
    IN p_job_id INT,
    IN p_application_date DATE
)
BEGIN
    INSERT INTO Applications (application_id, student_id, job_id, application_date)
    VALUES (p_application_id, p_student_id, p_job_id, p_application_date);
END //

DELIMITER ;

--  Interviews Table – Insert Stored Procedure
DELIMITER //

CREATE PROCEDURE AddInterview (
    IN p_interview_id INT,
    IN p_application_id INT,
    IN p_round_number INT,
    IN p_interview_date DATE
)
BEGIN
    INSERT INTO Interviews (interview_id, application_id, round_number, interview_date)
    VALUES (p_interview_id, p_application_id, p_round_number, p_interview_date);
END //

DELIMITER ;

-- Placement Table – Insert Stored Procedure
DELIMITER //

CREATE PROCEDURE AddPlacement (
    IN p_placement_id INT,
    IN p_student_id INT,
    IN p_company_id INT,
    IN p_job_id INT,
    IN p_offer_date DATE
)
BEGIN
    INSERT INTO Placement (placement_id, student_id, company_id, job_id, offer_date)
    VALUES (p_placement_id, p_student_id, p_company_id, p_job_id, p_offer_date);
END //

DELIMITER ;

-- How to list all job roles offering salary above 6 LPA?
SELECT * FROM view_job_postings WHERE Salary > 6.0;

-- How can you retrieve all students with CGPA above 8.0?
SELECT * FROM view_students WHERE cgpa > 8.0;

-- How can you find applications submitted after March 1, 2025?
SELECT * FROM view_applications WHERE application_date > '2025-03-01';

-- How do you list all interview rounds scheduled for 2nd round?
SELECT * FROM view_interviews WHERE round_number = 2;








