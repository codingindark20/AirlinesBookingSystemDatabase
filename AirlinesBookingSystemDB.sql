create database MalaysiaAirlinesBookingSystem


create table Pilot_information(
P_id char(10) primary key,P_staff_no char(20) not null,P_license_no char(20) unique,P_fname varchar(20)not null,P_lname varchar(20) not null,
P_age int not null, year_of_experience int,P_no_of_flight int not null,P_position varchar(20) not null,flying_hours int,
P_salary money not null,P_email varchar(30)
);

select *from Pilot_information

insert into pilot_information values('8910357kAD','0000011111222223333A','11111111110000000000','Max','Martin',28,5,3,'co-captian',18000,4000,'max.martin@gmail.com')
insert into pilot_information values('8910357OAP','0000011111222223333B','11111111110000000002','George','Strait',29,6,2,'co-captain',18000,3200,'george.strait@gmail.com')
insert into pilot_information values('8910357LAP','0000011111222223333C','11111111110000000003','Tom','Charlie',30,7,3,'co-captain',19000,4100,'charlie.tom@gmail.com')
insert into pilot_information values('8910357MAP','0000011111222223333D','11111111110000000004','Marin','king',27,4,2, 'co-captain',15000, 4000,'marin.king@gmail.com')
insert into pilot_information values('8910357NAP','0000011111222223333E','11111111110000000005','Mikael','Tinnason',26,5,3,'co-captain',15400, 4100,'maroon.ries@gmail.com')
insert into pilot_information values('8910357BAT','0000011111222223333F','11111111110000000006','Jon','Bell',35,10,1,'captain',27000,6000,'jon.bell@gmail.com')
insert into pilot_information values('8910357RAT','0000011111222223333G','11111111110000000007','Louis','Davies',37,10,4,'captain',30000,6100,'louis.davies@gmail.com')
insert into pilot_information values('8910357WAP','0000011111222223333H','11111111110000000008','Taylor','Hill',36,15,3,'captian',20000,6000,'hill.taylor@gmail.com')
insert into pilot_information values('8910357YAP','0000011111222223333I','11111111110000000009','Andrew','Carnegie',38,5,2,'co-captian',12000,4100,'andrew.carnegie@gmail.com')
insert into pilot_information values('8910357PQL','0000011111222223333J','11111111110000000033','Freddie','Swift',28,5,1,'co-captian',11000,4100,'freddie.swift@gmail.com')
insert into pilot_information values('8910357IAS','0000011111222223333k','11111111110000000044','Kim','Smith',30,5,1,'co-captian',19000,3800,'kim.smith@gmail.com')
insert into pilot_information values('8910357BQP','0000011111222223333L','11111111110000000055','Robert','Depp',35,5,3,'co-captian',14000,4500,'kim.smith@gmail.com')
insert into pilot_information values('8910357KQY','0000011111222223333M','11111111110000000066','Jim','Watson',37,5,3,'co-captian',15000,4000,'kim.smith@gmail.com')
insert into pilot_information values('8910357SUO','0000011111222223333N','11111111110000000077','Daniel','Dicaprio',27,5,2,'co-captian',13000,3500,'kim.smith@gmail.com')
insert into pilot_information values('8910357FWQ','0000011111222223333O','11111111110000000088','Emma','Carrey',24,5,1,'co-captian',15000,3700,'kim.smith@gmail.com')

UPDATE Pilot_information
SET P_fname ='Mikael', P_lname='Tinnason'
WHERE P_id = '8910357LAP';


create table flight_details(
flight_id char(10) primary key,flight_no char(15)not null,flight_name varchar (30),Business_Seat int not null,Economy_seat int not null
);

select *from flight_details

