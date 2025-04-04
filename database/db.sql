CREATE TABLE department(
  department_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  faculty VARCHAR(75),
  department VARCHAR(45),
  venue VARCHAR(45),
  telephone_num CHAR(10),
  email VARCHAR(45)
);

INSERT INTO department(faculty,department,venue)
VALUES ('Information Communication Technology','Department of Computer Science','12-12');

INSERT INTO department(faculty,department,venue)
VALUES ('Information Communication Technology','Department of Informatics','12-180');

INSERT INTO department(faculty,department,venue)
VALUES ('Information Communication Technology','Department of Information Technology','12-G01');

INSERT INTO department(faculty,department,venue)
VALUES ('Information Communication Technology','Department of Computer Systems Engineering','12-11');

INSERT INTO department(faculty,department,venue)
VALUES ('Information Communication Technology','ICT first years and foundation unit','12-5');

INSERT INTO department(faculty,department,venue)
VALUES ('Information Communication Technology','End user computing','12-11');

INSERT INTO department(faculty,department,venue)
VALUES ('Economics and Finances','Department of Accounting','2-g02');

INSERT INTO department(faculty,department,venue)
VALUES ('Economics and Finances','Department of Auditing','2-14');

INSERT INTO department(faculty,department,venue)
VALUES ('Economics and Finances','Department of Economics','4-20');

INSERT INTO department(faculty,department,venue)
VALUES ('Economics and Finances','Department of Finance and Investment','8-g05');

INSERT INTO department(faculty,department,venue)
VALUES ('Economics and Finances','Department of Public Sector Finance','2-g02');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Department of Biomedical Sciences','10-12');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Department of Chemistry','10-110');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Department of Physics','18-12');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Department of Biotechnology and food technology','10-12');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Department of Animal sciences','10-121');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Adelaide Tambo School of nursing sciences','10-101');

INSERT INTO department(faculty,department,venue)
VALUES ('Science','Mathematics and sciences','10-101');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of architecture and industrial design','21-1');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of building sciences','21-g6');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of chemical ,metallurgical and materials engineering','21-10');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of civil engineering','20-21');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of electrical engineering','21-5');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of geomatics','21-1');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Department of industrial engineering','21-1');

INSERT INTO department(faculty,department,venue)
VALUES ('Engineering and the Built Environment','Mechanical and mechatronics engineering','21-1');

INSERT INTO department(faculty,department,venue)
VALUES ('Humanities','Department Applied languages','17-1');

INSERT INTO department(faculty,department,venue)
VALUES ('Humanities','Department Integrated Communication','17-1');

INSERT INTO department(faculty,department,venue)
VALUES ('Humanities','Department of law','17-3');

INSERT INTO department(faculty,department,venue)
VALUES ('Humanities','Department of Public management','17-3');

INSERT INTO department(faculty,department,venue)
VALUES ('Humanities','Department of Safety and security management','17-3');

INSERT INTO department(faculty,department,venue)
VALUES ('Humanities','School of Education','17-3');



CREATE TABLE hod(
  hod_id INT PRIMARY KEY NOT NULL,
  name VARCHAR(45),
  surname VARCHAR(45),
  email VARCHAR(45),
  campus VARCHAR(45),
  password VARCHAR(45),
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(department_id)
);


INSERT INTO hod(hod_id,name,surname,email,campus,password,department_id)
VALUES(225896874,'JC','Janse van Vuuren','tyson@tut.ac.za','Soshanguve South','admin',1);

INSERT INTO hod(hod_id,name,surname,email,campus,password,department_id)
VALUES(215890874,'RC','Mogase','mogase@tut.ac.za','Soshanguve South','admin',2);

