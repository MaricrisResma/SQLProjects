-- 1.
CREATE DATABASE [LMT_University]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LMT_University', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LMT_University.mdf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LMT_University_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\LMT_University_log.ldf' , SIZE = 8192KB , FILEGROWTH = 65536KB )
GO

-- 2.
USE [LMT_University]
GO


-- 3.
-- 4. 
-- 5.
USE [LMT_University]

CREATE TABLE [enrol].[address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[StreetAddress] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[PostalCode] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

---- 5a 
Insert into [enrol].[address] (StreetAddress, City, State, PostalCode, Country, InsertedON)
				VALUES ('5 Schurz Lane', 'Grybów',NULL,'33-330', 'Poland','2020-09-30'),

				('628 Waubesa Drive', 'Jinsheng',NULL,NULL,'China','2020-09-30'),
			   		  
			('44135 Northfield Way', 'Nowy Dwór Mazowiecki',	NULL, '05-160',	'Poland',	'2020-09-30'),
								 ('335 Bellgrove Road',	'Gaoqiao',	NULL,	NULL,	'China',	'2020-09-30'),
				 ('28 Victoria Junction',	'Bukovec',	NULL,	'739 84',	'Czech Republic',	'2020-09-30'),
				('6 Stuart Road',	'Wushan',	NULL,	NULL,	'China',	'2020-09-30'),

				('730 Barby Street',	'Zhengchang',	NULL,	NULL,	'China',	'2020-09-30'),
				 ('22742 Schiller Street',	'Sumurwaru',	NULL,	NULL,	'Indonesia',	'2020-09-30'),
				 ('31 Elka Junction',	'Cigembong', 'NULL',	'NULL',	'Indonesia', '2020-09-30'),

				 ('5 Kenwood Circle',	'Davao',	NULL,	'8000',	'Philippines',	'2020-09-30'),
				 ('99 Bunker Hill Crossing',	'Zarasai',	NULL,	'32001',	'Lithuania', '2020-09-30'),
				 ('5 Farragut Center', 'Jaromerice',	NULL,'569 44',	'Czech Republic','2020-09-30'),
				 ('25 Lerdahl Street',	'Nanshi',	NULL	,NULL,	'China',	'2020-09-30'),
				 ('918 Bonner Way',	'Phayakkhaphum Phisai',	NULL,	'44110',	'Thailand',	'2020-09-30'),
				 
				 ('9 West Alley',	'Sempu',	NULL,	NULL,	'Indonesia',	'2020-09-30'),
				 
				 ('234 Hagan Lane',	'Rennes', 'Bretagne',	'35033',	'France',	'2020-09-30'),

				 ('33942 Eagle Crest Trail',	'Oliveiras',	'Porto',	'4745-235',	'Portugal',	'2020-09-30'),
				 ('20791 Hermina Way',	'B?o L?c',	NULL,	NULL,	'Vietnam',	'2020-09-30'),
				 ('86 Lake View Way',	'Marsa Alam',	NULL,	NULL,	'Egypt',	'2020-09-30'),
				 ('19732 Burning Wood Parkway',	'Piteå',	'Norrbotten',	'944 73',	'Sweden',	'2020-09-30'),
				 ('9320 Oak Valley Road',	'athangani',	NULL,	'A45',	'Ireland',	'2020-09-30'),
				 ('2638 Waubesa Circle',	'Honda',	NULL,	'732048',	'Colombia',	'2020-09-30'),
				 ('6999 Monument Center',	'Cortes',	NULL,	'6341',	'Philippines',	'2020-09-30'),
				 ('1 Warbler Hill',	'Proletar',	NULL,	NULL,	'Tajikistan',	'2020-09-30'),
				 ('1311 Crowley Street',	'Baghlan',	NULL,	NULL,	'Afghanistan',	'2020-09-30'),
				 ('19 Walton Way',	'Öldziyt',	NULL,	NULL,	'Mongolia',	'2020-09-30'),
				 ('1 Glacier Hill',	'Cergy-Pontoise',	'Île-de-France',	'95304',	'France',	'2020-09-30'),
				 ('5094 Gateway Way',	'Živinice',	NULL,	NULL,	'Bosnia and Herzegovina',	'2020-09-30'),
				
				 ('2 Roth Pass',	'Tuatuka',	NULL,NULL,'Indonesia', '2020-09-30'),
				 ('89531 Northview Road',	'Ganyi', NULL,NULL,	'China','2020-09-30');

-- 6.
CREATE TABLE [enrol].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](100) NULL,
	[DepartmentDescription] [varchar](100) NULL,
	[DepartmentCapacity] [varchar](100) NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Departnment] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