insert into flight_details values('4720310JIP','121212121233333','Boeing 737',20,200)
insert into flight_details values('4720310FIP','121212121233334','Boeing 737',20,200)
insert into flight_details values('4720310TIP','121212121233335','Boeing 727',10,100)
insert into flight_details values('4720310ZIP','121212121233336','P51 Hubris',5,110)
insert into flight_details values('4720310QIP','121212121233337','BF-21',5,115)
insert into flight_details values('4720310XIP','121212121233338','U-2 Zerox',8,100)
insert into flight_details values('4720310MIP','121212121233339','ZX-47 Range',25,205)
insert into flight_details values('4720310LIP','121212121233332','ATR-72-400',20,200)
insert into flight_details values('4720310OIP','121212121233330','Boeing 737',10,150)
insert into flight_details values('4720310WIP','1212121212333AA','P51-Hubris',24,200)
insert into flight_details values('4720310CIP','1212121212333BB','Boeing 727',20,300)
insert into flight_details values('4720310GIP','1212121212333CC','ATR-72-400',18,80)
insert into flight_details values('4720310YIP','1212121212333DD','ZX-47',10,200)
insert into flight_details values('4720310AIP','1212121212333EE','U-2 Zerox',10,80)
insert into flight_details values('4720310DIP','1212121212333FF','ART-72-400',15,200)



create table flight_attendants(
f_attendant_passport_no char(10) primary key,f_total_attendant int not null,f_attendant_id char(15) unique,
f_attendant_fname varchar(30)not null,f_attendant_lname varchar(30)not null,flight_served int not null,f_attendant_position varchar(20)not null,f_attendant_salary money not null,
f_attendant_ph_no char(10)not null,f_attendant_street varchar(20),f_attendant_city varchar(20)not null, f_attendant_state varchar(20),
f_attendant_postalcode char(5),country varchar(35) not null
)

select *from flight_attendants

insert into flight_attendants values('01235689LB', 4,'99999888880000P','Nicki','Cyrus',200,'Air hostess',2500,'0912387000','Campbell Road','Kaula Lumpur','Selangor','00546','Malaysia')         
insert into flight_attendants values('01235688MB',5,'99999888880000Q','Heinrich','Kubis',220,'Air hostess',2500,'0912387123','Hyat Road','George Town','Penang','00547','Malaysia')
insert into flight_attendants values('01235687SB',5,'99999888880000R','Ellen', 'Church',320,'Air hostess',2800,'0912387456','Roll Road','Hue','Thura Thien Hue','00548','Vietnam')
insert into flight_attendants values('01235686KB',4,'99999888880000S','Edith', 'Lauterbach',300,'Air hostess',3000,'0912387789','Uvi Street','Hue','Thura Thien Hue','00549','Vietnam')
insert into flight_attendants values('01235685SB',4,'99999888880000T','Mikael', 'Tinnason',250,'Air hostess',3000,'0912387098','Light road','Kaula Lumpur','Selangor','00541','Malaysia')
insert into flight_attendants values('01235684RM',3,'99999888880000U','Barbara', 'Harrison',400,'Flight purser',3600,'0912387765','Violet Road','Alor Setar','Kedah','00542','Malaysia')
insert into flight_attendants values('01235683NK',4,'99999888880000V','Hellen', 'smith ',440,'Flight purser',3500,'0912387432','Market Street','Kuantan','Pahang','00543','Malaysia')
insert into flight_attendants values('01235682GP',4,'99999888880000W','Sharon', 'Malik',430,'Flight purser',3200,'0912387135','Broadway','Kota Bhura','Kelantan','00544','Malaysia')
insert into flight_attendants values('01235681JK',5,'99999888880000X','Hazel', 'Master',475,'Flight purser',3200,'0912387579','Canal Street','Quezon City','Manila','00545','Philippines')
insert into flight_attendants values('01235680RT',4,'99999888880000Y','Sarah', 'allen',375,'Air hostess',2200,'0912387924','Cedar street','Kaula Lumpur','Selangor','00511','Malaysia' )
insert into flight_attendants values('01235680FG',4,'99999888880000Z','Amy', 'Covey',210,'Air hostess',2200,'0912387614','Ninth street','Jakarta','Java','00512','Indonesia')
insert into flight_attendants values('01235681ZY',4,'99999888880000A','Ruby', 'Osman',180,'Air hostess',2000,'0912387444','Brick lane','Kaula Lampur','Selangor','00513','Malaysia')
insert into flight_attendants values('01235689WE',4,'99999888880000B','Janet', 'Ries',200,'Air hostess',2000,'0912387777','Abbey Road','Kaula Lumpur','Selangor','00514','Malaysia')
insert into flight_attendants values('01235687AR',3,'99999888880000C','Jane', 'Razak',230,'Air hostess',2000,'0912387898','Maulana Street','Doha','Al-Dawhah','00515','Qatar')
insert into flight_attendants values('01235686VB',4,'99999888880000D','Gloria', 'Marie',225,'Air hostess',2000,'0912387666','Sayad Street','Kuching','Swrarak','00516','Malaysia')