CREATE TABLE staff(
staff_id BIGINT NOT NULL PRIMARY KEY,
staff_name VARCHAR(45),
staff_surname VARCHAR(45),
email VARCHAR(45),
phone CHAR(10),
gender ENUM('male', 'female') NOT NULL,
campus VARCHAR(45),
department_id INT,
FOREIGN KEY (department_id) REFERENCES department(department_id)
);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (222424345,'James','Motaung','james34@tut4life.ac.za','0124578965','male','Soshanguve South',1);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (222466645,'Jane','Moloi','janeMol01@tut4life.ac.za','0124578365','female','Soshanguve South',2);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (202123345,'Johanna','McAthurthy','mcathurthy4@tut4life.ac.za','0127778360','female','Soshanguve South',1);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (212879345,'Thabo','Mokoena','mokoanaThab0@tut4life.ac.za','0129354560','male','Arcadia',15);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (202458345,'Dikeledi','Moepi','moepi@tut4life.ac.za','0127878360','female','Ga-rankuwa',5);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (212453459,'Marcia','Smith','marciSmith@tut.ac.za','0127796360','female','Pretoria',5);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (212478259,'Loraine','Sekele','seleke@tut.ac.za','0187799688','female','eMalahleni',5);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (212478003,'Chris','Michael','Michael@tut.ac.za','0187797825','male','eMalahleni',5);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (212478113,'Mpho','Tau','Mpho4@tut.ac.za','0184589336','male','Polokwane',5);

INSERT INTO staff(staff_id,staff_name,staff_surname,email,phone,gender,campus,department_id)
VALUES (212478123,'Clarence','Sekoma','Sekoma@tut.ac.za','0124584736','male','Acardia',18);

  CREATE TABLE administrator(
admin_id BIGINT PRIMARY KEY NOT NULL,
admin_name VARCHAR(45),
admin_surname VARCHAR(45),
gender ENUM('male', 'female') NOT NULL,
email VARCHAR(45),
phone CHAR(10), 
campus VARCHAR(45),
password VARCHAR(45));

INSERT INTO administrator(admin_id,admin_name,admin_surname,gender,email,phone,campus,password)
VALUE(202233345,'Mike','Jones','male','mkike234@gmail.com','0124578987','Soshanguve South','#creQiZ@');



CREATE TABLE division(
 id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
 division_name VARCHAR(45)
);

INSERT INTO division(division_name)/*1*/
VALUES('Plumbing');

INSERT INTO division(division_name)/*2*/
VALUES('Painting');

INSERT INTO division(division_name)/*3*/
VALUES('Carpentry');

INSERT INTO division(division_name)/*4*/
VALUES('Air Conditioning');

INSERT INTO division(division_name)/*5*/
VALUES('Electrical');

INSERT INTO division(division_name)/*6*/
VALUES('General (Water Proofing, Blinds & Glass)');

INSERT INTO division(division_name)/*7*/
VALUES('Engraving');

INSERT INTO division(division_name)/*8*/
VALUES('Buidling');

INSERT INTO division(division_name)/*9*/
VALUES('Lifts');

INSERT INTO division(division_name)
VALUES('Metalwork (Welding & Fitting)');/*10*/

CREATE TABLE item(
  item_id INT AUTO_INCREMENT PRIMARY KEY NOT NUll,
  item_name VARCHAR(45),
  division_id INT,
  FOREIGN KEY (division_id) REFERENCES division(id)
);

INSERT INTO item(item_name,division_id)
VALUES('Wood Doors',3);

INSERT INTO item(item_name,division_id)
VALUES('Burglar Door',10);

INSERT INTO item(item_name,division_id)
VALUES('Ligh Bulb',5);

INSERT INTO item(item_name,division_id)
VALUES('Geyser',5);

INSERT INTO item(item_name,division_id)
VALUES('Printers',5);

INSERT INTO item(item_name,division_id)
VALUES('Projector problem',5);

INSERT INTO item(item_name,division_id)
VALUES('Wood Shelves',3);

INSERT INTO item(item_name,division_id)
VALUES('Hardwood table issues',3);

INSERT INTO item(item_name,division_id)
VALUES('Earth Leakage',5);

INSERT INTO item(item_name,division_id)
VALUES('IT related',5);

INSERT INTO item(item_name,division_id)
VALUES('Window frames',8);