---- 6a 
Insert into [enrol].[Department] (DepartnmentName,DepartmentDescription,DepartmemntCapacity,InsertedOn)
VALUES  ('IT',	'Information Technology',	'60',	'2020-09-30'),
('EE',	'Electrical Engineering',	'120',	'2020-09-30'),
('CSE',	'Computer Science Engineering',	'140',	'2020-09-30'),
('ME',	'Mechanical Engineering',	'110',	'2020-09-30'),
('ECE',	'Electronic and Communication Engineering',	80, '2020-09-30'),
('AEIE',	'Applied Electronics and Instrumentation Engineering', 50,	'2020-09-30')

-- 7.	
CREATE TABLE [enrol].[Lecturer](
	[LecturerID] [int] NOT NULL,
	[LecturerName] [varchar](100) NULL,
	[LecturerHighestQualification] [varchar](100) NOT NULL,
	[LecturerAge] [date] NULL,
	[DepartmentID] [int] NOT NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Lecturer] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


---- 7a 
Insert into [enrol].[Lecturer] (LecturerID, LecturerName,LecturerHighestQualification,LecturerAge,DepartmentID,InsertedOn)
VALUES ('1','Peder Bernaldez',	'M.Tech',	'2010-10-10', '6', '2020-09-30')

('2',	'Emile Adolthine',	'PhD',	'2010-04-04',	'5',	'2020-09-30'),
('3',	'Titos Iorizzi',	'M.Tech',	'2012-04-09',	'4',	'2020-09-30'),
('4',	'Ferris Falck',	'MSC',	'2011-05-05',	'3',	'2020-09-30'),
('5',	'Georgie McIlwraith',	'M.Tech',	'2017-05-08',	'2',	'2020-09-30'),
('6',	'Karlen Kearn',	'MSC',	'2019-03-03',	'1',	'2020-09-30'),
('7',	'Axe Whistlecroft',	'MCA',	'2019-03-03',	'6',	'2020-09-30'),
('8',	'Drucie Bazek',	'PhD',	'2019-04-01',	'5',	'2020-09-30'),
('9',	'Antony Gamlin',	'M.Tech',	'2019-04-01',	'4',	'2020-09-30'),
('10',	'Alexina Moncaster',	'MBA',	'2019-04-01',	'3',	'2020-09-30'),
('11',	'Milzie Kabos',	'MCA',	'2019-03-03',	'2',	'2020-09-30'),
('12',	'Arlene Glendza',	'MS',	'2019-03-03',	'1',	'2020-09-30'),
('13',	'Kirby Kabisch',	'M.Tech',	'2019-04-01',	'1',	'2020-09-30'),
('14',	'Selma Eliyahu',	'PhD',	'2019-04-01',	'2',	'2020-09-30'),
('15',	'Ilysa Chooter',	'M.Tech',	'2019-04-01',	'3',	'2020-09-30'),
('16',	'Rozalie Pennycord',	'MSC',	'2010-10-10',	'4',	'2020-09-30'),
('17',	'Dacey Glidder',	'M.Tech',	'2010-04-04',	'5',	'2020-09-30'),
('18',	'Claretta Diaper',	'MSC',	'2012-04-09',	'6',	'2020-09-30'),
('19',	'Kalil Pendleton',	'MCA',	'2011-05-05',	'6',	'2020-09-30'),
('20',	'Trudey Brech',	'PhD',	'2011-10-05',	'5',	'2020-09-30'),
('21',	'Gypsy Ambrosini',	'M.Tech',	'2011-03-30',	'4',	'2020-09-30'),
('22',	'Lauree Ribbon',	'MBA',	'2013-04-04',	'3',	'2020-09-30'),
('23',	'Hugo Valois',	'MCA',	'2012-04-29',	'2',	'2020-09-30'),
('24', 'Perren Chetter', 'MS',	'2018-05-03',	'1',	'2020-09-30'),
('25',	'Fawn Coffelt',	'M.Tech',	'2020-02-26',	'1',	'2020-09-30'),
('26',	'Terrie Golby',	'PhD',	'2020-02-26',	'2',	'2020-09-30'),
('27',	'Jeanette Ciraldo',	'M.Tech',	'2020-03-26',	'3',	'2020-09-30'),
('28',	'Elfrieda Elijahu',	'MSC',	'2020-03-26',	'4',	'2020-09-30'),
('29',	'Guthry Blaes',	'M.Tech',	'2020-03-26',	'5',	'2020-09-30'),
('30',	'Richy Saice',	'MSC',	'2020-02-26',	'6',	'2020-09-30')