create table customer_details(
c_booking_id char(10)primary key,c_fname varchar(35)not null,c_lname varchar(35)not null,c_house_ph_no char(10),
c_emailaddress varchar(35),c_street varchar(35),c_city varchar(35) not null,c_provience varchar(35),c_postal_code varchar(35),c_country varchar(35)not null
)

select *from customer_details

insert into customer_details values('24343200OP','Ovid','Lincoln','6543122563','ovid.lincoln@gmail.com','Campbell Road','Kaula Lumpur','Selangor','00345','Malaysia')
insert into customer_details values('24343201KL','Lucas','Carroll','6543122566','lucas.carroll@gmail.com','Cite Road','Kaula Lumpur','Selangor','00346','Malaysia')
insert into customer_details values('24343202NV','Noah','Wilson','6543122588','noah.wilson@gmail.com',' Lexicon Road','Kaula Lumpur','Selangor','00347','Malaysia')
insert into customer_details values('24343203WQ','Banjo','Tesla','6543122580','banjo.tesla@gmail.com','Mix Road','Kuching','Swrarak','00348','Malaysia')
insert into customer_details values('24343204MB','Anton','Obama','6543122534','anton.obama@gmail.com','Bamboo Road','Kuching','Swrarak','00349','Malaysia')
insert into customer_details values('24343205DG','Lily','Dickens','6543122521','lily.dickens@gmail.com','Fern Street','Kuching','Swrarak','00223','Malaysia')
insert into customer_details values('24343206YT','Violet','Donne','6543122509','violet.donne@gmail.com','Window Road','Kuching','Swrarak','00224','Malaysia')
insert into customer_details values('24343207VG','Isla','Wilde','6543122545','isla.wilde@gmail.com','Seed Street','George Town','Penang','00225','Malaysia')
insert into customer_details values('24343208SD','Lucy','Twain','6543122551','lucy.twain@gmail.com','Zoy Road','George Town','Penang','00226','Malaysia')
insert into customer_details values('24343209SS','Naomi','Harte','6543122539','naomi.harte@gmail.com','Atti Road','George Town','Penang','00227','Malaysia')
insert into customer_details values('2434320QWE','Elena','Wesley','6543122575','elena.wesley@gmail.com','Vital Road','George Town','Penang','00228','Malaysia')
insert into customer_details values('2434320ERT','Ivy','Lincoln','6543122583','iva.lincoln@gmail.com','Kobin Road','Kaula Lumpur','Selangor','00229','Malaysia')
insert into customer_details values('2434320YUI','Bella','Lincoln','6543122549','bella.lincoln@gmail.com','Hill Street','Kaula Lumpur','Selangor','00331','Malaysia')
insert into customer_details values('2434320POI','Bobby','Keys','6543122527','bobby.keys@gmail.com','Seventh Street','Kaula Lumpur','Selangor','00332','Malaysia')
insert into customer_details values('2434320TEQ','Roy','Dion','6543122561','roy.dion@gmail.com','Niee Street','Kaula Lumpur','Selangor','00334','Malaysia')




create table flight_scheduled_details(
Scheduled_no int  primary key,flight_id char(10)not null,flight_count int not null,P_id char(10)not null,f_attendant_passport_no char(10)not null,
f_departuredate date not null,departuretime time not null,
arrivaldate date not null,arrivaltime time not null,departed_place varchar(20)not null,destination_place varchar(20)not null,
foreign key (P_id) references Pilot_information(P_id),foreign key(flight_id) references flight_details(flight_id),
foreign key(f_attendant_passport_no) references flight_attendants(f_attendant_passport_no)
)