INSERT INTO item(item_name,division_id)
VALUES('Paving issues',8);

INSERT INTO item(item_name,division_id)
VALUES('Flooring issues',8);

INSERT INTO item(item_name,division_id)
VALUES('Broken Window Glass',6);

INSERT INTO item(item_name,division_id)
VALUES('Broken gate',10);

INSERT INTO item(item_name,division_id)
VALUES('Frequent burning out of light bulbs',5);

INSERT INTO item(item_name,division_id)
VALUES('Electric shocks',5);

INSERT INTO item(item_name,division_id)
VALUES('Less outlets',5);

INSERT INTO item(item_name,division_id)
VALUES('Tripping circuit breaker',5);

INSERT INTO item(item_name,division_id)
VALUES('Flickering light',5);

INSERT INTO item(item_name,division_id)
VALUES('Switches of light not working',5);

INSERT INTO item(item_name,division_id)
VALUES('A junction box that is uncovered',5);

INSERT INTO item(item_name,division_id)
VALUES('Power sags and dips',5);

INSERT INTO item(item_name,division_id)
VALUES('Overloading',5);

INSERT INTO item(item_name,division_id)
VALUES('Electrical surges',5);

INSERT INTO item(item_name,division_id)
VALUES(' Frequent burning out of light bulbs',5);

INSERT INTO item(item_name,division_id)
VALUES('Fading',2);

INSERT INTO item(item_name,division_id)
VALUES('Water Marks',2);

INSERT INTO item(item_name,division_id)
VALUES('Cracked Wall',8);

INSERT INTO item(item_name,division_id)
VALUES('Unstable Pillars',8);

INSERT INTO item(item_name,division_id)
VALUES('Unstable Walkway, Ramp & Bridge',8);

INSERT INTO item(item_name,division_id)
VALUES('Exterior walls bulging or leaning',8);

INSERT INTO item(item_name,division_id)
VALUES('Sagging roof and roof leaks',8);

INSERT INTO item(item_name,division_id)
VALUES('Foundation problems',8);

INSERT INTO item(item_name,division_id)
VALUES('Powdery or chalky surfaces on outside paint work',2);

INSERT INTO item(item_name,division_id)
VALUES('Shrivelling and wrinkling',2);

INSERT INTO item(item_name,division_id)
VALUES('Blistering and flaking',2);

INSERT INTO item(item_name,division_id)
VALUES('Power failure',9);

INSERT INTO item(item_name,division_id)
VALUES('Overheating',9);

INSERT INTO item(item_name,division_id)
VALUES('Stuck doors',9);

INSERT INTO item(item_name,division_id)
VALUES('Cracked panels',9);

INSERT INTO item(item_name,division_id)
VALUES('Smoke or fire',9);

INSERT INTO item(item_name,division_id)
VALUES('Safety gaps',9);

INSERT INTO item(item_name,division_id)
VALUES('Stuck elavator',9);

INSERT INTO item(item_name,division_id)
VALUES('Corroding metal furniture',10);

INSERT INTO item(item_name,division_id)
VALUES('Rusty metal furniture',10);

INSERT INTO item(item_name,division_id)
VALUES('Cracked window',6);

INSERT INTO item(item_name,division_id)
VALUES('Air conditioning leaking water',4);

INSERT INTO item(item_name,division_id)
VALUES('Air conditioning not blowing hot air',4);

INSERT INTO item(item_name,division_id)
VALUES('Air conditioning not blowing cold air',4);

INSERT INTO item(item_name,division_id)
VALUES('Air conditioning making noises',4);

INSERT INTO item(item_name,division_id)
VALUES('Air conditioning power issue',4);

INSERT INTO item(item_name,division_id)
VALUES('Dripping faucets',1);

INSERT INTO item(item_name,division_id)
VALUES('Leaky pipes',1);

INSERT INTO item(item_name,division_id)
VALUES('Running toilets',1);

INSERT INTO item(item_name,division_id)
VALUES('Low water pressure',1);

INSERT INTO item(item_name,division_id)
VALUES('Slow or clogged drains',1);