-- 8.	
CREATE TABLE [enrol].[Student](
	[StudentID] [int] NOT NULL,
	[StudentFirstName] [varchar](50) NULL,
	[StudentLastName] [varchar](50) NULL,
	[StudentDOB] [date] NULL,
	[StudentMobile] [varchar](50) NULL,
	[StudentRollNo] [int] NULL,
	[DepartmentID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


---- 8a
Insert into [enrol].[Student] (StudentID, StudentFirstName,StudentLastName,StudentDOB,StudentMobile,StudentRollNo,DepartmentID,AddressID,InsertedOn)
VALUES
('1','Joey','Ironside','1995-11-22','1276234258',1,3,1,'2020-10-01'),
('2','Karlotta','Garraway','1997-07-06','2192431615',2,3,24,'2020-10-01'),
('3','Jerry','Stutte','1996-12-18','4125425783',3,1,17,'2020-10-01'),
('4','Yehudit','Rahill','1995-01-15','9939485406',4,2,29,'2020-10-01'),
('5','Cele','Crosetto','1998-11-24','3622733725',5,3,16,'2020-10-01'),
('6','Hazlett','Mowsdale','1995-04-09','1482883476',6,4,23,'2020-10-01'),
('7','Carlyn','Marks','1996-12-27','6129154080',7,5,20,'2020-10-01'),
('8','Ellis','Boatman','1997-04-29','8269707118',8,6,7,'2020-10-01'),
('9','Florina','Boyack','1997-08-03','9623352863',9,3,14,'2020-10-01'),
('10','Borg','Innett','1997-09-03','5256034960',10,1,19,'2020-10-01'),
('11','Sayres','Jennings','1996-05-12','8675076454',11,4,27,'2020-10-01'),
('12','Jarid','Sprull','1998-11-02','1391270091',12,2,6,'2020-10-01'),
('13','Elvera','Bannard','1996-09-07','7897232539',13,4,24,'2020-10-01'),
('14','Ody','Inggall','1995-03-05','6094734260',14,5,25,'2020-10-01'),

('15','Curcio','McWhan','1996-07-29','2394865847',15,6,11,'2020-10-01'),
('16','Connie','Sinnie','1995-07-19','1473936221',16,6,23,'2020-10-01'),
('17','Auroora','Nel','1996-09-05','2216400391',17,3,14,'2020-10-01'),
('18','Wendall','Rosendale','1999-12-30','1818120249',18,3,28,'2020-10-01'),
('19','Hadley','Bradbury','1996-08-16','6518067697',19,1,10,'2020-10-01'),
('20','Celine','Smales','1999-07-11','7106508130',20,2,10,'2020-10-01'),
('21','Jesselyn','Stevenson','1998-05-16','9231672206',21,2,22,'2020-10-01'),
('22','Corinna','Pinkney','1998-01-16','8323630067',22,5,29,'2020-10-01'),
('23','Orelle','Adamthwaite','1997-07-26','2539126766',23,3,17,'2020-10-01'),
('24','Howie','Seaman','1997-12-01','9888259627',24,2,4,'2020-10-01'),
('25','Sibyl','Corey','1996-07-18','4493239590',25,5,11,'2020-10-01'),
('26','Ruperta','Peaker','1999-05-22','5124781263',26,5,4,'2020-10-01'),
('27','Delmer','Roughey','1995-04-21','4175314364',27,3,22,'2020-10-01'),
('28','Gifford','OScannill','1996-10-31','3134783726',28,4,22,'2020-10-01'),
('29','Hedy','OHone','1998-03-29','7316228047',29,2,17,'2020-10-01'),
('30','Shalna','Hyde-Chambers','1999-11-23','7455116160',30,5,6,'2020-10-01'),
('31','Ferdie','Di Napoli','1995-01-17','1905908693',31,4,30,'2020-10-01'),
('32','Piper','Giacomuzzo','1998-09-14','5499340503',32,6,4,'2020-10-01'),
('33','Gerhardt','Schruurs','1999-11-18','8197494894',33,3,1,'2020-10-01'),
('34','Mellicent','Buncher','1996-10-03','4584525312',34,5,28,'2020-10-01'),
('35','Corette','Demead','1997-09-17','4909862137',35,5,17,'2020-10-01'),
('36','Jorgan','Barson','1997-05-01','6022309183',36,1,21,'2020-10-01'),
('37','Koral','Bowen','1998-05-12','4198817454',37,4,3,'2020-10-01'),
('38','Allissa','Kitter','1998-08-17','7328676920',38,5,7,'2020-10-01'),
('39','Townsend','Doughtery','1998-04-13','2639777958',39,4,7,'2020-10-01'),
('40','Yolane','Geratt','1998-06-10','2069585951',40,6,17,'2020-10-01'),
('41','Chrystel','Allwood','1996-09-07','6958461692',41,3,25,'2020-10-01'),
('42','Dyana','Clutterbuck','1997-09-22','5842483886',42,1,1,'2020-10-01'),
('43','Nikki','Edy','1999-01-10','5096155315',43,6,25,'2020-10-01'),
('44','Hendrik','Surr','1997-04-05','2021255732',44,5,11,'2020-10-01'),
('45','Marta','Bosch','1998-09-28','4075136713',45,6,5,'2020-10-01'),
('46','Garrik','Pell','1999-04-14','3071057649',46,6,7,'2020-10-01'),
('47','Stormi','Colbron','1998-10-21','9968113654',47,3,28,'2020-10-01'),
('48','Angelique','Iacivelli','1995-06-07','9518365081',48,5,7,'2020-10-01'),
('49','Zack','Hefforde','1999-07-25','5455693035',49,1,29,'2020-10-01'),
('50','Gusella','Pettiford','1999-08-23','2425172721',50,4,3,'2020-10-01')


---- add constraints

ALTER TABLE [enrol].[Lecturer]  WITH CHECK ADD  CONSTRAINT [FK_Lecturer_Departnment] FOREIGN KEY([DepartmentID])
REFERENCES [enrol].[Department] ([DepartmentID])
GO

ALTER TABLE [enrol].[Lecturer] CHECK CONSTRAINT [FK_Lecturer_Departnment]
GO


ALTER TABLE [enrol].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_address] FOREIGN KEY([AddressID])
REFERENCES [enrol].[address] ([AddressID])
GO

ALTER TABLE [enrol].[Student] CHECK CONSTRAINT [FK_Student_address]
GO

ALTER TABLE [enrol].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Departnment] FOREIGN KEY([DepartmentID])
REFERENCES [enrol].[Department] ([DepartmentID])
GO

