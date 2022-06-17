create table employees (
id serial primary key,
employee_name Varchar(50) not null
) ;

insert into employees (employee_name)
values ('Olga Domogatskaja'),
('Tony Johnston'),
('Cathy Mcdonnell'),
('Harleigh Quintana'),
('Rhyley Merrill'),
('Daniyal Benitez'),
('Roscoe Finney'),
('Derrick Dawe'),
('Aubrey Strong'),
('Aeryn Mcintosh'),
('Kurt Gould'),
('Ahmed Snyder'),
('Tierney Stephens'),
('Jerome Harrington'),
('Mya Koch'),
('Haidar Lowe'),
('Connor Blundell'),
('Rose Thomson'),
('Ashanti Bradford'),
('Fraser Whitfield'),
('Aron Gilbert'),
('Demi Summers'),
('Ottilie Lu'),
('Bessie Green'),
('Darren Dunkley'),
('Naima Greaves'),
('Antoinette Waters'),
('Josh Guerra'),
('Aahil Armitage'),
('Kerri Lord'),
('Alton Bowes'),
('Bartosz Houston'),
('Joanne Talley'),
('Alvin Rangel'),
('Izabella Harmon'),
('Louise Thomas'),
('Olga123'),
('Kendal Rodgers'),
('Leia Werner'),
('Fionn Ellwood'),
('Koby Bradshaw'),
('Isabelle Walsh'),
('123Olga'),
('Tahmina Frye'),
('Cobie Powers'),
('Asa Schneider'),
('OlgaOlga'),
('Camron Kaufman'),
('Rickie Draper'),
('Waqar Shaffer'),
('Ibrahim Levine'),
('Irene Copeland'),
('Skye Beattie'),
('Juno Riddle'),
('Jude Carpenter'),
('Ptolemy Watson'),
('Montgomery Mac'),
('Beatriz Sutton'),
('Haris Zamora'),
('Kamran Major'),
('Earl Davey'),
('Sadie Hughes'),
('Sana Mejia'),
('Leticia Connolly'),
('Oliwier Timms'),
('Finley Person'),
('Violet England'),
('Clementine Abbott'),
('Elysia Parker'),
('Isaak Mclaughlin');

create table salary (
id serial primary key,
monthly_salary Int not null
) ;

insert into salary (monthly_salary)
values (1000),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(1900),
(2000),
(2100),
(2200),
(2300),
(2400),
(2500) ;

create table employee_salary (
id Serial primary key,
employee_id Int not null unique,
salary_id Int not null
) ;

insert into employee_salary (employee_id, salary_id)
values (68, 4),
(46, 4),
(53, 6),
(44, 7),
(78, 9),
(66, 11),
(59, 7),
(45, 4),
(90, 4),
(67, 7),
(3, 8),
(4, 8),
(7, 12),
(8, 12),
(18, 11),
(21, 10),
(22, 1),
(25, 1),
(32, 3),
(33, 4),
(34, 6),
(35, 11),
(9, 10),
(11, 1),
(12, 6),
(13, 7),
(16, 3),
(27, 4),
(28, 14),
(29, 3),
(30, 9),
(31, 10),
(36, 12),
(37, 11),
(1, 10),
(2, 3),
(5, 4),
(6, 3),
(10, 4),
(14, 1) ;

create table roles (
id serial primary key,
role_name int not null unique
);

alter table roles 
alter column role_name type Varchar (30) ;

insert into roles (role_name)
values ('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

create table roles_employee (
id serial primary key,
employee_id Int not null unique,
role_id Int not null,
foreign key (employee_id)
references employees (id),
foreign key (role_id)
references roles (id)
)

insert into roles_employee (employee_id, role_id)
values (68, 6),
(46, 4),
(53, 6),
(44, 7),
(15, 9),
(66, 11),
(59, 7),
(45, 4),
(17, 4),
(67, 7),
(3, 8),
(4, 8),
(7, 12),
(8, 12),
(18, 11),
(21, 10),
(22, 1),
(25, 1),
(32, 3),
(33, 4),
(34, 6),
(35, 11),
(9, 10),
(11, 1),
(12, 6),
(13, 7),
(16, 3),
(27, 4),
(28, 14),
(29, 3),
(30, 9),
(31, 10),
(36, 12),
(37, 11),
(1, 10),
(2, 3),
(5, 4),
(6, 3),
(10, 4),
(14, 1) ;

select * from employees ;

select * from salary ;

select * from employee_salary ;

select * from roles ;

select * from roles_employee ;




