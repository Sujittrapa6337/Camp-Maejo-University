create table Student (
	idCard varchar(13) not null,
    fullName varchar(255) not null,
    birthday date not null,
    tel varchar(10) not null,
    email varchar(255) not null,
    years integer not null,
    eduProgram varchar(100) not null,
    school varchar(100) not null,
    username varchar(45) not null,
    passwords varchar(45) not null,
    primary key(idCard)
);
create table CampType (
	campTypeId integer ,
    campTypeName varchar(45) not null,
    primary key(campTypeId)
);
create table Major (
	majorId integer ,
    majorName varchar(45) not null,
    primary key(majorId)
);
create table Camp (
	campId integer not null,
    campName varchar(255) not null,
    property varchar(255) not null,
    document varchar(255) ,
    price integer,
    quantity integer not null,
    applyDate date,
    majorId integer not null,
    campTypeId integer not null,
    primary key(campId),
    foreign key(majorId) references Major(majorId),
	foreign key(campTypeId) references CampType(campTypeId)
);
create table Staff (
	idCard varchar(13) not null,
    fullName varchar(45) not null,
    majorId integer not null,
    primary key(idCard),
    foreign key(majorId) references Major(majorId)
);
create table Register(
	registerId integer not null,
    statuses varchar(45),
    idCard varchar(13),
    campId integer,
    primary key(registerId),
    foreign key(idCard) references Student(idCard),
    foreign key(campId) references Camp(campId)
);
create table Schedules(
	applyDate date not null,
    closeDate date,
    announcedDate date,
    startDate date,
    endDate date,
    payStartDate date,
    payEndDate date,
    campId integer,
    primary key(applyDate),
    foreign key(campId) references Camp(campId)
);
create table Management(
	managementId integer,
    detail varchar(45),
    campId integer,
    idCard varchar(13),
    primary key(managementId),
    foreign key(campId) references Camp(campId),
    foreign key(idCard) references Staff(idCard)
);
create table Bill(
	billNo varchar(10),
    datePayment date,
    modeOfPayment varchar(45),
    price integer,
    statuses varchar(45),
    registerId integer,
    primary key(billNo),
    foreign key(registerId) references Register(registerId)
);