ALTER TABLE [enrol].[Student] CHECK CONSTRAINT [FK_Student_Departnment]
GO




-- 9.	
---- 9a	
select count (*) from [enrol].[Student]

---- 9b	
---- 9c	
---- 9d	
Select * from [enrol].[Lecturer]

---- 9e	
Select * from [enrol].[Address]

---- 9f	
select
StudentFirstName + ' ' + StudentLastName as StudentFullName, StudentDOB, StudentMobile
from enrol.Student;

---- 9g
Select 
	E.[StudentID], 
	E.[StudentFirstName], 
	E.[StudentLastName], 
	E.[StudentDOB], 
	E.[StudentMobile], 
	E.[AddressID],
	D.[Streetaddress],
	D.[City]
From [enrol].[Student] E
Inner join [enrol].[Address] D on E.StudentID=D.AddressID


---- 9h	
SELECT * from
enrol.Student where [StudentFirstName] like 'b%'

---- 9i	
SELECT * from
enrol.Student where [StudentFirstName] like 'A_A'

---- 9j	
SELECT COUNT (E.[StudentID]) as CountStudent, E.[AddressID]
FROM [enrol].[Student] E
Inner join [enrol].[Address] D on E.[StudentID]=D.AddressID
Where E.[AddressID] = 6
GROUP BY E.[AddressID]