INSERT INTO item(item_name,division_id)
VALUES('Sewer system backup',1);

INSERT INTO item(item_name,division_id)
VALUES('Request for etching',7);

INSERT INTO item(item_name,division_id)
VALUES('Request for inside ring engraving',7);

INSERT INTO item(item_name,division_id)
VALUES('Request for laser engraving',7);

INSERT INTO item(item_name,division_id)
VALUES('The lock is broken',10);

INSERT INTO item(item_name,division_id)
VALUES('Key broken in lock',10);

INSERT INTO item(item_name,division_id)
VALUES('Door will not close',10);

INSERT INTO item(item_name,division_id)
VALUES('Back up generator did not commence ',5);


CREATE TABLE technician(
  tech_id BIGINT NOT NULL PRIMARY KEY,
  name VARCHAR(45),
  surname VARCHAR(45),
  phone CHAR(10),
  email VARCHAR(45),
  gender ENUM('male', 'female'),
  availability ENUM('available', 'busy') NOT NULL,
  division_id INT,
  campus VARCHAR(45),
  password VARCHAR(45),
  FOREIGN KEY (division_id) REFERENCES division(id)
);

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25897486,'John','Black','0124578987','john@tut.ac.za','male','available',1,'Soshanguve South','john%Bl@ck');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25999486,'Sam','Modise','0124574581','sammodise@tut.ac.za','male','available',2,'Soshanguve South','s@mModI~3');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25997850,'Tebogo','Zwane','0124345666','tebogoZwane@tut.ac.za','male','available',5,'Soshanguve South','tebogo');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25997936,'Xolile','Dube','0128745963','xoliDube@tut.ac.za','male','available',5,'Acardia','1xoli');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25997859,'Sifiso','Khumalo','0124347852','Skhumalo@tut.ac.za','female','available',2,'Soshanguve South','sifis0');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25997958,'Matthews','Kehla','0124378152','MatKelha@tut.ac.za','male','available',6,'Soshanguve South','k123');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(25998851,'Mpho','Mashaba','012437752','Mpho234@tut.ac.za','male','available',5,'eMalahleni','mpho1');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21990052,'Lesego','Radebe','012434496','MLes2@tut.ac.za','male','available',1,'eMalahleni','les1');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21894865,'Leon','Railey','012437891','raileyL@tut.ac.za','male','available',5,'Pretoria','1234');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21914818,'Thabani','Zulu','012637776','zuluNdabezitha@tut.ac.za','male','available',1,'Pretoria','thabani');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21915811,'Dumisani','Mahlangu','012637776','dubs@tut.ac.za','male','available',2,'Acardia','dumi23');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21918965,'Katlego','Maboe','012438576','lats@tut.ac.za','male','available',2,'Acardia','katzxe');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21518934,'Khumo','Seadimo','012438895','khumo34@tut.ac.za','male','available',2,'Polokwane','khum0');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21911168,'Katlego','Maboe','012438576','lats@tut.ac.za','male','available',2,'Acardia','777');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21911060,'Samkelo','Zungu','012437876','sam@tut.ac.za','male','available',2,'Polokwane','katzxe');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21611061,'Sbusiso','Zwane','012437845','ssbu@tut.ac.za','male','available',5,'Polokwane','777');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21711162,'Lebogang','Zwane','012437845','lebza@tut.ac.za','male','available',5,'Polokwane','sbu');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21766660,'Lesiba','Rampa','012437895','lesa@tut.ac.za','male','available',1,'Polokwane','les');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21666456,'Lesedi','Rooi','012789895','lesediLight@tut.ac.za','male','available',1,'Ga-rankuwa','lesedi');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21616051,'Jimmy','Moloko','012789123','JIM@tut.ac.za','male','available',2,'Ga-rankuwa','lesedi');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21916011,'Jonathan','Bayers','012778123','jona@tut.ac.za','male','available',5,'Ga-rankuwa','jon');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21918052,'Phil','Matjila','012789123','pmatjila@tut.ac.za','male','available',6,'Ga-rankuwa','4857');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21913457,'Jason','Khubeka','012778103','jasonk@tut.ac.za','male','available',5,'Pretoria','jason');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21913458,'Jason','Khubeka','012778103','jasonk@tut.ac.za','male','available',1,'Arcadia','jason');