/*student*/
insert into Student values('1500703287416','กนกนิภา ยาธิดา','2000-01-01','0932276418','kanoknipa@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','kanoknipa','kanoknipa18');
insert into Student values('1500794512748','กชนิภา ศิลปการสกุล','2000-01-12','0903754185','koodnipa@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','koodnipa','koodnipa11');
insert into Student values('1500794762184','กชนุช ปริยากรโสภณ','2000-01-23','0973217532','koodnud@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','koodnud','koodnud32');
insert into Student values('1500707423845','กนก ธนาภูวนัตถ์','2000-01-30','0984327515','kanook@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','kanook','kanook15');
insert into Student values('1845174329717','กันตาภา วรโชติวาทิน','2000-02-20','0984628451','kantapon@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','kantapon','kantapon51');
insert into Student values('1845923257330','กาญจนา วรโชติโภคิน','2000-02-11','0947285471','kanjana@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','kanjana','kanjana71');
insert into Student values('1845129534011','กานดา วรโชติธนัน','2000-02-14','0963218562','kanta@gmail.com',5,'วิทย์-คณิต','โรงเรียนจอมทอง','kanta','kanta62');
insert into Student values('1845011231842','กานติมา อัคคเดชโภคิน','2000-02-20','0974317528','kantima@gmail.com',5,'ศิลป์-คำนวน','โรงเรียนจอมทอง','kantima','kantima28');
insert into Student values('1513957328573','กิตติญา พิชญเดชา','2000-02-21','0985632185','kittiya@gmail.com',5,'ศิลป์-คำนวน','โรงเรียนจอมทอง','kittiya','kittiya85');
insert into Student values('1513854948439','เขมิกา กิจสุพัฒน์ภาคิน','2000-03-20','0986317432','kamika@gmail.com',5,'ศิลป์-คำนวน','โรงเรียนช่องฟ้าซินเซิงวาณิชบำรุง','kamika','kamika32');
insert into Student values('1513859395773','คำนึง ชนาภัทรวรโชติ','2000-03-19','0986573218','kumnung@gmail.com',5,'ศิลป์-คำนวน','โรงเรียนช่องฟ้าซินเซิงวาณิชบำรุง','kumnung','kumnung18');
insert into Student values('1513954939563','จอมใจ ปิติโชคโภคิน','2000-03-03','0987321754','jomjai@gmail.com',5,'ศิลป์-คำนวน','โรงเรียนช่องฟ้าซินเซิงวาณิชบำรุง','jomjai','jomjai54');
insert into Student values('1781492758389','จันจิมา วรโชติอิงคนันท์','2000-03-01','0947281453','janjima@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนช่องฟ้าซินเซิงวาณิชบำรุง','janjima','janjima53');
insert into Student values('1781753884281','จันทกานต์ วรโชติเมธี','2000-03-30','0974317532','jantakan@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนช่องฟ้าซินเซิงวาณิชบำรุง','jantakan','jantakan32');
insert into Student values('1781493285783','จันทิมา ธนภูดินันท์','2000-03-22','0973416438','jantima@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนดาราวิทยาลัย','jantima','jantima38');
insert into Student values('1781958893916','จิดาภา เจนกิจโสภณ','2000-04-02','0971354738','jidapa@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนดาราวิทยาลัย','jidapa','jidapa37');
insert into Student values('1284872756288','จิตตา กรภัควัฒน์','2000-04-19','0974673512','jitta@gmail.com',5,'ศิลป์สังคม','โรงเรียนดาราวิทยาลัย','jitta','jitta12');
insert into Student values('1284869395831','จินดา จรัสพุฒิพงศ์','2000-04-27','0974673851','jinda@gmail.com',5,'ศิลป์สังคม','โรงเรียนดาราวิทยาลัย','jinda','jinda51');
insert into Student values('1284869813424','ชนัดดา ภูสิทธ์อุดม','2000-04-21','0973552742','chanidda@gmail.com',5,'ศิลป์สังคม','โรงเรียนดาราวิทยาลัย','chanidda','chanidda42');
insert into Student values('1284857688391','ชนากานต์ นนท์สัจทัศน์','2000-04-20','0965732185','chanakan@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนดาราวิทยาลัย','chanakan','chanakan85');
insert into Student values('1284857676371','ชนิกา กสิณภพสกุล','2000-04-17','0937561274','chanika@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนเทพบดินทร์วิทยาเชียงใหม่','chanika','chanika74');
insert into Student values('1610858599223','ชนิตา เดชพิพัฒน์โชติ','1999-05-20','0963218466','chanita@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนเทพบดินทร์วิทยาเชียงใหม่','chanita','chanita66');
insert into Student values('1610857738462','ชมพูนุช มหาเจริญศิลป์','1999-05-12','0836521745','chompunut@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนเทพบดินทร์วิทยาเชียงใหม่','chompunut','chompunut45');
insert into Student values('1610858365839','ชามา ปัทมชัยวิวัฒน์','1999-05-15','0836572813','chama@gmail.com',6,'ศิลป์สังคม','โรงเรียนเทพบดินทร์วิทยาเชียงใหม่','chama','chama13');
insert into Student values('1610847768391','ชุดา โรจนเมธีพงศ์','1999-05-20','0865647357','chuda@gmail.com',6,'ศิลป์สังคม','โรงเรียนเทพบดินทร์วิทยาเชียงใหม่','chuda','chuda57');
insert into Student values('1610857365839','ชุติมา อัศวบุญโชค','1999-05-21','0826465732','chutama@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ้านแม่โต๋','chutama','chutama32');
insert into Student values('1453847678385','ฐานิกา ศิริกรโสภณ','1999-05-28','0826656372','tanida@gmail.com',6,'ศิลป์สังคม','โรงเรียนบ้านแม่โต๋','tanida','tanida72');
insert into Student values('1453957567819','ฐานิดา มหัทธนธรรม','1999-06-11','0836466731','tanika@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ้านแม่โต๋','tanika','tanika31');
insert into Student values('1453875646381','ณิชกมล เชาวกรกุล','1999-06-8','08263657382','nitkamon@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนฝางชนูปถัมภ์','nitkamon','nitkamon82');
insert into Student values('1453718467381','ต้องใจ โอภาโพธิวัฒน์','1999-06-10','083662741','thongjai@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนฝางชนูปถัมภ์','thongjai','thongjai41');
insert into Student values('1914865737274','เตชินี ชัยเดชวรโชติ','1999-06-23','0836657381','tachinee@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนฝางชนูปถัมภ์','tachinee','tachinee81');
insert into Student values('1914285646284','ทัตพิชา โชคสุทธิสวัสดิ์','1999-06-27','0846563724','tutpicha@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนฝางชนูปถัมภ์','tutpicha','tutpicha24');
insert into Student values('1914284657843','ทิพนาถ มหาวีรเศรษฐ์','1999-06-24','0836462843','thipnadthipnad@gmail.com',6,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','thipnad','thipnad43');
insert into Student values('1914836536411','ทิพปภา วรเกียรติ์สกุล','1999-07-21','0836472845','thipapa@gmail.com',6,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','thipapa','thipapa45');
insert into Student values('1314865743951','ธนาภา ยศวรรังสรรค์','1999-07-20','0826465732','tanapa@gmail.com',6,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','tanapa','tanapa32');
insert into Student values('1314856478471','ธนิดา กิตติรัตน์โสธร','1999-07-12','0836465732','tanipa@gmail.com',6,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','tanipa','tanipa32');
insert into Student values('1314485767483','ธมน ชัยพัฒน์ภูวดล','1999-07-16','0846585639','tamon@gmail.com',6,'ศิลป์สังคม','โรงเรียนรังษีวิทยา','tamon','tamon39');
insert into Student values('1314847657483','ธัญญา  ชัยภูริจิรนนท์','1999-07-17','0836492645','tunya@gmail.com',6,'ศิลป์สังคม','โรงเรียนรังษีวิทยา','tunya','tunya45');
insert into Student values('1173857265719','ธัญชนก วิโรจนพิมุกข์','1999-07-19','0892646572','tunchanook@gmail.com',6,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','tunchanook','tunchanook72');
insert into Student values('1173858737562','ธิติมา วรจักรสีหสกุล','1999-08-25','0826475128','titima@gmail.com',6,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','titima','titima28');
insert into Student values('1173745538381','นงนุช  พงศ์โชติ','1999-08-21','0846565738','nongnud@gmail.com',6,'ศิลป์สังคม','โรงเรียนจอมทอง','nongnud','nongnud38');
insert into Student values('1173856738758','นพิน  กิจศิริวัชรโชติ','1999-08-20','0892651322','napin@gmail.com',6,'ศิลป์สังคม','โรงเรียนจอมทอง','napin','napin22');
insert into Student values('1747838829571','นัชชา ภัททนิธิโภคิน','1999-08-22','0863657201','nudcha@gmail.com',6,'ศิลป์สังคม','โรงเรียนจอมทอง','nudcha','nudcha01');
insert into Student values('1747284758296','นันทิตา  มงคลวัชรกุล','1999-01-20','0948348453','nuntita@gmail.com',6,'ศิลป์สังคม','โรงเรียนจอมทอง','nuntita','nuntita53');
insert into Student values('1747628468385','นันทินี  ธัญญนิธิเกษม','1999-01-20','0918475737','nuntinee@gmail.com',6,'ศิลป์สังคม','โรงเรียนจอมทอง','nuntinee','nuntinee37');
insert into Student values('1747298479362','นันทิมา โชติภัทรอัศวิน','1999-01-20','0988375835','nuntima@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนจอมทอง','nuntima','nuntima35');
insert into Student values('1622846583957','นิชา วาทิน','1999-01-20','0984753783','nicha@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนจอมทอง','nicha','nicha83');
insert into Student values('1622847567583','นิดานุช ถิรัตกาญจนกุล','1999-01-20','0902746302','nidanud@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนจอมทอง','nidanud','nidanud02');
insert into Student values('1622746547572','นิพาดา  อุดมวัฒนวิเศษ','1999-01-20','0902765737','nipada@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนจอมทอง','nipada','nipada37');
insert into Student values('1622846573881','บงกช   โชคกาญจนกวี','1999-01-20','0926704563','bongkod@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนจอมทอง','bongkod','bongkod63');
insert into Student values('1485763828747','วรดร จิราธิวัฒน์','2001-01-16','0927468375','woradon@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','woradon','woradon75');
insert into Student values('1747657839857','กีรติ สิริวัฒนภักดี','2001-01-12','0947385837','keerati@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','keerati','keerati37');
insert into Student values('1847758397589','มานิน เจียรวนนท์','2001-01-19','0937758837','manin@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','manin','manin37');
insert into Student values('1846784967389','ฐิติ อยู่วิทยา','2001-01-11','0947737473','thiti@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','thiti','thiti73');
insert into Student values('1846658395839','ชัญญา วัชรพล','2001-01-16','0947371836','chaiya@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','chaiya','chaiya36');
insert into Student values('1047657304637','กันติชา รัตนรักษ์','2001-01-15','0937462817','kanticha@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','kanticha','kanticha17');
insert into Student values('1745573840375','มนายุ ภิรมย์ภักดี','2001-01-14','0947766372','manayu@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','manayu','manayu72');
insert into Student values('1046673403633','ศิวนาถ  มาลีนนท์','2001-02-13','0976318463','siwanad@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','siwanad','siwanad63');
insert into Student values('1736503756377','ธมน   เชาวน์วิวัฒน์','2001-02-18','0945527382','tamanon@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','tamanon','tamanon82');
insert into Student values('1746743676427','ีภพ  อัศวโภคิน','2001-01-21','0836462843','tipob@gmail.com',4,'วิทย์-คณิต','โรงเรียนสันป่าตองวิทยาคม','tipob','tipob43');
insert into Student values('1046673773468','เวธณี จุรางกูล','2001-02-28','0836472845','watanee@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','watanee','watanee45');
insert into Student values('1764767387680','ปราธีดา มหากิจศิริ','2001-02-14','0963218466','prateeda@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','prateeda','prateeda66');
insert into Student values('2874668830738','ภาวิดา เบญจรงคกุล','2001-02-17','0926704563','pawida@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','pawida','pawida63');
insert into Student values('2658872107647','รุจาภา วงศ์กุศลกิจ','2001-02-23','085682647','rujapa@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','rujapa','rujapa47');
insert into Student values('2875668278650','นิพาดา วิลเลียม','2001-02-22','0863417453','nipada@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','nipada','nipada53');
insert into Student values('2734674238840','ผริตา อครวัตนนท์ ','2001-03-29','0986357162','prita@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','prita','prita62');
insert into Student values('2746658737992','วราลี เปรมปรีดิ์','2001-03-30','0974673512','pawaree@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','pawaree','pawaree12');
insert into Student values('2876583975924','ธนิสร ไชยวรรณ','2001-03-25','0845271845','tanison@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','tanison','tanison45');
insert into Student values('2877658945693','พสุชา วิจิตรพงศ์พันธุ์','2001-03-26','0985378283','pasucha@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','pasucha','pasucha83');
insert into Student values('2847765764865','มธุรา ชาห์','2001-03-28','0853718234','natura@gmail.com',4,'วิทย์-คณิต','โรงเรียนมงฟอร์ตวิทยาลัย','natura','natura34');
insert into Student values('2846583479570','ปูริดา กลิ่นประทุม','2001-03-29','0853621864','purida@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','purida','purida64');
insert into Student values('2836583975389','ชัยสงค์  คำประกอบ','2001-03-27','0926704563','chaisong@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','chaisong','chaisong63');
insert into Student values('2834865875630','กานดิศ คุณปลื้ม','2001-03-25','0836462843','kandit@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','kandit','kandit43');
insert into Student values('2765886583850','ศาสะ ฉายแสง','2001-03-24','0863748283','sasi@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','sasi','sasi83');
insert into Student values('2658373187485','ปยุต ไชยนนทน์','2001-03-21','0836472845','payut@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','payut','payut45');
insert into Student values('2783819758803','ภคิน ชินวัตร','2001-03-20','0974673512','pakin@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','pakin','pakin12');
insert into Student values('2865869897941','พนิต ชุณหะวัณ','2001-03-01','0863518388','panit@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','panit','panit88');
insert into Student values('2875876939903','ธรรศ  เตชะไพบูลย์','2001-03-02','0974317528','tus@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','tus','tus28');
insert into Student values('2884581876835','นิธิป ตันเจริญ','2001-04-03','0963218466','nitib@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','nitib','nitib66');
insert into Student values('2186468247689','ธาวิน เทียนมอง','2001-04-04','0836657381','tawin@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','tawin','tawin81');
insert into Student values('2658466186275','กรรณารา เทือกสุบรรณ','2001-04-05','0826475128','kannara@gmail.com',4,'วิทย์-คณิต','โรงเรียนรังษีวิทยา','kannara','kannara28');
insert into Student values('2567810475728','พิมพ์พิลาวัลย์ บูรณุปกรณ์','2001-04-06','0874631274','pimpirawon@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','pimpirawon','pimpirawon74');
insert into Student values('2176573850734','พิมพ์ประพาย ปริศนานันทกุล','2001-04-07','0865311863','pimprapay@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','pimprapay','pimprapay63');
insert into Student values('2747578375789','พิมพ์พลอย ปุณณกันต์','2001-04-08','0863821938','pimploy@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','pimploy','pimploy38');
insert into Student values('2765573829024','พรรณารักษ์ พร้อมพันธุ์','2001-04-09','0985437281','pannaruk@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','pannaruk','pannaruk81');
insert into Student values('2746684937582','พรรณประพาย มาศดิตถ์','2001-04-10','0942746532','panprakay@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','panprakay','panprakay32');
insert into Student values('2476584888203','อรัญญา โล่ห์สุนทร','2001-04-11','0985638219','arunya@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','arunya','arunya19');
insert into Student values('2746748593757','อรัญญานี วงศ์สวัสดิ์','2001-04-23','0974657382','arunyane@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','arunyane','arunyane82');
insert into Student values('3747582987583','ดาริน เวชชาชีวะ','2001-04-24','0967273647','darin@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','darin','darin47');
insert into Student values('3747881047849','เมยานี ศิลปอาชา','2001-04-26','0962737282','meyanee@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','meyanee','meyanee82');
insert into Student values('3647828567289','ประกายกาญนจ์  พงษ์พาณิช','2001-04-13','0963728453','prakaykan@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','prakaykan','prakaykan53');
insert into Student values('3747658939940','ประกายวรรณ สุนทรเวช','2001-04-10','0974673512','prakaywan@gmail.com',4,'วิทย์-คณิต','โรงเรียนเชิดเจิมศิลป์','prakaywan','prakaywan12');
insert into Student values('3742884627857','ปานวาด สารสิน','2001-04-19','0862672782','panwad@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','panwad','panwad82');
insert into Student values('3747759284790','ครองขวัญ สุวรรณคีรี','2001-04-22','0845727372','chongwan@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','chongwan','chongwan72');
insert into Student values('1737465838574','อิงกาญจน์ อังกินันทน์','2001-04-20','0863828638','aingkan@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','aingkan','aingkan38');
insert into Student values('3755882658386','เมธาวารี สารสิน','2001-04-28','0953782641','matawaree@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','matawaree','matawaree41');
insert into Student values('3758947694985','งามศิริ อัตถากร','2001-04-23','0835062402','ngamsiri@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','ngamsiri','ngamsiri02');
insert into Student values('3737586982097','เลิศหล้า อับดุลบุตร','2001-04-11','0906488293','rodra@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','rodra','rodra93');
insert into Student values('3857682927583','ไลลา ไกรฤกษ์','2001-04-10','0926704563','lila@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','lila','lila63');
insert into Student values('3847679321950','กุสลา ชินวัตร','2001-04-19','0836462843','kussara@gmail.com',4,'วิทย์-คณิต','โรงเรียนพรตพิทยพยัต','kussara','kussara43');
insert into Student values('3775688331045','อิงดาว ภิรมย์ภักดี','2000-05-11','0836472845','aingdaw@gmail.com',5,'ศิลป์สังคม','โรงเรียนพรตพิทยพยัต','aingdaw','aingdaw45');
insert into Student values('1874658428847','อารยา ล่ำซำ','2000-05-13','0934642134','araya@gmail.com',5,'ศิลป์สังคม','โรงเรียนพรตพิทยพยัต','araya','araya34');
insert into Student values('2846583347742','ปัญญาพร จาติกวณิช','2000-05-16','0926704563','panyapon@gmail.com',5,'ศิลป์สังคม','โรงเรียนพรตพิทยพยัต','panyapon','panyapon12');
insert into Student values('8236582494280','ไพริน โชควัฒนา','2000-05-19','0974673512','pirin@gmail.com',5,'ศิลป์สังคม','โรงเรียนพรตพิทยพยัต','pirin','pirin12');
insert into Student values('1263668364838','กษิณีย์ นิมมานเหมินท์','2000-05-10','0963218466','kasinee@gmail.com',5,'ศิลป์สังคม','โรงเรียนพรตพิทยพยัต','kasinee','kasinee66');
insert into Student values('4656828428328','ภูพิงค์ มาลีนนท์','2000-05-12','0974317528','puping@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','puping','puping28');
insert into Student values('7648264682664','ดาวิกา วัชรพล','2000-05-13','0836657381','dawika@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','dawika','dawika81');
insert into Student values('1726682468248','แสงเดือน เศรษฐบุตร','2000-05-14','0963547281','sangdun@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','sangdun','sangdun81');
insert into Student values('1846688488772','แสงอุษา โสภณพนิช','2000-05-15','0906383627','sangauti@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','sangauti','sangauti27');
insert into Student values('3783647278582','บัณฑา โอสถานนท์','2000-05-17','0826475128','bunda@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','bunda','bunda28');
insert into Student values('2874656883468','กนกพร ไกรฤกษ์','2000-05-10','0863577372','kanokpon@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','kanokpon','kanokpon72');
insert into Student values('2665883462803','สิริยากร กัลยาณมิตร','2000-05-09','0982846183','siriyakon@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','siriyakon','siriyakon83');
insert into Student values('3462372842907','วทิยาพัทร์ คชเสนี','2000-06-08','0867336547','watiyapod@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','watiyapod','watiyapod47');
insert into Student values('2864672646284','สุริยัน จันทรางศุ','2000-06-07','0946582913','suriyan@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','suriyan','suriyan13');
insert into Student values('4647886488280','วาริใส ชูโต','2000-06-06','0983462138','warisai@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','warisai','warisai38');
insert into Student values('1766483864682','นภากาฬ โชติกเสถียร','2000-06-05','0864328761','napakan@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','napakan','napakan61');
insert into Student values('4763628646829','พัฒนากรณ์ บุญหลง ','2000-06-04','0863219743','pantanakon@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','pantanakon','pantanakon43');
insert into Student values('2766884819083','วชิริน โปษยานนท์','2000-06-03','0963117383','wachirin@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','wachirin','wachirin83');
insert into Student values('7636788468832','ปทุมวิไล เพ็ญกุล','2000-06-02','0865217543','patumwiri@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','patumwiri','patumwiri43');
insert into Student values('6466846882379','นิราภัทร โรจนกุล','2000-06-01','0826465732','nopaput@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','nopaput','nopaput32');
insert into Student values('1776488669297','ภัทรพร โรจนดิศ','2000-06-22','0956438219','padtarapon@gmail.com',5,'ศิลป์สังคม','โรงเรียนศรียาภัย','padtarapon','padtarapon19');
insert into Student values('7663648828663','นฤณีย์ วัชโรทัย','2000-06-21','0904538197','narunee@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','narunee','narunee97');
insert into Student values('6266428848846','กานต์ เวชชาชีวะ','2000-06-29','0807563421','kan@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','kan','kan21');
insert into Student values('1636886599289','กริช ศิริสัมพันธ์','2000-06-20','0875473821','krit@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','krit','krit21');
insert into Student values('1276486588648','กช สุรคุปต์','2000-07-28','0836462843','kod@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','kod','kod43');
insert into Student values('1636747582668','กัญจน์ มหายศปัญญา','2000-07-27','0986553819','kan@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','kan','kan19');
insert into Student values('1764766883648','กันต์ สุขุม','2000-07-26','0974673512','kan1@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','kan1','kan11');
insert into Student values('1776468364960','กฤษฎิ์ สุนทรเวช','2000-07-25','0826465732','krite@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','krite','krite32');
insert into Student values('7736488583785','เขม สิงหเสนี','2000-07-24','0836472845','cam@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','khem','khem45');
insert into Student values('6346827834963','เจตน์ สุวรรณทัต','2000-07-23','0926704563','jad@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','jad','jad62');
insert into Student values('7682768492664','จิณณ์ เจษฎางกูร','2000-07-22','0836462843','jin@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','jin','jin43');
insert into Student values('3648927883668','ณัฏฐ์ ดารากร','2000-07-19','0832765439','nut@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','nut','nut39');
insert into Student values('1764658826399','ณิช นรินทรกูล','2000-07-18','0836462843','nit@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','nit','nit43');
insert into Student values('1763455868237','ดนตร์ มนตรีกุล','2000-07-17','0963218466','don@gmail.com',5,'ศิลป์สังคม','โรงเรียนสอาดเผดิมวิทยา','don','don66');
insert into Student values('1755757488236','ดรณ์ ฉัตรกุล','2000-07-16','0974317528','donn@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','donn','donn28');
insert into Student values('2723658286488','ดิษย์ เทพหัสดิน','2000-07-15','0836657381','dit@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','dit','dit81');
insert into Student values('4688873668842','ติณณ์ ปาลกะวงศ์','2000-07-14','0907545132','tin@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','tin','tin32');
insert into Student values('2766488238490','ตาณ พึ่งบุญ','2000-07-13','0832018927','tan@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','tan','tan27');
insert into Student values('1646856846588','ทัพพ์ เสนีวงศ์','2000-07-12','0963217546','tub@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','tub','tub46');
insert into Student values('3785892734992','ทีปต์ อิศรางกูล','2000-07-12','0826475128','tip@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','tip','tip28');
insert into Student values('8756823972939','ธรณ์ พนมวัน','2000-07-11','0864532108','ton@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','ton','ton08');
insert into Student values('6368237954677','ธาม กปิตถา','2000-08-10','0954318276','tam@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','tam','tam76');
insert into Student values('7683479764823','ธรรศ กุญชร','2000-08-01','0826465732','tus@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','tus','tus32');
insert into Student values('3472974786539','บุษย์ ชุมแสง','2000-08-02','0874531298','bud@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','bud','bud98');
insert into Student values('3477592479479','ปัณณ์ เดชาติวงศ์','2000-08-08','0807545132','bun@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','bun','bun32');
insert into Student values('2374668490064','ปริชญ์ ทินกร','2000-08-05','0964739274','prit@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','prit','prit73');
insert into Student values('2687479296694','ปัถย์  กุญชร','2000-08-09','0974673512','pud@gmail.com',5,'ศิลป์สังคม','โรงเรียนท่าวังผาพิทยาคม','pud','pud12');
insert into Student values('1648379479404','พิชญ์ ชุมแสง','2000-08-10','0826465732','pit@gmail.com',5,'ศิลป์สังคม','โรงเรียนบ่อเกลือ','pit','pit32');
insert into Student values('1637837647792','พิมพ์ ปราโมช','2000-08-13','0869563024','pim@gmail.com',5,'ศิลป์สังคม','โรงเรียนบ่อเกลือ','pim','pim25');
insert into Student values('3648237548293','พล มาลากุล','2000-08-19','0923659087','pon@gmail.com',5,'ศิลป์สังคม','โรงเรียนบ่อเกลือ','pon','pon87');
insert into Student values('3664892974993','พฤกษ์ สนิทวงศ์','1999-08-19','0943218765','pruk@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','pruk','pruk65');
insert into Student values('2636492387923','ภูมิ อิศรเสนา','1999-08-11','0897651231','pum@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','pum','pum31');
insert into Student values('3628488263640','ภาม กำภู','1999-08-17','0826465732','pam@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','pam','pam32');
insert into Student values('6364827481366','รัญชน์ คเนจร','1999-08-13','0954321876','run@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','run','run76');
insert into Student values('6348137649236','รุจ ชุมสาย','1999-08-16','0926704563','rut@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','rut','rut63');
insert into Student values('6366348279369','วิชญ์ ลดาวัลล์','1999-08-10','0836472845','wit@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','wit','wit54');
insert into Student values('2365482304672','วีร์ ศิริวงศ์','1999-08-13','0974673512','wee@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','wee','wee12');
insert into Student values('2365482376824','ศรณ์ ทองแถม','1999-08-11','0807634912','son@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','son','son12');
insert into Student values('2364823764237','เศรษฐ์ จันทรทัต','1999-08-10','0836462843','sad@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','sad','sad43');
insert into Student values('6348283580743','อัฑฒ์ ชยางกูร','1999-08-15','0836462843','aut@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','aut','aut43');
insert into Student values('3454136488368','อาชว์ ทวีวงศ์','1999-08-16','0906210389','ach@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','ach','ach89');
insert into Student values('3723548237649','ไอริน กฤดากร','1999-08-13','0974317528','airin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','airin','airin28');
insert into Student values('5354237682366','อารียา เกษมศรี','1999-09-16','0942474834','areya@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนบ่อเกลือ','areya','areya34');
insert into Student values('1626648366489','อลิชา เกษมสันต์','1999-09-21','0963218466','aricha@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','aricha','aricha66');
insert into Student values('2766824658936','อมรา คณางค์','1999-09-22','0826475128','amarin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','amarin','amarin28');
insert into Student values('2646823649030','อลินดา จักรพันธ์','1999-09-27','0836657381','arinda@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','arinda','arinda81');
insert into Student values('1636264699468','อลิส จิตรพงษ์','1999-09-26','0845203648','aris@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','aris','aris48');
insert into Student values('1636528368932','อลิสา ไชยันต์','1999-09-30','0826386572','arisa@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','arisa','arisa72');
insert into Student values('2672654823046','อัญญา ชุมพล','1999-09-06','0925174536','aunya@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','aunya','aunya36');
insert into Student values('2537548230046','โบนิตา ดิศกุล','1999-09-23','0954628183','bonita@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','bonita','bonita83');
insert into Student values('2635482648232','โบ เทวกุล','1999-09-27','0962647345','boo@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','boo','boo45');
insert into Student values('3545728554283','ชนา ทองใหญ่','1999-09-29','0956324867','chana@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','chana','chana67');
insert into Student values('2454824868200','ชาลิสา นพวงศ์','1999-09-26','0873218657','chalisa@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','chalisa','chalisa57');
insert into Student values('5354827548683','ชายา ภาณุพันธุ์','1999-09-28','0826465732','chaya@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','chaya','chaya32');
insert into Student values('2654237648939','ันดา วรวรรณ','1999-09-27','0826475128','junda@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','junda','junda28');
insert into Student values('2345423793692','จันทรา ศรีธวัช','1997-10-20','0964589394','juntra@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','juntra','juntra94');
insert into Student values('3472839936900','ดาริน ศุขสวัสดิ์','1999-10-21','0865473824','darin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','darin','darin24');
insert into Student values('3548375823686','ดานิกา สวัสดิวัฒน์','1999-10-19','0964300213','danika@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','danika','danika13');
insert into Student values('3465823692369','ดาหลา โสณกุล','1999-10-12','0974657231','dala@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','dala','dala31');
insert into Student values('2635483986590','เอริกา สวัสดิกุล','1999-10-11','0989076823','arika@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนแม่สันวิทยา','arika','arika23');
insert into Student values('6582387852922','เอมมาลิน สุประดิษย์','1999-10-01','0906541856','ammarin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','ammarin','ammarin56');
insert into Student values('5549248599372','เอมมาลี จิรประวัติ','1999-10-17','0826465732','ammare@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','ammare','ammare32');
insert into Student values('2638495036600','จินา เพ็ญพัฒน์','1999-11-06','0926704563','jina@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','jina','jina63');
insert into Student values('2365935917738','จีน กิติยากร','1999-11-09','0836472845','jeen@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','jeen','jeen34');
insert into Student values('2635836489239','อิสรินทร์ จักรพงศ์','1999-11-03','0974673512','aisarin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','aisarin','aisarin12');
insert into Student values('2665924695629','ไอรา จุธาธุช','1999-11-02','0836462843','aira@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','aira','aira32');
insert into Student values('4658236197404','จันทร์นิล ฉัตรไชย','1999-11-05','0903765412','junnin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','junnin','junnin12');
insert into Student values('2135548235823','เจนนินทร์ บริพัตร','1999-11-06','0836462843','jannin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','jannin','jannin34');
insert into Student values('2135548236583','เจนอารี ประวิตร','1999-11-10','0873009832','janare@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','janare','janare32');
insert into Student values('3826465283593','เจนเนตร โพธิ์คำทอง','1999-11-01','0974317528','jannat@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','jannat','jannat28');
insert into Student values('7254583759230','เกวลิน ยุคล','1999-11-08','0826475128','kawwarin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','kawwarin','kawwarin28');
insert into Student values('1664865829357','คัทลิน พีพัฒน์','1999-11-14','0836657381','kudrin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','kudrin','kudrin81');
insert into Student values('2646582975931','กะทิ รังสิต','1999-11-19','0963218466','kati@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','kati','kati66');
insert into Student values('3746923764919','ไลลา นวรัตน์','1999-11-13','0894318765','lila@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','lila','lila65');
insert into Student values('3864659237397','ลินา รัชนี','1999-11-12','0904521832','lina@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','lina','lina32');
insert into Student values('8236659264629','หลิน วุฒิชัย','1999-11-16','0946553829','rin@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนอัสสัมชัญลำปาง','rin','rin32');
insert into Student values('3846652799379','ลลิสา สุริยง','1999-12-19','0904657023','lalisa@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนลำปางกัลยาณี','lalisa','lalisa23');
insert into Student values('1766486569664','ลาทิชา อาภากร','1999-12-10','0934673828','laracha@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนลำปางกัลยาณี','laracha','laracha28');
insert into Student values('2376827086231','มีนา สีสังข์','1999-12-15','0853748284','meena@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนลำปางกัลยาณี','meena','meena84');
insert into Student values('2876589387202','มาริสา ไกรฤกษ์','1999-12-13','0842618468','marisa@gmail.com',6,'ศิลป์-คำนวน','โรงเรียนลำปางกัลยาณี','marisa','marisa68');
insert into Student values('8264658273653','มาริน กัลยาณมิตร','1999-01-13','0863657201','marin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','marin','marin01');
insert into Student values('1836587492379','มิรา กิตติขจร','1999-01-12','0892651322','mira@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','mira','mira22');
insert into Student values('2837659276492','มาลาริน คชเสนี','1999-01-16','0897564128','mararin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','mararin','mararin28');
insert into Student values('1826483949900','นานา ชูกระมล','1999-01-18','0907453218','nana@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','nana','nana18');
insert into Student values('8264659273649','ณัฐชา ทองเจือ','1999-01-15','0826465732','nutcha@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','nutcha','nutcha32');
insert into Student values('7646839992366','เนตรา พิบูลสงคราม','1999-01-13','0978423256','natra@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','natra','natra56');
insert into Student values('2646527359377','รสสินา ภิรมย์ภักดี','1999-01-19','0896412312','rotsine@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','rotsine','rotsine12');
insert into Student values('2653789368292','รชิดา เสรีเริงฤทธิ์','1999-01-10','0809786756','rachida@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','rachida','rachida56');
insert into Student values('8364893569236','เรนิตา เสนาณรงค์','1999-01-11','0974673512','ranita@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','ranita','ranita12');
insert into Student values('6354823794781','รสลิน สารสาส','1999-01-01','0826465732','rotsarin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','rotsarin','rotsarin32');
insert into Student values('2635829382937','รสมาลี เวชชะพันธ์','1999-01-05','0926704563','rotmare@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','rotmare','rotmare63');
insert into Student values('2635489182902','แสนดี บุณยรัตพันธุ์','1999-01-09','0836462843','sandee@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','sandee','sandee43');
insert into Student values('2837652983502','ศรา บุนนาค','1999-01-03','0863657201','sara@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนลำปางกัลยาณี','sara','sara01');
insert into Student values('2636828959792','สลิณา เพ็ญกุล','1999-02-06','0836472845','sarina@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','sarina','sarina45');
insert into Student values('1862659659238','ธัญญา พนมยงค์','1999-02-07','0974673512','tunya@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','tunya','tunya12');
insert into Student values('7658293879203','ธิดา พลางกูร','1999-02-08','0836462843','tida@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','tida','tida43');
insert into Student values('1764659347292','ธิชา เฟื่องอารมย์','1999-02-01','0908978675','ticha@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','ticha','ticha75');
insert into Student values('2164985700433','ธารา ภมรมนตรี','1999-02-02','0826475128','tira@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','tira','tira28');
insert into Student values('2763659366385','เวนิตา ภิรมย์ภักดี','1999-02-09','0974317528','wanita@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','wanita','wanita28');
insert into Student values('8664992374902','วีรา วัชโรทัย','1999-02-22','0963218466','wara@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','wara','wara66');
insert into Student values('8236659237283','วนิษศา เศวตศิลา','1999-02-21','0836657381','wanissa@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','wanissa','wanissa81');
insert into Student values('2664927369138','วิศนี อมรวิวัฒน์','1999-02-27','0863657201','wissane@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','wissane','wissane01');
insert into Student values('8736492087200','อรัญ สิงหเสนี','1999-02-20','0892651322','arun@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','arun','arun22');
insert into Student values('6482736927369','อานนท์ สุจริตกุล','1999-02-25','0812233445','arnon@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','arnon','arnon45');
insert into Student values('2876465982409','อชิรา  สุวรรณทัต','1999-02-27','0845566778','achira@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','achira','achira78');
insert into Student values('8768379830203','อาชา สุวรรณรัฐ','1999-02-28','0889344321','acha@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','acha','acha21');
insert into Student values('2837659874032','อามันต์ หลักภัย','1999-10-22','0921324354','amun@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','amun','amun54');
insert into Student values('7592830107803','อดิรัตน์ อภัยวงศ์','1999-03-28','0954657687','adirut@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','adirut','adirut87');
insert into Student values('8237698800766','บุญ อมาตยกุล','1999-03-21','0998786756','boon@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอันนาลัย','boon','boon56');
insert into Student values('2692375938003','เบญจมินทร์ โอสถานนท์','1999-03-20','0945342312','banjamin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','banjamin','banjamin12');
insert into Student values('2836483799367','ชาญ พลาธร','1999-03-13','0826465732','chan@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','chan','chan32');
insert into Student values('8366489297959','เชษฐ์ กะรัต','1999-03-17','0907060504','chad@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','chad','chad04');
insert into Student values('4489274742938','กฤษณ์ เทพรัต','1999-03-12','0809080706','kritn@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','kritn','kritn06');
insert into Student values('2876497429993','ดิเรก อดิศวร','1999-03-19','0926704563','dirak@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','dirak','dirak63');
insert into Student values('6635697293672','ดลธี  วงเศวต','1999-03-16','0945342376','donte@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','donte','donte76');
insert into Student values('7466592937923','แดน สมุทรเทวา','1997-03-15','0978125434','dan@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','dan','dan34');
insert into Student values('2768376492479','ดวิน ตรีอัปสร','1999-03-18','0826465732','dawin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','dawin','dawin32');
insert into Student values('2635493773669','ดอน พัชรกานต์กุล','1999-03-14','0967543123','donn@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','donn','donn23');
insert into Student values('6354912693779','กวินทร์  อภิรมย์ฤดี','1999-03-12','0989612387','kawin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','kawin','kawin87');
insert into Student values('2736928692377','กาย รัตนชาติ','1999-03-19','0836462843','kay@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','kay','kay43');
insert into Student values('8365997364913','หรัญญ์ พัลลภ','1999-03-11','0974673512','krin@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','krin','krin12');
insert into Student values('8369238665992','จักรี อรุณรัศมี','1999-03-10','0836472845','jukre@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','jukre','jukre45');
insert into Student values('8469237695822','จอน เทวพรหม','1999-03-01','0836462843','john@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','john','john43');
insert into Student values('2866429983746','เจษฏ์ โยธาบดี','1999-04-06','0963218466','jad@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','jad','jad66');
insert into Student values('8736482837792','เคน สุวรรณเวช','1999-04-09','0974317528','ken@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนอนุสรณ์ศุภมาศ','ken','ken28');
insert into Student values('2837649759233','กฤษณ์ อนันต์ไพศาล','1999-04-03','0826475128','kritm@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','kritm','kritm28');
insert into Student values('8646582765923','มรรค อัครมหึมาสกุล','1999-04-07','0934218756','nuuk@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','nuuk','nuuk56');
insert into Student values('2635923765934','มิตร พัชรกานต์กุล','1999-04-21','0836657381','mit@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','mit','mit81');
insert into Student values('4658374923993','โนรา เจริญโภคทรัพย์','1999-04-17','0892651322','nora@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','nora','nora22');
insert into Student values('2736493949200','โอฬาร ศิริรัฐภาค','1999-04-14','0863657201','aoran@gmail.com',6,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','aoran','aoran01');
insert into Student values('2377592365949','ภาริช ปริศนา','2001-01-16','0963218466','pakin@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','pakin','pakin66');
insert into Student values('2366923765923','ภัทร สุทธากุล','2001-01-14','0892651322','pad@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','pad','pad22');
insert into Student values('8136649247599','ฤทธิ์ชาติ จุฑาเทพ','2001-01-17','0863657201','ridchad@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','ridchad','ridchad01');
insert into Student values('2823656823923','รุธ สุทรกานต์','2001-01-06','0856412098','ruth@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','ruth','ruth98');
insert into Student values('2386649197792','โฬม ศรายุทรพิชัย','2001-01-16','0956312454','rom@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','rom','rom54');
insert into Student values('2817346923791','ฌอน พิชัย','2001-01-19','0945841365','non@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','non','non65');
insert into Student values('2937694600482','เชน วิทยาธร','2001-01-10','0956413209','chan@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','chan','chan09');
insert into Student values('2364659236492','เทวิน อมราภรณ์','2001-11-11','0674523187','tewin@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','tewin','tewin87');
insert into Student values('1745923592830','ธาวิศ สมุทรเทวา','2001-11-12','0967532412','tawin@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','tawin','tawin12');
insert into Student values('2736639729774','วิทย์ สุทรกานต์','2001-11-13','0826465732','wit@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','wit','wit32');
insert into Student values('1746569268273','วัฒน์ พัชราภรณ์','2001-11-15','0965745342','wat@gmail.com',4,'ศิลป์-คำนวน','โรงเรียนวัดคลองตันราษฎร์บำรุง','wat','wat42');
insert into Student values('4665287486442','ปิญชาน์ การุณวงศ์','2001-11-14','0926704563','pitcha@gmail.com',4,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','pitcha','pitcha63');
insert into Student values('2866599739347','อัญญา ไทยแท้','2000-06-04','0813243546','aunya@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','aunya','aunya56');
insert into Student values('1866392649366','อุภัยภัทร ณรงค์ฤทธิ์','2000-06-03','0846576879','autaypat@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','autaypat','autaypat79');
insert into Student values('1863659266996','อนุภัทร ศิริสวัสดิ์','2000-06-08','0913243546','anupan@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนวัดคลองตันราษฎร์บำรุง','anupan','anupan46');
insert into Student values('6656236619643','สมิทธ์ พืทยเสถียร','2000-06-09','0863657201','samit@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนรัตนราษฎร์บำรุง','samit','samit01');
insert into Student values('1665823764822','ชาคริต สุทธากุล','2000-06-10','0946575768','chakrit@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนรัตนราษฎร์บำรุง','chakrit','chakrit68');
insert into Student values('6368383466523','ภูพิงค์ วราฤทธิ์','2000-06-13','0836472845','puping@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนรัตนราษฎร์บำรุง','puping','puping45');
insert into Student values('2734689793950','อรินทร์ แสงอาทิตย์','2000-06-05','0974673512','arin@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนรัตนราษฎร์บำรุง','arin','arin12');
insert into Student values('1263346599272','รวินทร์ วิชชากร','2000-06-06','0836462843','rarin@gmail.com',5,'ศิลป์-ภาษา','โรงเรียนรัตนราษฎร์บำรุง','rarin','rarin43');
insert into Student values('2746593719734','ดนัย ธราธร','2000-06-30','0908967563','danuy@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','danuy','danuy63');
insert into Student values('2874659491974','ณัฐดนัย ปวรรุจ','2000-06-21','0826475128','nutdanuy@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','nutdanuy','nutdanuy28');
insert into Student values('3465923794757','ฉัตร พุฒิภัทร','2000-06-25','0974317528','chat@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','chat','chat28');
insert into Student values('1823468239669','อมรเทพ รัชชานนท์','2000-06-26','0901324254','amontab@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','amontab','amontab54');
insert into Student values('1863562469239','เทพประทาน รณพีร์','2000-06-17','0892651322','tabpratan@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','tabpratan','tabpratan22');
insert into Student values('2648623687782','วิสิทธิ์ อนวัช','2000-06-18','0836657381','wisit@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','isit','wisit81');
insert into Student values('2734659937407','วินท์สันต์ พัชรพจนารถ','2000-06-21','0857645342','winson@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','winson','winson42');
insert into Student values('2366923684682','มรรค วิทยบำรุง','2000-06-20','0963218466','nook@gmail.com',5,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','nook','nook66');
insert into Student values('2265917746920','อาวัล บุนนาค','2001-12-24','0863657201','arun@gmail.com',4,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','arun','arun01');
insert into Student values('7364823663856','จักรสันต์ วัชโรทัย','2001-12-16','0892651322','juksin@gmail.com',4,'ศิลป์สังคม','โรงเรียนรัตนราษฎร์บำรุง','juksin','juksin22');
insert into Student values('2371977469230','อดิรันทร์ สุจริตกุล','2001-12-15','0967463524','adirun@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','adirun','adirun24');
insert into Student values('3641927748365','ไอดิน โรจนกุล','2001-12-11','0918723764','airin@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','airin','airin64');
insert into Student values('1882636491307','เทวิน อมาตยกุล','2001-12-19','0836462843','tawin@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','tawin','tawin43');
insert into Student values('2736992634923','หรัณย์ บุรณศิริ','2001-12-17','0891276345','hrun@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','hrun','hrun45');
insert into Student values('8237649102874','ฤทธิชาติ ดำพา','2001-12-18','0826475128','rittivhat@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','rittivhat','rittivhat28');
insert into Student values('2192764927420','อัทธนีย์ ธนิกกุล','2001-12-13','0897109234','auttane@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','auttane','auttane43');
insert into Student values('2649176423770','นลิน อัครสุนทร','2001-12-14','0974317528','narin@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','narin','narin28');
insert into Student values('2646912649238','มินตรา อรรครัตนมณี','2001-1-15','0826465732','mintra@gmail.com',4,'ศิลป์สังคม','โรงเรียนสารสิทธิ์พิทยาลัย','mintra','mintra32');
insert into Student values('7364927642900','เอรินทร์  เดชพรหม','1999-11-23','0926704563','arin@gmail.com',6,'วิทย์-คณิต','โรงเรียนสารสิทธิ์พิทยาลัย','arin','arin63');
insert into Student values('2197264294722','แพรวา วิทรากุล','1999-11-21','0956413278','prawa@gmail.com',6,'วิทย์-คณิต','โรงเรียนสารสิทธิ์พิทยาลัย','prawa','prawa78');
insert into Student values('3764938499636','น้ำเพชร อีทรารัตน์','1999-11-27','0934523567','oum@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','oum','oum67');
insert into Student values('2749274692374',' มิรินทร์  ศรีสุริยะกุล','1999-11-28','0836657381','mirin@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','mirin','mirin81');
insert into Student values('1927639172692','ธารา ทราวรสัตย์','1999-11-29','0872341237','tara@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','tara','tara67');
insert into Student values('9376493764991','ลลิล ธราภิรมย์','1999-11-12','0983456732','lalin@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','lalin','lalin12');
insert into Student values('2793693740377','นิศา ตะวันวาด','1999-11-15','0963218466','nisa@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','nisa','nisa66');
insert into Student values('8234591726392','เภตรา รัตนาศิริเพ็ชรา','1999-11-13','0836462843','patra@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','patra','patra43');
insert into Student values('8736491634232','ตะวัน รุจิกาน','1999-11-19','0974673512','tawan@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','tawan','tawan12');
insert into Student values('6461276936913','ณิชชา วิริยะ','1999-11-13','0836472845','nitcha@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','nitcha','nitcha45');
insert into Student values('8746193874927','ณภัทร ชาลินี ','1999-11-09','0945312456','napad@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','napad','napad56');
insert into Student values('9173641374992','น้ำมนต์ ตั้งธนากิจ','1999-11-03','0954132567','nummon@gmail.com',6,'วิทย์-คณิต','โรงเรียนโพธาวัฒนาเสนี','nummon','nummon67');

/*camptype*/
insert into CampType values (1,'ค่ายคอมพิวเตอร์'),
							(2,'ค่ายเกษตร'),
                            (3,'ค่ายวิทยาศาสตร์'),
                            (4,'ค่ายรัฐศาตร์'),
                            (5,'ค่ายวิศวะ'),
                            (6,'ค่ายบัญชีและการเงิน'),
                            (7,'ค่ายคณิตศาสตร์');
                            
/*major*/
insert into Major values(1,'ส่งเสริมการเกษตร'),
						(2,'พืชศาสตร์'),
						(3,'พืชไร่'),
						(4,'ปฐพีศาสตร์'),
						(5,'เกษตรเคมี'),
						(6,'วิศวกรรมอาหาร'),
						(7,'วิศวกรรมเกษตร'),
						(8,'วิทยาศาสตร์และเทคโนโลยีการอาหาร'),
						(9,'วิทยาการคอมพิวเตอร์'),
						(10,'เทคโนโลยีชีวภาพ'),
						(11,'เคมี'),
						(12,'สถิติ'),
						(13,'เทคโนโลยีสารสนเทศ'),
						(14,'คณิตศาสตร์'),
						(15,'วัสดุศาสตร์'),
						(16,'เคมีอุตสาหกรรมและเทคโนโลยีสิ่งทอ'),
						(17,'ฟิสิกส์ประยุกต์'),
						(18,'รัฐศาสตร์'),
						(19,'บัญชี'),
						(20,'การเงิน');
                        
/*camp*/
insert into Camp values(1,'ITCAMP MAEJO 2018','ค่ายกิจกรรมของสาขาเทคโนโลยีสารสนเทศ สำหรับนักเรียนชั้นมัธยมศึกษาปี ที่ 5 –6 สายการเรียน วิทยาศาสตร์-คณิตฯ และ ศิลป์ –คำนวณ',null,800,40,13,1),
					   (2,'ค่ายยุวชนคอมพิวเตอร์ครั้งที่ 16','ค่ายยุวชนคอมพิวเตอร์ครั้งที่ 16 สำหรับนักเรียนชั้นมัธยมศึกษาปี ที่ 5 –6 สายการเรียน วิทยาศาสตร์-คณิตฯ และ ศิลป์ –คำนวณ',null,1000,70,9,1),
					   (3,'ค่าย BIOTECH’S CAMP 18','ค่ายสำหรับนักเรียนมัธยมศึกษาตอนปลาย  (ไม่รับสายอาชีวะ)',null,700,80,10,3),
					   (4,'ค่าย Youth Industrial Chem Camp นักเคมีอุตสาหกรรมรุ่นเยาว์ ครั้งที่ 1','สำหรับนักเรียนชั้นมัธยมศึกษาปีที่ 5-6  สายวิทย์-คณิต',null,500,60,16,3),
					   (5,'Chem Camp #19','ค่ายเคมีกับอาชญวิทยา สำหรับนักเรียนชั้นมัธยมศึกษาปี ที่ 5 –6 สายการเรียน วิทยาศาสตร์-คณิตฯ',null,100,60,14,3),
					   (6,'Summation Camp 15','ค่ายสำหรับนักเรียน ม.ปลาย สายวิทย์-คณิต  เข้าร่วมค่ายเตรียมความพร้อมเข้าสู่การเป็นนักสถิติในอนาคต',null,250,50,12,7),
					   (7,'ค่ายพัฒนาทักษะและเทคนิคปฏิบัติการทางวิทยาศาสตร์','ค่ายพัฒนาทักษะและเทคนิคปฏิบัติการทางวิทยาศาสตร์  โดยสาขาวัสดุศาสตร์  สำหรับนักเรียนที่สนใจ  ระดับมัธยมศึกษา',null,0,30,15,3),
					   (8,'MATH Camp #5','ค่ายคณิตศาสตร์ เพื่อปรับทัศนคติที่ดีต่อการเรียนวิชาคณิตศาสตร์ของนักเรียน  สำหรับนักเรียน ม.ปลาย',null,2000,60,14,7),
					   (9,'ค่ายฟิสิกส์ประยุกต์','ค่ายสำหรับนักเรียน ม.ปลาย  สายวิทย์-คณิต ที่มีความสนใจและต้องการเรียนรู้เกี่ยวกับฟิสิกส์',null,500,40,17,3),
					   (10,'ค่ายเทคโนโลยีอาหาร','เปิดรับนักเรียนม.ปลาย สายวิทย์-คณิต',null,500,70,8,3),
					   (11,'Food Gear','เปิดรับนักเรียนม.ปลาย สายวิทย์-คณิต',null,450,100,6,5),
					   (12,'ค่ายยุวชนคนรัฐศาสตร์','ค่ายที่เปิดโอกาสให้น้องๆ มัธยมศึกษาตอนปลาย ได้มาค้นหาตนเอง',null,500,77,18,4),
					   (13,'ค่าย Acc-BA Summer Camp','กิจกรรมที่จัดขึ้นเพื่อให้ความรู้ สร้างแรงบันดาลใจและทัศนคติที่ดีต่อ คณะบริหารธุรกิจ  รับเฉพาะ  ม.5',null,0,100,19,6);

/*staff*/
insert into Staff values('1846277371325','จักรายุทธ์ กลิ่นจันทร์',5),
						('1742388347123','รัตติกา ชัยสวัสดิ์',8),
						('1452845197432','อรอุษา ต๊ะวิโล',10),
						('1752635198613','สราวุธ สอนใจ',8),
						('1759375274627','รักษ์พิกุล วงศ์จักร',4),
						('1745482654729','นฤมล คงขุนเทียน',17),
						('1047637573502','ธันวดี กรีฑาเวทย์',5),
						('1736375846309','ฐิตารีย์ พรหมเศรษฐการ',2),
						('1764658377382','ศรุดา ทองหลอม',14),
						('1835463853674','พงษ์ศักดิ์ มังมติ',15),
						('1635430364727','สิริประภา วิรัชเจริญพันธ์',16),
						('1634734026462','พิญชดา พงษ์พานิช',9),
						('1735037492642','สุพจน์ บุญเรือง',1),
						('1365730573942','ทวี สุวรรณ',12),
						('1366483756783','วีระยุทธ ยะอินต๊ะ',6),
						('1768385830679','เดชา ผิวผ่อง',13),
						('1785937583903','จักรกฤษณ์ ธงแดง',7),
						('1836658383863','นิ่มนภา กาบจันทร์',20),
						('1837683738750','หทัยชนก งามอินทร์',3),
						('1347753893521','ศิริพร หนูหล่อ',11),
						('1763757364868','อัจฉรา บุญเกิด',1),
						('1734753863880','พรินทร บุญเรือง',10),
						('1763486868288','ธีรพล สุวรรณ',2),
						('1658429665822','นิวัติ ช่างซอ',19),
						('1648626486824','เบญจมาภรณ์ วิริยา',6),
						('1748864946294','ปิยวรรณ สงวนศักดิ์',7),
						('1689364026480','อรรถพงศ์ วภักดิ์เพชร',18),
						('1864868606523','อาทิตยา ธรรมตา',4),
						('1764205683936','ณัฐพล เลาห์รอดพันธุ์',3),
						('1683603783502','รัชดาภรณ์ ปันทะรส',19),
                        ('3100843238123','รัชดาภรณ์ ผิวผ่อง',19);

/*register*/
insert into Register values (1001,'ผ่าน','1500703287416',1),
							(1002,'ผ่าน','1500794512748',7),
							(1003,'ผ่าน','9173641374992',4),
							(1004,'ผ่าน','1500707423845',10),
							(1005,'ไม่ผ่าน','9173641374992',13),
							(1006,'ผ่าน','1500703287416',2),
							(1007,'ไม่ผ่าน','1845174329717',5),
							(1008,'ไม่ผ่าน','9173641374992',8),
							(1009,'ไม่ผ่าน','1500794762184',9),
							(1010,'ผ่าน','9173641374992',2),
							(1011,'ไม่ผ่าน','1845174329717',1),
							(1012,'ไม่ผ่าน','1500703287416',11),
							(1013,'ผ่าน','8746193874927',7),
							(1014,'ผ่าน','1500794762184',12),
							(1015,'ไม่ผ่าน','8746193874927',6),
							(1016,'ผ่าน','8746193874927',8),
							(1017,'ผ่าน','6461276936913',9),
							(1018,'ผ่าน','8736491634232',3),
							(1019,'ไม่ผ่าน','8234591726392',10),
							(1020,'ผ่าน','1500794512748',13),
							(1021,'ผ่าน','8234591726392',12),
							(1022,'ไม่ผ่าน','1845174329717',4),
                            (1023,'ไม่ผ่าน','1500707423845',9),
							(1024,'ไม่ผ่าน','2793693740377',5),
							(1025,'ผ่าน','8234591726392',7),
							(1026,'ผ่าน','1500794512748',3),
							(1027,'ผ่าน','9376493764991',2),
							(1028,'ไม่ผ่าน','1927639172692',4),
							(1029,'ไม่ผ่าน','2749274692374',2),
							(1030,'ผ่าน','6461276936913',1),
							(1031,'ไม่ผ่าน','3764938499636',6),
							(1032,'ผ่าน','2197264294722',6),
							(1033,'ไม่ผ่าน','1845174329717',7),
                            (1034,'ไม่ผ่าน','7364927642900',8),
							(1035,'ผ่าน','3764938499636',3),
							(1036,'ไม่ผ่าน','9376493764991',4),
							(1037,'ผ่าน','2793693740377',9),
							(1038,'ผ่าน','7364927642900',13),
							(1039,'ไม่ผ่าน','2646912649238',4),
							(1040,'ผ่าน','8736491634232',10),
							(1041,'ผ่าน','2749274692374',4),
							(1042,'ผ่าน','3764938499636',2),
							(1043,'ไม่ผ่าน','2646912649238',12),
							(1044,'ผ่าน','2197264294722',5),
                            (1045,'ผ่าน','1927639172692',8),
							(1046,'ไม่ผ่าน','2197264294722',9),
							(1047,'ผ่าน','2649176423770',7),
							(1048,'ไม่ผ่าน','2192764927420',6),
							(1049,'ผ่าน','2192764927420',10);
insert into Register values (1050,'ผ่าน','8237649102874',4),
							(1051,'ไม่ผ่าน','2749274692374',1),
							(1052,'ไม่ผ่าน','8237649102874',9),
							(1053,'ผ่าน','2736992634923',4),
							(1054,'ไม่ผ่าน','1882636491307',2),
							(1055,'ไม่ผ่าน','3641927748365',9),
                            (1056,'ผ่าน','2192764927420',11),
							(1057,'ไม่ผ่าน','2192764927420',13),
							(1058,'ไม่ผ่าน','2371977469230',12),
							(1059,'ผ่าน','7364823663856',8),
							(1060,'ไม่ผ่าน','2649176423770',1),
							(1061,'ผ่าน','2265917746920',9),
							(1062,'ไม่ผ่าน','2366923684682',3),
							(1063,'ผ่าน','2734659937407',2),
							(1064,'ไม่ผ่าน','8237649102874',7),
							(1065,'ผ่าน','2648623687782',6),
							(1066,'ไม่ผ่าน','2649176423770',10),
                            (1067,'ผ่าน','7364823663856',13),
							(1068,'ไม่ผ่าน','2371977469230',2),
							(1069,'ผ่าน','8237649102874',5),
							(1070,'ไม่ผ่าน','2648623687782',4),
							(1071,'ไม่ผ่าน','3641927748365',2),
							(1072,'ผ่าน','2265917746920',8),
							(1073,'ไม่ผ่าน','8237649102874',1),
							(1074,'ไม่ผ่าน','2648623687782',9),
							(1075,'ผ่าน','8237649102874',10),
							(1076,'ไม่ผ่าน','1863562469239',12),
							(1077,'ผ่าน','2366923684682',13),
                            (1078,'ไม่ผ่าน','2736992634923',5),
							(1079,'ไม่ผ่าน','1882636491307',3),
							(1080,'ไม่ผ่าน','1823468239669',7),
							(1081,'ผ่าน','3465923794757',8),
							(1082,'ไม่ผ่าน','2366923684682',1),
							(1083,'ไม่ผ่าน','2192764927420',10),
							(1084,'ผ่าน','1863562469239',13),
							(1085,'ไม่ผ่าน','3465923794757',11),
							(1086,'ไม่ผ่าน','2734659937407',3),
							(1087,'ไม่ผ่าน','2734659937407',5),
							(1088,'ผ่าน','2736992634923',6),
                            (1089,'ไม่ผ่าน','3465923794757',2),
							(1090,'ไม่ผ่าน','2371977469230',7),
							(1091,'ผ่าน','2874659491974',8),
							(1092,'ไม่ผ่าน','3465923794757',1),
							(1093,'ไม่ผ่าน','3641927748365',11),
							(1094,'ผ่าน','1823468239669',13),
							(1095,'ไม่ผ่าน','2874659491974',3),
							(1096,'ไม่ผ่าน','1882636491307',7),
							(1097,'ไม่ผ่าน','1863562469239',2),
							(1098,'ผ่าน','7364823663856',7),
							(1099,'ไม่ผ่าน','1863562469239',9),
                            (1100,'ผ่าน','2371977469230',4);
insert into Register values (1101,'ไม่ผ่าน','2874659491974',1),
							(1102,'ไม่ผ่าน','2746593719734',9),
							(1103,'ผ่าน','1263346599272',3),
							(1104,'ไม่ผ่าน','2734689793950',2),
							(1105,'ไม่ผ่าน','1823468239669',9),
							(1106,'ผ่าน','6368383466523',10),
							(1107,'ไม่ผ่าน','6656236619643',13),
							(1108,'ไม่ผ่าน','1863659266996',2),
							(1109,'ไม่ผ่าน','1866392649366',1),
							(1110,'ไม่ผ่าน','1263346599272',6),
                            (1111,'ผ่าน','2866599739347',4),
							(1112,'ไม่ผ่าน','4665287486442',1),
							(1113,'ไม่ผ่าน','1823468239669',8),
							(1114,'ผ่าน','6656236619643',10),
							(1115,'ไม่ผ่าน','4665287486442',3),
							(1116,'ไม่ผ่าน','2866599739347',9),
							(1117,'ผ่าน','2746593719734',1),
							(1118,'ไม่ผ่าน','6656236619643',3),
							(1119,'ผ่าน','2734689793950',8),
							(1120,'ไม่ผ่าน','6368383466523',4),
							(1121,'ผ่าน','1866392649366',5),
                            (1122,'ผ่าน','2746593719734',10),
							(1123,'ไม่ผ่าน','1866392649366',12),
							(1124,'ไม่ผ่าน','1863659266996',11),
							(1125,'ผ่าน','1263346599272',13),
							(1126,'ไม่ผ่าน','1866392649366',2),
							(1127,'ผ่าน','6368383466523',1),
							(1128,'ไม่ผ่าน','6368383466523',5),
							(1129,'ผ่าน','2734689793950',6),
							(1130,'ไม่ผ่าน','2734689793950',4),
							(1131,'ไม่ผ่าน','2866599739347',3),
							(1132,'ผ่าน','4665287486442',9),
                            (1133,'ไม่ผ่าน','1863659266996',1),
							(1134,'ไม่ผ่าน','1863659266996',4),
							(1135,'ผ่าน','1746569268273',1),
							(1136,'ไม่ผ่าน','2866599739347',2),
							(1137,'ไม่ผ่าน','2736639729774',6),
							(1138,'ผ่าน','1745923592830',7),
							(1139,'ไม่ผ่าน','1745923592830',1),
							(1140,'ไม่ผ่าน','1745923592830',2),
							(1141,'ผ่าน','2736639729774',3),
							(1142,'ไม่ผ่าน','2364659236492',1),
							(1143,'ไม่ผ่าน','1745923592830',9),
                            (1144,'ผ่าน','2364659236492',10),
							(1145,'ผ่าน','1746569268273',13),
							(1146,'ผ่าน','2364659236492',12),
							(1147,'ไม่ผ่าน','2736639729774',11),
							(1148,'ผ่าน','2364659236492',6),
							(1149,'ไม่ผ่าน','2937694600482',6),
							(1150,'ไม่ผ่าน','2386649197792',1);
insert into Register values (1151,'ไม่ผ่าน','2736639729774',7),
							(1152,'ผ่าน','2937694600482',8),
							(1153,'ไม่ผ่าน','1746569268273',3),
							(1154,'ไม่ผ่าน','2386649197792',2),
                            (1155,'ไม่ผ่าน','2386649197792',4),
							(1156,'ผ่าน','2937694600482',1),
							(1157,'ไม่ผ่าน','2823656823923',1),
							(1158,'ไม่ผ่าน','1746569268273',7),
							(1159,'ผ่าน','2937694600482',4),
							(1160,'ไม่ผ่าน','2817346923791',1),
							(1161,'ไม่ผ่าน','2386649197792',12),
							(1162,'ไม่ผ่าน','2823656823923',11),
							(1163,'ผ่าน','8136649247599',6),
							(1164,'ไม่ผ่าน','2366923765923',7),
							(1165,'ไม่ผ่าน','2366923765923',1),
                            (1166,'ผ่าน','8136649247599',3),
							(1167,'ไม่ผ่าน','2366923765923',9),
							(1168,'ไม่ผ่าน','2817346923791',3),
							(1169,'ผ่าน','2817346923791',6),
							(1170,'ไม่ผ่าน','2377592365949',2),
							(1171,'ผ่าน','2377592365949',9),
							(1172,'ไม่ผ่าน','2377592365949',10),
							(1173,'ผ่าน','2377592365949',1),
							(1174,'ไม่ผ่าน','8136649247599',11),
							(1175,'ไม่ผ่าน','2823656823923',13),
							(1176,'ไม่ผ่าน','2817346923791',12),
                            (1177,'ไม่ผ่าน','2736493949200',4),
							(1178,'ไม่ผ่าน','8136649247599',2),
							(1179,'ผ่าน','4658374923993',5),
							(1180,'ผ่าน','2635923765934',6),
							(1181,'ไม่ผ่าน','2837649759233',2),
							(1182,'ผ่าน','2837649759233',4),
							(1183,'ไม่ผ่าน','2736493949200',1),
							(1184,'ผ่าน','8736482837792',2),
							(1185,'ไม่ผ่าน','2736493949200',8),
							(1186,'ผ่าน','8646582765923',3),
							(1187,'ไม่ผ่าน','2837649759233',5),
                            (1188,'ไม่ผ่าน','2837649759233',1),
							(1189,'ไม่ผ่าน','8736482837792',3),
							(1190,'ผ่าน','2635923765934',5),
							(1191,'ไม่ผ่าน','2635923765934',1),
							(1192,'ผ่าน','4658374923993',8),
							(1193,'ไม่ผ่าน','4658374923993',1),
							(1194,'ไม่ผ่าน','8736482837792',9),
							(1195,'ผ่าน','8736482837792',4),
							(1196,'ผ่าน','2635923765934',3),
							(1197,'ไม่ผ่าน','8469237695822',2),
							(1198,'ผ่าน','2736493949200',10),
                            (1199,'ไม่ผ่าน','8469237695822',11),
							(1200,'ไม่ผ่าน','4658374923993',12);
insert into Register values (1201,'ไม่ผ่าน','2866429983746',1),
							(1202,'ผ่าน','8646582765923',13),
							(1203,'ผ่าน','8646582765923',4),
							(1204,'ไม่ผ่าน','8469237695822',6),
							(1205,'ไม่ผ่าน','8369238665992',2),
							(1206,'ไม่ผ่าน','8369238665992',7),
							(1207,'ไม่ผ่าน','8369238665992',3),
							(1208,'ไม่ผ่าน','2866429983746',8),
							(1209,'ไม่ผ่าน','8369238665992',9),
                            (1210,'ผ่าน','8365997364913',1),
							(1211,'ไม่ผ่าน','6354912693779',6),
							(1212,'ผ่าน','2635493773669',7),
							(1213,'ไม่ผ่าน','2768376492479',5),
							(1214,'ไม่ผ่าน','2768376492479',4),
							(1215,'ผ่าน','2866429983746',11),
							(1216,'ไม่ผ่าน','2768376492479',1),
							(1217,'ไม่ผ่าน','2768376492479',6),
							(1218,'ไม่ผ่าน','2635493773669',3),
							(1219,'ผ่าน','7466592937923',2),
							(1220,'ผ่าน','8365997364913',10),
                            (1221,'ไม่ผ่าน','7466592937923',11),
							(1222,'ผ่าน','6354912693779',13),
							(1223,'ไม่ผ่าน','7466592937923',4),
							(1224,'ผ่าน','7466592937923',3),
							(1225,'ไม่ผ่าน','8365997364913',7),
							(1226,'ไม่ผ่าน','2635493773669',8),
							(1227,'ไม่ผ่าน','8365997364913',2),
							(1228,'ไม่ผ่าน','6635697293672',6),
							(1229,'ผ่าน','2876497429993',9),
							(1230,'ผ่าน','6354912693779',8),
							(1231,'ไม่ผ่าน','2876497429993',4),
                            (1232,'ไม่ผ่าน','6354912693779',1),
							(1233,'ผ่าน','4489274742938',9),
							(1234,'ไม่ผ่าน','2876497429993',10),
							(1235,'ผ่าน','6635697293672',4),
							(1236,'ไม่ผ่าน','2876497429993',5),
							(1237,'ผ่าน','4489274742938',1),
							(1238,'ไม่ผ่าน','4489274742938',8),
							(1239,'ผ่าน','3648927883668',9),
							(1240,'ไม่ผ่าน','4489274742938',2),
							(1241,'ไม่ผ่าน','3648927883668',1),
							(1242,'ผ่าน','2836483799367',1),
                            (1243,'ไม่ผ่าน','3648927883668',4),
							(1244,'ผ่าน','6635697293672',8),
							(1245,'ไม่ผ่าน','3648927883668',7),
							(1246,'ไม่ผ่าน','2692375938003',1),
							(1247,'ผ่าน','3648927883668',6),
							(1248,'ไม่ผ่าน','2836483799367',3),
							(1249,'ผ่าน','8768379830203',1),
							(1250,'ไม่ผ่าน','2836483799367',4);
insert into Register values (1251,'ไม่ผ่าน','6635697293672',4),
							(1252,'ผ่าน','2876465982409',1),
							(1253,'ไม่ผ่าน','2692375938003',7),
                            (1254,'ผ่าน','2692375938003',8),
							(1255,'ผ่าน','8768379830203',2),
							(1256,'ไม่ผ่าน','2837659874032',4),
							(1257,'ไม่ผ่าน','7592830107803',7),
							(1258,'ไม่ผ่าน','8768379830203',3),
							(1259,'ผ่าน','7592830107803',1),
							(1260,'ผ่าน','2876465982409',8),
							(1261,'ไม่ผ่าน','2876465982409',9),
							(1262,'ผ่าน','7592830107803',10),
							(1263,'ไม่ผ่าน','2876465982409',11),
							(1264,'ไม่ผ่าน','8237698800766',12),
                            (1265,'ผ่าน','6482736927369',13),
							(1266,'ไม่ผ่าน','8736492087200',4),
							(1267,'ผ่าน','2664927369138',7),
							(1268,'ไม่ผ่าน','2664927369138',2),
							(1269,'ไม่ผ่าน','8237698800766',8),
							(1270,'ผ่าน','2837659874032',3),
							(1271,'ไม่ผ่าน','6482736927369',9),
							(1272,'ไม่ผ่าน','6482736927369',4),
							(1273,'ผ่าน','2837659874032',5),
							(1274,'ไม่ผ่าน','2664927369138',1),
							(1275,'ผ่าน','8664992374902',4),
                            (1276,'ผ่าน','8237698800766',9),
							(1277,'ไม่ผ่าน','2763659366385',8),
							(1278,'ไม่ผ่าน','8664992374902',6),
							(1279,'ไม่ผ่าน','2763659366385',4),
							(1280,'ไม่ผ่าน','2164985700433',5),
							(1281,'ผ่าน','8736492087200',6),
							(1282,'ผ่าน','8736492087200',10),
							(1283,'ผ่าน','1764659347292',5),
							(1284,'ไม่ผ่าน','2164985700433',13),
							(1285,'ไม่ผ่าน','1764659347292',12),
							(1286,'ไม่ผ่าน','8236659237283',11),
                            (1287,'ผ่าน','7658293879203',6),
							(1288,'ไม่ผ่าน','7658293879203',4),
							(1289,'ผ่าน','7658293879203',5),
							(1290,'ผ่าน','1862659659238',3),
							(1291,'ไม่ผ่าน','3746923764919',3),
							(1292,'ไม่ผ่าน','3746923764919',2),
							(1293,'ผ่าน','8236659237283',7),
							(1294,'ไม่ผ่าน','1862659659238',5),
							(1295,'ไม่ผ่าน','3746923764919',4),
							(1296,'ผ่าน','2365935917738',10),
							(1297,'ไม่ผ่าน','2365935917738',11),
                            (1298,'ผ่าน','1862659659238',12),
                            (1299,'ผ่าน','2365935917738',12),
							(1300,'ไม่ผ่าน','2365935917738',13);
                            
/*schedule*/
insert into Schedules values('2017-10-23','2017-12-10','2017-12-11','2018-01-12','2018-01-14','2017-12-11','2017-12-18',1);
insert into Schedules values('2017-12-16','2018-01-07','2018-01-20','2018-01-24','2018-01-27','2018-01-20','2018-01-23',2);
insert into Schedules values('2017-12-13','2017-12-30','2018-01-04','2018-01-19','2018-01-21','2018-01-04','2018-01-10',3);
insert into Schedules values('2017-08-25','2017-09-10','2017-09-11','2017-10-16','2017-10-18','2017-09-11','2017-09-18',4);
insert into Schedules values('2017-10-12','2017-10-31','2017-11-02','2017-11-17','2017-11-19','2017-11-17','2017-11-17',5);
insert into Schedules values('2017-07-04','2017-08-22','2017-08-23','2017-08-25','2017-08-26','2017-08-25','2017-08-25',6);
insert into Schedules values('2017-06-18','2017-06-30','2017-07-02','2017-07-15','2017-07-15',null,null,7);
insert into Schedules values('2017-05-31','2017-06-26','2017-06-28','2017-07-13','2017-07-17','2017-06-28','2017-07-07',8);
insert into Schedules values('2018-01-03','2018-01-18','2018-01-19','2018-02-02','2018-02-04','2018-01-19','2018-01-24',9);
insert into Schedules values('2017-05-19','2017-06-10','2017-06-11','2017-06-20','2017-06-22','2017-06-11','2017-06-18',10);
insert into Schedules values('2017-02-01','2017-03-04','2017-04-04','2017-06-02','2017-06-04','2017-04-04','2017-04-12',11);
insert into Schedules values('2017-11-25','2017-12-26','2018-01-05','2018-01-12','2018-01-14','2018-01-05','2018-01-10',12);
insert into Schedules values('2018-03-20','2018-04-05','2018-04-06','2018-04-21','2018-04-23',null,null,13);

/*management*/
insert into Management values(1,'insert',1,'1735037492642'),
							 (2,'insert',7,'1759375274627'),
							 (3,'insert',4,'1864868606523'),
							 (4,'insert',2,'1735037492642'),
							 (5,'insert',9,'1745482654729'),
							 (6,'insert',12,'1836658383863'),
							 (7,'insert',5,'1846277371325'),
							 (8,'insert',6,'1365730573942'),
							 (9,'insert',10,'1658429665822'),
							 (10,'insert',3,'1745482654729'),
							 (11,'delete',7,'1748864946294'),
							 (12,'insert',4,'1835463853674'),
							 (13,'update',1,'1365730573942'),
							 (14,'insert',13,'1864868606523'),
							 (15,'insert',11,'1047637573502'),
							 (16,'delete',1,'1735037492642'),
							 (17,'insert',6,'1759375274627'),
							 (18,'update',5,'1047637573502'),
							 (19,'insert',8,'1752635198613'),
							 (20,'delete',13,'1635430364727'),
							 (21,'insert',2,'1736375846309'),
							 (22,'insert',7,'1748864946294'),
							 (23,'update',11,'1366483756783'),
							 (24,'insert',9,'1658429665822'),
							 (25,'delete',10,'1836658383863'),
							 (26,'insert',3,'1835463853674'),
							 (27,'insert',5,'1864868606523'),
							 (28,'update',12,'1752635198613'),
							 (29,'insert',1,'1736375846309'),
							 (30,'insert',6,'1864868606523');

/*bill*/
insert into Bill values ('1597364820','2017-12-11','ชำระเงินผ่านธนาคาร',800,'paid',1001),
						('2468159370','2017-12-15','ชำระเงินผ่านธนาคาร',800,'paid',1117),
						('3698520147','2017-12-11','ชำระเงินผ่านธนาคาร',800,'paid',1127),
						('7082385780','2017-12-12','ชำระเงินผ่านธนาคาร',800,'paid',1135),
						('6781929274','2017-12-17','ชำระเงินผ่านธนาคาร',800,'paid',1156),
						('7423693133','2017-12-18','ชำระเงินผ่านธนาคาร',800,'paid',1173),
						('4296016754','2017-12-13','ชำระเงินผ่านธนาคาร',800,'paid',1210),
						('2761148788','2017-12-14','ชำระเงินผ่านธนาคาร',800,'paid',1237),
						('4117060956','2017-12-16','ชำระเงินผ่านธนาคาร',800,'paid',1242),
						('8675471731','2017-12-11','ชำระเงินผ่านธนาคาร',800,'paid',1249),
						('2708908028','2017-12-14','ชำระเงินผ่านธนาคาร',800,'paid',1252),
						('3502873816','2017-12-18','ชำระเงินผ่านธนาคาร',800,'paid',1259),
                        ('2859911137','2018-01-22','ชำระเงินผ่านธนาคาร',1000,'paid',1006),
						('4329360673','2018-01-23','ชำระเงินผ่านธนาคาร',1000,'paid',1010),
						('2606740986','2010-01-20','ชำระเงินผ่านธนาคาร',1000,'paid',1027),
						('4358032491','2018-01-21','ชำระเงินผ่านธนาคาร',1000,'paid',1042),
						('4635133055','2018-01-20','ชำระเงินผ่านธนาคาร',1000,'paid',1063),
						('1307734033','2018-01-23','ชำระเงินผ่านธนาคาร',1000,'paid',1184),
						('1885183845','2018-01-21','ชำระเงินผ่านธนาคาร',1000,'paid',1219),
						('2427924495','2018-01-20','ชำระเงินผ่านธนาคาร',1000,'paid',1255),
						('1957681697','2018-01-04','ชำระเงินผ่านธนาคาร',700,'paid',1018),
						('4778071587','2018-01-10','ชำระเงินผ่านธนาคาร',700,'paid',1026),
						('8618961629','2018-01-05','ชำระเงินผ่านธนาคาร',700,'paid',1035),
                        ('8998376709','2018-01-06','ชำระเงินผ่านธนาคาร',700,'paid',1103),
						('5969825024','2018-01-07','ชำระเงินผ่านธนาคาร',700,'paid',1141),
						('3804559634','2018-01-09','ชำระเงินผ่านธนาคาร',700,'paid',1166),
						('6441475708','2018-01-10','ชำระเงินผ่านธนาคาร',700,'paid',1186),
						('8470669217','2018-01-05','ชำระเงินผ่านธนาคาร',700,'paid',1196),
						('9534919360','2018-01-04','ชำระเงินผ่านธนาคาร',700,'paid',1224),
						('3189658062','2018-01-06','ชำระเงินผ่านธนาคาร',700,'paid',1270),
						('3023875258','2018-01-07','ชำระเงินผ่านธนาคาร',700,'paid',1290),
                        ('6022392102','2017-09-11','ชำระเงินผ่านธนาคาร',500,'paid',1275),
						('8682566835','2017-09-18','ชำระเงินผ่านธนาคาร',500,'paid',1235),
						('3611642919','2017-09-12','ชำระเงินผ่านธนาคาร',500,'paid',1203),
                        ('4106565500','2017-09-16','ชำระเงินผ่านธนาคาร',500,'paid',1195),
						('1248193225','2017-09-13','ชำระเงินผ่านธนาคาร',500,'paid',1182),
						('6192339971','2017-09-15','ชำระเงินผ่านธนาคาร',500,'paid',1159),
						('4423732721','2017-09-14','ชำระเงินผ่านธนาคาร',500,'paid',1111),
						('9416225609','2017-09-16','ชำระเงินผ่านธนาคาร',500,'paid',1100),
						('8576635626','2017-09-11','ชำระเงินผ่านธนาคาร',500,'paid',1053),
						('3482257319','2017-09-18','ชำระเงินผ่านธนาคาร',500,'paid',1050),
						('6590136150','2017-09-14','ชำระเงินผ่านธนาคาร',500,'paid',1041),
						('1944675311','2017-09-17','ชำระเงินผ่านธนาคาร',500,'paid',1003),
						('2013609754','2017-11-17','ชำระเงินหน้างาน',100,'paid',1044),
						('5059873811','2017-11-17','ชำระเงินหน้างาน',100,'paid',1069),
                        ('8155386136','2017-11-17','ชำระเงินหน้างาน',100,'paid',1121),
						('3069922715','2017-11-17','ชำระเงินหน้างาน',100,'paid',1179),
						('1350343796','2017-11-17','ชำระเงินหน้างาน',100,'paid',1190),
						('8589086063','2017-11-17','ชำระเงินหน้างาน',100,'paid',1273),
						('1932102815','2017-11-17','ชำระเงินหน้างาน',100,'paid',1283),
						('5913667353','2017-11-17','ชำระเงินหน้างาน',100,'paid',1289),
                        ('1983243470','2017-08-25','ชำระเงินหน้างาน',250,'paid',1287),
						('5455319160','2017-08-25','ชำระเงินหน้างาน',250,'paid',1281),
						('5007033879','2017-08-25','ชำระเงินหน้างาน',250,'paid',1247),
						('7400196540','2017-08-25','ชำระเงินหน้างาน',250,'paid',1180),
						('1641249797','2017-08-25','ชำระเงินหน้างาน',250,'paid',1169),
                        ('5585866492','2017-08-25','ชำระเงินหน้างาน',250,'paid',1163),
						('3747959245','2017-08-25','ชำระเงินหน้างาน',250,'paid',1148),
						('1592726121','2017-08-25','ชำระเงินหน้างาน',250,'paid',1129),
						('1371374704','2017-08-25','ชำระเงินหน้างาน',250,'paid',1088),
						('3158448695','2017-08-25','ชำระเงินหน้างาน',250,'paid',1065),
						('9147174680','2017-08-25','ชำระเงินหน้างาน',250,'paid',1032),
						('4147352111','2017-06-28','ชำระเงินผ่านธนาคาร',2000,'paid',1016),
						('3521178891','2017-06-28','ชำระเงินผ่านธนาคาร',2000,'paid',1045),
						('6722492035','2017-06-28','ชำระเงินผ่านธนาคาร',2000,'paid',1059),
						('7816886161','2017-06-28','ชำระเงินผ่านธนาคาร',2000,'paid',1072),
						('7693262878','2017-07-07','ชำระเงินผ่านธนาคาร',2000,'paid',1081),
                        ('3630889841','2017-07-01','ชำระเงินผ่านธนาคาร',2000,'paid',1091),
						('7206507666','2017-06-30','ชำระเงินผ่านธนาคาร',2000,'paid',1119),
						('6320863534','2017-07-02','ชำระเงินผ่านธนาคาร',2000,'paid',1152),
						('9164746767','2017-06-29','ชำระเงินผ่านธนาคาร',2000,'paid',1192),
						('3784315172','2017-07-03','ชำระเงินผ่านธนาคาร',2000,'paid',1230),
						('7585525406','2017-07-06','ชำระเงินผ่านธนาคาร',2000,'paid',1244),
						('4444392124','2017-06-29','ชำระเงินผ่านธนาคาร',2000,'paid',1254),
						('7372596101','2017-07-04','ชำระเงินผ่านธนาคาร',2000,'paid',1260),
                        ('7093222938','2018-01-19','ชำระเงินผ่านธนาคาร',500,'paid',1017),
						('9967444083','2018-01-24','ชำระเงินผ่านธนาคาร',500,'paid',1061),
						('1342669391','2018-01-20','ชำระเงินผ่านธนาคาร',500,'paid',1132),
                        ('9085941916','2018-01-21','ชำระเงินผ่านธนาคาร',500,'paid',1171),
						('9089687618','2018-01-22','ชำระเงินผ่านธนาคาร',500,'paid',1229),
						('8524834198','2018-01-23','ชำระเงินผ่านธนาคาร',500,'paid',1233),
						('7061597072','2018-01-19','ชำระเงินผ่านธนาคาร',500,'paid',1239),
						('9131122819','2018-01-23','ชำระเงินผ่านธนาคาร',500,'paid',1276),
						('7779918719','2017-06-11','ชำระเงินผ่านธนาคาร',500,'paid',1296),
						('7162549305','2017-06-18','ชำระเงินผ่านธนาคาร',500,'paid',1282),
						('7922623265','2017-06-15','ชำระเงินผ่านธนาคาร',500,'paid',1262),
						('3861361007','2017-06-17','ชำระเงินผ่านธนาคาร',500,'paid',1220),
						('1414354793','2017-06-12','ชำระเงินผ่านธนาคาร',500,'paid',1198),
						('2215898373','2017-06-16','ชำระเงินผ่านธนาคาร',500,'paid',1144),
                        ('4450428044','2017-06-14','ชำระเงินผ่านธนาคาร',500,'paid',1122),
						('7231665227','2017-06-17','ชำระเงินผ่านธนาคาร',500,'paid',1114),
						('7384962719','2017-06-18','ชำระเงินผ่านธนาคาร',500,'paid',1106),
						('1224384965','2017-06-18','ชำระเงินผ่านธนาคาร',500,'paid',1075),
						('2868279573','2017-06-11','ชำระเงินผ่านธนาคาร',500,'paid',1049),
						('3118839325','2017-06-12','ชำระเงินผ่านธนาคาร',500,'paid',1040),
						('5315072351','2017-06-13','ชำระเงินผ่านธนาคาร',500,'paid',1004),
                        ('9454786024','2017-04-04','ชำระเงินผ่านธนาคาร',450,'paid',1056),
						('2031672122','2017-04-14','ชำระเงินผ่านธนาคาร',450,'paid',1215),
						('6269195104','2018-01-05','ชำระเงินผ่านธนาคาร',500,'paid',1014),
						('1877431344','2018-01-08','ชำระเงินผ่านธนาคาร',500,'paid',1021),
						('7336331928','2018-01-10','ชำระเงินผ่านธนาคาร',500,'paid',1146),
                        ('5202213638','2018-01-06','ชำระเงินผ่านธนาคาร',500,'paid',1298),
						('9254005375','2018-01-17','ชำระเงินผ่านธนาคาร',500,'paid',1299);
                        