---- 9k	
SELECT 
StudentFirstName + ' ' + StudentLastName as StudentFullName, StudentDOB, StudentMobile, 
CASE WHEN dateadd(year, datediff (year, StudentDOB, getdate()), StudentDOB) > getdate()
            THEN datediff(year, StudentDOB, getdate()) - 1
            ELSE datediff(year, StudentDOB, getdate())
       END as Age
FROM enrol.Student


---- 9l
[StudentAge= Current date – DOB (in Years)]

SELECT 
StudentFirstName + ' ' + StudentLastName as StudentFullName, StudentDOB, 
CASE WHEN dateadd(year, datediff (year, StudentDOB, getdate()), StudentDOB) > getdate()
            THEN datediff(year, StudentDOB, getdate()) - 1
            ELSE datediff(year, StudentDOB, getdate())
       END as Age
FROM enrol.Student

---- 9m
[StudentAge= Current date – DOB (in Years)]

SELECT 
StudentFirstName + ' ' + StudentLastName as StudentFullName, StudentDOB, 
CASE WHEN dateadd(year, datediff (year, StudentDOB, getdate()), StudentDOB) > getdate()
            THEN datediff(year, StudentDOB, getdate()) - 1
            ELSE datediff(year, StudentDOB, getdate())
       END as Age
FROM enrol.Student

Where datediff(year, StudentDOB, getdate()) > 23


---- 9n
[StudentAge= Current date – DOB (in Years)]

SELECT 
StudentFirstName + ' ' + StudentLastName as StudentFullName, StudentDOB, StudentMobile,
CASE WHEN dateadd(year, datediff (year, StudentDOB, getdate()), StudentDOB) > getdate()
            THEN datediff(year, StudentDOB, getdate()) - 1
            ELSE datediff(year, StudentDOB, getdate())
       END as Age
FROM enrol.Student

Where datediff(year, StudentDOB, getdate())=21 or datediff(year, StudentDOB, getdate())=23

---- 9o
Select [LecturerID],[LecturerName],[LecturerHighestQualification],[LecturerAge]
FROM enrol.Lecturer

---- 9p
Select [LecturerID],[LecturerName],[LecturerHighestQualification],[LecturerAge]
FROM enrol.Lecturer
where LecturerHighestQualification='M.Tech' or LecturerHighestQualification='PhD'

---- 9q
SELECT  
	E.[LecturerID],
	E.[LecturerName],
	E.[LecturerHighestQualification],
	E.[LecturerAge],
	E.[DepartmentID],
	E.[InsertedOn],
	E.[DepartmentID],
	D.[DepartmentName],
	D.[DepartmentDescription]
