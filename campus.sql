create database campus;
use campus;
create table Students(
  student_id int primary key not null,
  stu_name varchar(45),Gender varchar(45),Date_of_Birth date,
  Email varchar(45),phone varchar(12),Department varchar(45),CGPA decimal);
create table Job_Postings(
  Job_id int primary key not null,company_id int,Job_Role Varchar(45),
  Salary Decimal,
  Deadline date,foreign key(company_id) references companies(company_id));
  create table companies(
  company_id int primary key not null,
  company_name varchar(45),Industry_type varchar(45),
  contact_email varchar(45),contact_phone varchar(45),Location varchar(45));
  
  create table Applications(
   application_id int primary key not null,
   student_id int,foreign key(student_id) references Students(student_id),
   Job_id int,foreign key(Job_id) references Job_Postings(Job_id),
   application_date date,status varchar(45));
   
   ALTER TABLE Applications
ADD CONSTRAINT fk_student_id
FOREIGN KEY (student_id)
REFERENCES Students(student_id)
ON DELETE CASCADE;

ALTER TABLE Applications
ADD CONSTRAINT fk_Job_id
FOREIGN KEY (Job_id)
REFERENCES job_postings(Job_id)
ON DELETE CASCADE;
  create table Interviews(
   interview_id int primary key,
   application_id int,foreign key(application_id) references Applications(application_id),
   round_number int,
   interview_date date);
   
   ALTER TABLE interviews
ADD CONSTRAINT fk_application_id
FOREIGN KEY (application_id)
REFERENCES Applications(application_id)
ON DELETE CASCADE;
   
create table Placement(
Placement_id int primary key not null,
student_id int,foreign key(student_id) references Students(student_id),
company_id int,foreign key(company_id) references companies(company_id),
Job_id int,foreign key(Job_id) references Job_Postings(Job_id),
offer_date date,Joining_date date);
ALTER TABLE Placement
ADD CONSTRAINT fk_company_id
FOREIGN KEY (company_id)
REFERENCES companies(company_id)
ON DELETE CASCADE;


-- ALTER TABLE Job_Postings ADD CONSTRAINT fk_company_id FOREIGN KEY (company_id) REFERENCES Companies(company_id) ON DELETE CASCADE;