select *from flight_scheduled_details

insert into flight_scheduled_details values(10001,'4720310JIP',1,'8910357KAD','01235689LB','2021-6-25','1:00PM' ,'2021-6-25','6:00 PM' ,'Kuala Lampur','Seoul')
insert into flight_scheduled_details values(10002,'4720310FIP',1,'8910357OAP','01235688MB','2021-6-25','12:00PM','2021-6-25','6:00PM','Tokyo','Kuala Lumpur')
insert into flight_scheduled_details  values(10003,'4720310TIP',1,'8910357LAP','01235687SB','2021-6-26','2:00PM','2021-6-26','6:30PM','New Delhi','Kuala Lumpur')
insert into flight_scheduled_details values(10004,'4720310ZIP',2,'8910357MAP','01235686KB','2021-6-25','3:00PM','2021-6-25','7:30PM','Kuala Lumpur','Kathmandu')
insert into flight_scheduled_details values(10005,'4720310QIP',1,'8910357NAP','01235685SB','2021-6-24','4:00PM','2021-6-24','7:20PM','colombo','Kuala Lumpur')
insert into flight_scheduled_details values(10006,'4720310XIP',1,'8910357BAT','01235684RM','2021-6-22','12:00PM','2021-6-22','5:50PM','Kuala Lumpur','Beijing')
insert into flight_scheduled_details values(10007,'4720310MIP',2,'8910357RAT','01235683NK','2021-6-23','5:00PM','2021-6-23','6:00PM','Singapore','Kuala Lumpur')
insert into flight_scheduled_details values(10008,'4720310LIP',1,'8910357WAP','01235682GP','2021-6-21','2:00PM','2021-6-21','5:30PM','Kuala Lumpur','City of Victoria')
insert into flight_scheduled_details values(10009,'4720310OIP',2,'8910357YAP','01235681JK','2021-6-25','1:00PM','2021-6-25','4:30PM','Kuala Lumpur','Manila')
insert into flight_scheduled_details values(10010,'4720310WIP',2,'8910357PQL','01235680RT','2021-6-19','11:00PM','2021-6-20','8:00AM','Doha','Kuala Lumpur')
insert into flight_scheduled_details values(10011,'4720310JIP',3,'8910357IAS','01235680FG','2021-6-21','11:00PM','2021-6-22','8:30AM','Kuala Lampur','Riyadh')
insert into flight_scheduled_details values(10012,'4720310GIP',1,'8910357BQP','01235681ZY','2021-6-15','10:00PM','2021-6-16','6:20AM','Tehran','Kuala Lampur')
insert into flight_scheduled_details values(10013,'4720310YIP',2,'8910357kQY','01235689WE','2021-6-25','12:00PM','2021-6-25','3:40PM','Kuala Lampur','Dhaka')
insert into flight_scheduled_details values(10014,'4720310AIP',1,'8910357SUO','01235687AR','2021-6-12','12:00PM','2021-6-12','4:00PM','Thimphu','Kuala Lumpur')
insert into flight_scheduled_details values(10015,'4720310DIP',2,'8910357FWQ','01235686VB','2021-6-10','12:00PM','2021-6-11','6:00PM','Kuala Lampur','Islamabad')




create table customer_booking(
c_passport_no char(10) primary key,booking_no char(10)unique,booking_date date not null,flight_id char(10)not null,
c_booking_id char(10)not null,c_fname varchar(30)not null,
c_lname varchar(30) not null,c_emailaddress varchar(30),Scheduled_no int not null,C_flightbooked int not null,C_seatbooked_per_flight int not null,charge_per_flight money not null,
booking_total money not null,foreign key(c_booking_id) references customer_details(c_booking_id),
foreign key(flight_id) references flight_details (flight_id),foreign key(Scheduled_no) references flight_scheduled_details (Scheduled_no)
)

select *from customer_booking