FROM [enrol].[Lecturer] E
Inner join [enrol].[Department] D on E.LecturerID=D.DepartmentID
Where  E.[DepartmentID]='2'

---- 9r
SELECT [LecturerID]
      ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
      ,[DepartmentID]
      ,[InsertedOn]
  FROM [LMT_University].[enrol].[Lecturer]

  where [LecturerName] like '%R'

---- 9s
SELECT [LecturerID]
      ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
      ,[DepartmentID]
      ,[InsertedOn]
  FROM [LMT_University].[enrol].[Lecturer]

  where [LecturerName] like '%e%'

---- 9t
SELECT [LecturerID]
      ,[LecturerName]
      ,[LecturerHighestQualification]
      ,[LecturerAge]
      ,[DepartmentID]
      ,[InsertedOn]
  FROM [LMT_University].[enrol].[Lecturer]
  where [LecturerName] like '%e%'

---- 9u
SELECT LecturerID,[LecturerHighestQualification],SUBSTRING(LecturerName, 1, 5) AS ExtractString
FROM enrol.Lecturer;
        
---- 9v
SELECT 
LecturerID, LecturerName, LecturerHighestQualification, LecturerAge, 
CASE WHEN dateadd(year, datediff (year, LecturerAge, getdate()), LecturerAge) > getdate()
            THEN datediff(year, LecturerAge, getdate()) - 1
            ELSE datediff(year, LecturerAge, getdate())
       END as YearsOld
FROM enrol.Lecturer

---- 9w
SELECT  DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from enrol.Department

---- 9x
SELECT  DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity from enrol.Department
---- 9y
SELECT  DepartmentID, DepartmentName, DepartmentDescription, DepartmentCapacity 
from enrol.Department
where DepartmentCapacity > 60
---- 9z

Select
AddressID, StreetAddress, City, State, PostalCode, Country 
from enrol.Address

---- 9aa
Select
AddressID, StreetAddress, City, State, PostalCode, Country
from enrol.Address 
where country='Poland'

---- 9bb
Select
AddressID, StreetAddress, City, State, PostalCode, Country
from enrol.Address 
where State='null'


AddressID, StreetAddress, City, State, PostalCode, Country
from enrol.Address 
where PostalCode='null'


Select
AddressID, StreetAddress, City, State, PostalCode, Country
from enrol.Address 
where City='Honda' or Country='Columbia'

-- 10.
---- 10a
Select Distinct [StudentDOB]
from [enrol].[Student]

---- 10b
Select Distinct [DepartmentName]
from [enrol].[Department]

---- 10c
Select Distinct [Country]
from [enrol].[address]
---- 10d

Select Distinct [state]
from [enrol].[address]
---- 10e
Select Distinct [state]
from [enrol].[address]

---- 10f
Select 
LecturerID, LecturerName, LecturerHighestQualification,  
CASE WHEN dateadd(year, datediff (year, LecturerAge, getdate()), LecturerAge) > getdate()
            THEN datediff(year, LecturerAge, getdate()) - 1
            ELSE datediff(year, LecturerAge, getdate())
       END as LecturerYearService
FROM enrol.Lecturer



---- 10g
Select
LecturerID,
LecturerName,
LecturerHighestQualification,
case
	when datediff(year,LecturerAge,getdate()) < 5 then 'Begining Level Experience'
	when datediff(year,LecturerAge,getdate()) >= 5
		and datediff(year,LecturerAge,getdate()) < 10
		then 'Mid Level experience'
	else 'Experienced'
	end as LecturerType
from enrol.Lecturer
;


-- 11.	Write the following Query based on the above datasets.
---- 11a.	Display all Student and their Department Information based on the relationship.
Select 
	E.[StudentID], 
	E.[StudentFirstName], 
	E.[StudentLastName], 
	E.[StudentDOB], 
	E.[StudentMobile], 
	E.[DepartmentID],
	D.[DepartmentName],
	D.[DepartmentCapacity]
From [enrol].[Student] E
Inner join [enrol].[Department] D on E.StudentID=D.DepartmentID


