create database careerhub;
use careerhub;


--Creating company table 
create table company
(CompanyId int primary key identity(1,1),
 companyname varchar(100) not null,
 location varchar(100) );

 --creating job table 
 create table job(
 JobId int primary key identity(1,1),
 CompanyId int,
 jobtitle varchar(100) not null,
 jobdescription text ,
 joblocation varchar(100) not null,
 salary Money check (salary>0),
 jobtype varchar(50) not null,
 posteddate datetime not null,
constraint FK_companies_job 
foreign key (CompanyId) references company(CompanyId) on Delete Cascade on update CasCade);

--creating table applicants 
create table Applicant (
 ApplicantID int primary key identity(1,1),
FirstName varchar(50) not null,
LastName varchar(50) not null,
Email varchar(100) UNIQUE not null,
Phone varchar(15) not null,
[Resume] text)

--creating application table
create table Applications (
ApplicationId int primary key identity(1,1),
Jobid int,
ApplicantID int,
Applicationdate datetime not null,
Coverletter text,
constraint FK_applications_job foreign key (JobId) references job(JobId) on Delete Cascade on update CasCade,
constraint FK_applications_applicants foreign key (ApplicantID) references applicant(ApplicantID) on Delete Cascade on update CasCade
);

-- Insert values into company table
insert into company (companyname, location)
values 
('Tech Corp', 'San Francisco'),
('Innovate Solutions', 'New York'),
('Green Future', 'Chicago'),
('NextGen IT', 'Seattle'),
('Healthify', 'Boston'),
('EduHub', 'Austin'),
('FinTech Pros', 'San Jose'),
('AgriCore', 'Denver'),
('EcoSmart', 'Portland'),
('CyberSecure', 'Los Angeles');

-- Insert values into job table
insert into job (CompanyId, jobtitle, jobdescription, joblocation, salary, jobtype, posteddate)
values
(1, 'Software Engineer', 'Develop and maintain software applications.', 'San Francisco', 120000, 'Full-time', '2024-01-15'),
(2, 'Data Scientist', 'Analyze and interpret complex data.', 'New York', 115000, 'Full-time', '2024-01-20'),
(3, 'Product Manager', 'Oversee product development lifecycle.', 'Chicago', 110000, 'Full-time', '2024-02-01'),
(4, 'DevOps Engineer', 'Manage infrastructure and CI/CD pipelines.', 'Seattle', 125000, 'Full-time', '2024-02-05'),
(5, 'UI/UX Designer', 'Design user interfaces and experiences.', 'Boston', 85000, 'Part-time', '2024-02-10'),
(6, 'Marketing Specialist', 'Plan and execute marketing strategies.', 'Austin', 70000, 'Full-time', '2024-02-15'),
(7, 'Financial Analyst', 'Analyze financial data and trends.', 'San Jose', 95000, 'Full-time', '2024-02-20'),
(8, 'Agricultural Scientist', 'Research sustainable farming methods.', 'Denver', 80000, 'Part-time', '2024-02-25'),
(9, 'Environmental Engineer', 'Design eco-friendly systems.', 'Portland', 105000, 'Full-time', '2024-03-01'),
(10, 'Cybersecurity Analyst', 'Secure and monitor network systems.', 'Los Angeles', 130000, 'Full-time', '2024-03-05');

-- Insert values into applicant table
insert into Applicant (FirstName, LastName, Email, Phone, [Resume])
values
('John', 'Doe', 'john.doe@example.com', '1234567890', 'Resume of John Doe'),
('Jane', 'Smith', 'jane.smith@example.com', '9876543210', 'Resume of Jane Smith'),
('Emily', 'Johnson', 'emily.johnson@example.com', '4561237890', 'Resume of Emily Johnson'),
('Michael', 'Brown', 'michael.brown@example.com', '3216549870', 'Resume of Michael Brown'),
('Chris', 'Davis', 'chris.davis@example.com', '7894561230', 'Resume of Chris Davis'),
('Sarah', 'Wilson', 'sarah.wilson@example.com', '8529637410', 'Resume of Sarah Wilson'),
('David', 'Lee', 'david.lee@example.com', '9517538520', 'Resume of David Lee'),
('Anna', 'Taylor', 'anna.taylor@example.com', '7418529630', 'Resume of Anna Taylor'),
('Robert', 'Harris', 'robert.harris@example.com', '1593574560', 'Resume of Robert Harris'),
('Sophia', 'Martin', 'sophia.martin@example.com', '7531598520', 'Resume of Sophia Martin');

-- Insert values into applications table
insert into Applications (JobId, ApplicantID, Applicationdate, Coverletter)
values
(1, 1, '2024-03-10', 'Excited to apply for this position.'),
(2, 2, '2024-03-11', 'Looking forward to contributing to your team.'),
(3, 3, '2024-03-12', 'Eager to bring my skills to your company.'),
(4, 4, '2024-03-13', 'Hope to be considered for this role.'),
(5, 5, '2024-03-14', 'A great opportunity to enhance my career.'),
(6, 6, '2024-03-15', 'Excited about this position.'),
(7, 7, '2024-03-16', 'Looking forward to this opportunity.'),
(8, 8, '2024-03-17', 'Eager to be part of your team.'),
(9, 9, '2024-03-18', 'A role I am passionate about.'),
(10, 10, '2024-03-19', 'Looking forward to contributing.'); 


-- Select all records from the company table
SELECT * FROM company;

-- Select all records from the job table
SELECT * FROM job;

-- Select all records from the applicant table
SELECT * FROM Applicant;

-- Select all records from the applications table
SELECT * FROM Applications;