insert into customer_booking values('385110RYPH','432509615L','2021-6-28','4720310JIP','24343200OP','John','Rick','john.rick@gmail.com',10001, 2,1,'300','300')
insert into customer_booking values('385110RZPH','432509615M','2021-6-28','4720310FIP','24343201KL','Liam','Miller','liam.millar@gmail.com',10002,1,2,'300','600')
insert into customer_booking values('385110RPPH','432509615N','2021-6-28','4720310TIP','24343202NV','Roy','Jones','roy.jones@gmail.com',10003,0,0,'300','900')
insert into customer_booking values('385110RQPH','432509615O','2021-6-28','4720310ZIP','24343203WQ','William','Moore','william.moore@gmail.com',10004,2,4,'300','1200')
insert into customer_booking values('385110RTPH','432509615P','2021-6-28','4720310QIP','24343204MB','Aaron','Taylor','aaron.taylor@gmail.com',10005,4,5,'300','300')
insert into customer_booking values('385110RMPH','432509615Q','2021-6-28','4720310XIP','24343205DG','Cameron','White','cameron.white@gmail.com',10006,3,1,'300','300')
insert into customer_booking values('385110RGPH','432509615R','2021-6-28','4720310MIP','24343206YT','Miles','Harris','miles.harris@gmail.com',10007,0,0,'300','600')
insert into customer_booking values('385110RSPH','432509615S','2021-6-28','4720310LIP','24343207VG','Elias','Garcia','elias.garcia@gmail.com',10008,3,1,'300','300')
insert into customer_booking values('385110RJPH','432509615T','2021-6-28','4720310OIP','24343208SD','Charles','Clark','charles.clark@gmail.com',10009,1,1,'300','300')
insert into customer_booking values('385110RXPH','432509615U','2021-6-28','4720310WIP','24343209SS','Ezra','Lewis','ezra.lewis@gmail.com',10010,0,0,'300','1200')
insert into customer_booking values('385110R6PH','432509615V','2021-6-28','4720310CIP','2434320QWE','Wyatt','Walker','wyatt.walker@gmail.com',10011,1,1,'300','300')
insert into customer_booking values('385110RAPH','432509615W','2021-6-28','4720310GIP','2434320ERT','Samuel','Philips','samuel.philips@gmail.com',10012,1,1,'300','300')
insert into customer_booking values('385110REPH','432509615X','2021-6-28','4720310YIP','2434320YUI','Jack','Collins','jack.collins@gmail.com',10013,1,1,'300','300')
insert into customer_booking values('385110RCPH','432509615Y','2021-6-28','4720310AIP','2434320POI','Levi','Nelson','levi.nelson@gmail.com',10014,2,3,'300','1500')
insert into customer_booking values('385110RBPH','432509615Z','2021-6-28','4720310DIP','2434320TEQ','Jacob','Bell','jacob.bell@gmail.com',10015,1,1,'300','300')



UPDATE customer_booking
SET  c_fname= 'Alfred', c_lname='Schmidt'
WHERE c_passport_no = '385110RPPH';





sp_tables
select*from sys.tables where day(create_date)=11

select getdate()
select user

sp_who2
select @@version

select *from sys.tables





--1. Display the average of salary for pilots who have reached or exceeded 20,000 flying hours.

select AVG(P_salary) as average from Pilot_information where flying_hours='20000'

--0r

SELECT AVg(P_salary) as average
FROM Pilot_information
WHERE(flying_hours= 20000);

--2. List the flight(s) with the most number of seat in total (include business class & economy class)

SELECT *from flight_details WHERE Business_Seat+Economy_seat = (SELECT MAX(Business_Seat + Economy_seat  ) from flight_details)


--3. Find the Airline with the most number of flights.

select flight_id, count(*) as flight_count from flight_scheduled_details   flight_id
having count(*)=(select MAX(flight_count) from flight_scheduled_details)

select flight_details.flight_id ,flight_scheduled_details.flight_count from flight_details, flight_scheduled_details where flight_details.flight_id=flight_scheduled_details.flight_id
AND  flight_scheduled_details.flight_count= (select MAX(flight_count) from flight_scheduled_details)