---- 11b
Select 
	E.[StudentID], 
	E.[StudentFirstName], 
	E.[StudentLastName], 
	E.[StudentDOB], 
	E.[StudentMobile], 
	E.[AddressID],
	D.[Streetaddress],
	D.[City]
From [enrol].[Student] E
Inner join [enrol].[Address] D on E.StudentID=D.AddressID


---- 11c
SELECT  
	E.[LecturerID],
	E.[LecturerName],
	E.[LecturerHighestQualification],
	E.[LecturerAge],
	E.[DepartmentID],
	E.[InsertedOn],
	E.[DepartmentID],
	D.[DepartmentName],
	D.[DepartmentDescription]
FROM [enrol].[Lecturer] E
Inner join [enrol].[Department] D on E.LecturerID=D.DepartmentID

---- 11d
SELECT e.studentid, e.StudentFirstName, e.StudentLastName,f.Departmentname,g.LecturerName
  FROM enrol.Student E
  LEFT JOIN enrol.Department f
  ON e.Studentid = f.Departmentid
  LEFT JOIN enrol.Lecturer g
  ON f.Departmentid = g.Lecturerid;


---- 11e
  SELECT e.studentid, e.StudentFirstName, e.StudentLastName,f.Departmentname,g.StreetAddress
  FROM enrol.Student E
  LEFT JOIN enrol.Department f
  ON e.Studentid = f.Departmentid
LEFT JOIN enrol.address g
  ON f.Departmentid = g.addressid;


---- 11f
  SELECT e.studentid, e.StudentFirstName, e.StudentLastName,f.Departmentname,g.StreetAddress
  FROM enrol.Student E
  LEFT JOIN enrol.Department f
  ON e.Studentid = f.Departmentid
LEFT JOIN enrol.address g
  ON f.Departmentid = g.addressid;

---- 11g
  SELECT e.studentid, e.StudentFirstName, e.StudentLastName, f.streetaddress,g.departmentname,h.LecturerName
  FROM enrol.student e
 LEFT JOIN enrol.address f
  ON e.studentid = f.addressid
  LEFT JOIN enrol.department g
  ON f.addressid = g.departmentid
  LEFT JOIN enrol.lecturer h
   ON g.departmentid = h.lecturerid
   WHERE g.departmentname='ME' or g.departmentname='ECE'

---- 11h
 Select *
  FROM enrol.student e
 LEFT JOIN enrol.address f
  ON e.studentid = f.addressid
  LEFT JOIN enrol.department g
  ON f.addressid = g.departmentid
  LEFT JOIN enrol.lecturer h
   ON g.departmentid = h.lecturerid
   WHERE [LecturerHighestQualification]='MS' or  [LecturerHighestQualification]='PHD'

---- 11i
 Select *
  FROM enrol.student e
 LEFT JOIN enrol.address f
  ON e.studentid = f.addressid
  LEFT JOIN enrol.department g
  ON f.addressid = g.departmentid
  LEFT JOIN enrol.lecturer h

---- 11j
SELECT count (*) student
  FROM enrol.Student a
  LEFT JOIN enrol.Department b
  ON a.studentid = b.departmentid
  GROUP BY b.departmentid

---- 11k
SELECT count (*) Lecturer
  FROM enrol.Student a
  LEFT JOIN enrol.Department b
  ON a.studentid = b.departmentid
  GROUP BY b.departmentid

---- 11l
SELECT count (*) Student
  FROM enrol.lecturer a
  LEFT JOIN enrol.address b
  ON a.lecturerid = b.addressid
  GROUP BY country


-- 12.	
---- 12a
CREATE TABLE [enrol].[StudCopy](
	[StudentID] [int] NOT NULL,
	[StudentFirstName] [varchar](50) NULL,
	[StudentLastName] [varchar](50) NULL,
	[StudentDOB] [date] NULL,
	[StudentMobile] [varchar](50) NULL,
	[StudentRollNo] [int] NULL,
	[DepartmentID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_StudCopy] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [enrol].[StudCopy]
SELECT * FROM [enrol].[Student]


-- 12b

CREATE TABLE [DeptCopy](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](100) NULL,
	[DepartmentDescription] [varchar](100) NULL,
	[DepartmentCapacity] [varchar](100) NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DeptCopy] PRIMARY KEY CLUSTERED 