INSERT INTO technician(tech_id,name,surname,phone,email,gender,availability,division_id,campus,password)
VALUES(21933400,'Jerah','Cliff','012718113','jasonk@tut.ac.za','male','available',6,'Polokwane','jerah1');

CREATE TABLE work_request(
 id BIGINT NOT NULL PRIMARY KEY,
 description TEXT,
 req_date date,
 category VARCHAR(45),
 priority VARCHAR(45),
 venue VARCHAR(45),
 image BLOB,
 progress VARCHAR(45),
 staff_feedback TEXT,
 tech_feedback TEXT,
 rating INT,
 status ENUM ('active','closed'),
 completed_date date,
 assigned_date date,
 expected_date date,
 completion_time VARCHAR(5),
 expected_time VARCHAR(5),
 closed_date VARCHAR(45),
 admin_id BIGINT,
 tech_id BIGINT,
 staff_id BIGINT,
 FOREIGN KEY (tech_id) REFERENCES technician(tech_id),
 FOREIGN KEY (admin_id) REFERENCES administrator(admin_id),
 FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,status,admin_id,tech_id,staff_id)
VALUES(1678884550556,'Leaking taps','2023-03-20','Plumbing','High','10-g28','','in-progress','active',202233345,25897486,222424345);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,staff_feedback,tech_feedback,rating,status,admin_id,tech_id,staff_id)
VALUES(1678784590556,'Blue screen','2023-03-06','Hardware','High','10-112','','complete','the issue is sorted','done with task',4,'active',202233345,25999486,212879345);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,staff_feedback,tech_feedback,rating,status,admin_id,tech_id,staff_id)
VALUES(1678684550957,'PC not switching on','2023-03-15','Hardware','High','10-102','','complete','sorted','hardware components changed',3,'closed',202233345,25999486,222466645);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,staff_feedback,tech_feedback,rating,status,completed_date,assigned_date,admin_id,tech_id,staff_id)
VALUES(1678584897459,'No hot water','2023-04-20','Electrical','High','11-62','','complete','sorted','thermostat replaced',3,'closed','2023-04-23','2023-04-23 ',202233345,25997936,222466645);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,staff_feedback,tech_feedback,rating,status,completed_date,assigned_date,admin_id,tech_id,staff_id)
VALUES(1678584235896,'Flickering lights','2023-04-10','Electrical','High','4-112','','complete','sorted','lights changed',3,'closed','2023-04-14','2023-04-13 ',202233345,25997936,222466645);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,staff_feedback,tech_feedback,rating,status,completed_date,assigned_date,admin_id,tech_id,staff_id)
VALUES(1678584330959,'Blocked toilets','2023-03-15','Plumbing','High','10-112','','complete','sorted','pipes changed',3,'closed','2023-03-19','2023-03-19 ',202233345,25897486,222466645);

INSERT INTO work_request(id,description,req_date,category,priority,venue,image,progress,staff_feedback,tech_feedback,rating,status,assigned_date,admin_id,tech_id,staff_id)
VALUES(1678884550551,'Burst water pipe','2023-03-23','Plumbing','High','10-1','','on-hold','sorted','pipes ordered',3,'active','2023-03-29 ',202233345,25897486,212478113);

INSERT INTO work_request(id,description,req_date,category,venue,image,progress,staff_feedback,tech_feedback,status,staff_id)
VALUES(1678884557896,'Shattered windows','2023-03-25','Glass','10-1','','pending','','','active',212478113);

INSERT INTO work_request(id,description,req_date,category,venue,image,progress,staff_feedback,tech_feedback,status,staff_id)
VALUES(1674584557236,'Lights not going on','2023-04-25','Electrical','10-1','','pending','','','active',212478259);