sp_help flight_scheduled_details

select *from flight_scheduled_details where  flight_count





--1.Display customer's first name and last name who have made more than two bookings.

select c_fname,c_lname,C_flightbooked from customer_booking where C_flightbooked >2

--2. List flight attendant's full name and position who have worked in the same flight as a pilot named 'Mikael Tinnason'.

SELECT flight_attendants.f_attendant_fullname, flight_attendants.f_attendant_position 
FROM flight_attendants INNER JOIN flight_scheduled_details

ON flight_attendants.f_attendant_passport_no = flight_scheduled_details.scheduled_no

INNER JOIN Pilot_information

ON flight_attendants.f_attendant_passport_no = Pilot_information.P_id




--OR
SELECT i.f_attendant_passport_no, i.f_attendant_fname+''+ i.f_attendant_lname as f_attendant_fullName, i.f_attendant_position
FROM flight_attendants i
LEFT JOIN flight_attendants a ON i.f_attendant_passport_no = a.f_attendant_passport_no
LEFT JOIN Pilot_information c ON a.f_attendant_passport_no = c.P_id
WHERE c.P_fname = 'Mikael+Tinnason';


--3. Find the flight attendant who served the most number of flights.

select f_attendant_id,f_attendant_fullname,f_attendant_position, flight_served from flight_attendants where flight_served = (select MAX(flight_served) from flight_attendants)



--1. Display the flight with the most number of seats for business class.

SELECT *from flight_details WHERE(Business_Seat)=MAX(Business_Seat);

select flight_id,flight_name,Business_seat from flight_details where Business_seat=(select MAX(Business_Seat) from flight_details)

SELECT MAX(Business_seat) AS Business_Seat
FROM flight_details; 


--2 List all customer's first name and last name who did not place any booking. Sort the records by customer id in descending order.

select *from customer_booking

select c_fname,c_lname,c_seatbooked_per_flight,c_flightbooked from customer_booking where c_seatbooked_per_flight=0 AND c_flightbooked=0



select count(c_booking_id), C_flightbooked
from  customer_booking
group BY C_flightbooked
having count(C_flightbooked)=0
order BY COUNT(c_booking_id) DESC;


--3. Show how many flights are there which scheduled to depart from Kuala Lumpur.

 select *from flight_scheduled_details where departed_place= 'Kuala Lumpur'





--1.Find the flight attendant who has the highest salary.

select *from flight_attendants
where 
select MAX(f_attendant_salary) from f_attendant_salary


SELECT cust_country,MAX(outstanding_amt) 
FROM customer 
WHERE grade=2 
GROUP BY cust_country;

select *from flights_attendants 
order by f_attendant_salary desc


--2.List the name and the position of flight atttendants whose salary is neither 2,800 nor 3,500.

select *from flights_attendants where(f_attendant_salary<>2800) or f_attendant_salary<>3500)

--3. Display customer's first name and last name who have the most number of booking.







select 


--student 4=Lokesh
1.select *from flights_attendants order by f_attendant_salary desc

2.select *from flights_attendants where(f_attendant_salary<>2800) or f_attendant_salary<>3500)

select c_fname,c_lname,count() as count1 from customer_details
inner join dbo.customer_bookings


--Studen3=MUNA
SELECT MAX( Business_Seat) AS "Most no of seat "
FROM flightdetails;

SELECT f_Name, Business_seat
FROM Business_seat
WHERE Business_seat = (SELECT MAX(Business seat) FROM Business_seat);


select c_fname, c_lname from customer_details
inner join dbo.customer_booking
on 
group by 









--3.
--1.Display the flight with the most number of seats for business class.
select *from flight_details where(Business_Seat)=max(Business_Seat)



select *from flight_scheduled_details where departed_place= 'Kuala Lumpur'




select c_fname, c_lname 
from customer_details
inner join dbo.customer_booking
on 



select count(c_booking_id), C_flightbooked
from  customer_booking
group BY C_flightbooked
having count(C_flightbooked)=0
order BY COUNT(c_booking_id) DESC;

--student=2 Rochak