(

	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER SCHEMA DeptCOpy TRANSFER enrol.DeptCopy

---- 12c
CREATE TABLE [enrol].[DepartmentCopy](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [varchar](100) NULL,
	[DepartmentDescription] [varchar](100) NULL,
	[DepartmentCapacity] [varchar](100) NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_DepartnmentCopy] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [enrol].[DepartmentCopy]
SELECT * FROM [enrol].[Department]

---- 12d
CREATE TABLE [AddrCopy](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[StreetAddress] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[PostalCode] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AddrCopy] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER SCHEMA AddrCopy TRANSFER AddrCopy

---- 12e
CREATE TABLE [AddrCopy](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[StreetAddress] [varchar](100) NULL,
	[City] [varchar](100) NULL,
	[State] [varchar](100) NULL,
	[PostalCode] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_AddrCopy] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [enrol].[ AddrCopy]
SELECT * FROM [enrol].[Address]



---- 12f
CREATE TABLE [enrol].[LecturerCopy](
	[LecturerID] [int] NOT NULL,
	[LecturerName] [varchar](100) NULL,
	[LecturerHighestQualification] [varchar](100) NOT NULL,
	[LecturerAge] [date] NULL,
	[DepartmentID] [int] NOT NULL,
	[InsertedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_LecturerCopy] PRIMARY KEY CLUSTERED 
(
	[LecturerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [enrol].[LecturerCopy]
SELECT * FROM [enrol].[Lecturer]


-- 13.	Write the following Query based on the above datasets.
---- 13a	
Delete from [enrol].[LecturerCopy]
---- 13b	
  DELETE a
  FROM enrol.Student a
  INNER JOIN enrol.Department b
  ON a.Studentid = b.Departmentid
  Where Departmentname='IT'

---- 13c	
  DELETE A
  FROM enrol.Student a
  INNER JOIN enrol.Address b
  ON a.Studentid = b.Addressid
  Where Country='Indonesia'

---- 13d
  DELETE A
  FROM enrol.Student a
  INNER JOIN enrol.Address b
  ON a.Studentid = b.Addressid
  Where City='Nanshi'

---- 13e	Delete all the student information for the student who belongs to “Bretagne” state.
  DELETE A
  FROM enrol.Student a
  INNER JOIN enrol.Address b
  ON a.Studentid = b.Addressid
  Where state='Bretagne'


-- 14.	Write the following Query based on the above datasets.
---- 14a	Update StudentMobile for those students who belongs to Department “ME”.
SELECT *
  FROM enrol.Student a
  LEFT JOIN enrol.Department b
  ON a.Studentid = b.Departmentid
  WHERE Departmentname='ME'
  UPDATE ENROL.sTUDENT
  set StudentMobile = '99999'
  WHERE sTUDENTid='4'

---- 14b	Update Student DepartmentID as 3, for the StudentID=42.
  update enrol.Student
set DepartmentID=3
WHERE StudentID = 42
;

---- 14c	Update LecturerHighestQualification as “PHd” for the Lecturer whose LecturerHighestQualification= “PhD”.
  update ENROL.LECTURER
  set LecturerHighestQualification = 'pHd'
  WHERE LecturerHighestQualification = 'PHd'

---- 14d	Update PostalCode as “00000” for the Address which contain NULL as a PostalCode.
  update ENROL.Address
  set PostalCode = '00000'
  WHERE PostalCode= 'NULL'
---- 14e	Update StudentLastName as “Paul” for the Student whose Name is “Jerry”.
update Enrol.student
set StudentLastName ='Jerry'
WHERE StudentLastName='PAUL'






















