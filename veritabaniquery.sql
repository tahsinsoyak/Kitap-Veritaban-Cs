CREATE DATABASE veritabaniodev;
GO
use veritabaniodev;
GO
CREATE TABLE Yazarlar
(
	YazarID int primary key NOT NULL,
	YazarAdSoyad varchar(100)UNIQUE Not Null,
	YazarEposta varchar(255) NULL,
);
GO
CREATE TABLE Kitaplar
(
	KitapID int primary key NOT NULL,
	KitapAd varchar(255)NOT NULL,
	Yazar varchar(100) NOT NULL,
	Yayinevi varchar(100),
	SayfaSayisi int NOT NULL,
	Fiyat money NOT NULL,
	Cevirmen varchar(100) NULL,
	Dil varchar(55) NULL,
	YayinTarihi date NULL,
	Cilt varchar(55) NULL,
	foreign key (Yazar) references Yazarlar(YazarAdSoyad)
);
GO
INSERT INTO Yazarlar VALUES(1,'Jared Diamond','jareddiamond@hotmail.com')
INSERT INTO Yazarlar VALUES(2,'Yuval Noah Harari','yuvalnoah@gmail.com')
INSERT INTO Yazarlar VALUES(3,'George Orwell','georgeow@yandex.com')
INSERT INTO Yazarlar VALUES(4,'Jose Saramago','')
INSERT INTO Yazarlar VALUES(5,'Ray Bradbury','raydefeater@gmail.com')
INSERT INTO Yazarlar VALUES(6,'Antoine De Saint Exupery','antoineexupery@gmail.com')
INSERT INTO Yazarlar VALUES(7,'Prof. Dr. İlber Ortaylı','ilberortayli@yandex.com')
INSERT INTO Yazarlar VALUES(8,'Sabahattin Ali','sabahattinali@hotmail.com')
INSERT INTO Yazarlar VALUES (9,'Charles C.Mann','charlesmann@gmail.com')
INSERT INTO Yazarlar VALUES(10,'Anthony Burgess','anthonyburgess@gmail.com')
INSERT INTO Yazarlar VALUES (11,'Nigel Warburton','nigelwarbuton@yandex.com')
INSERT INTO Yazarlar VALUES (12,'SUN ZI','sunzi22@yandex.com')
INSERT INTO Yazarlar VALUES (13,'Lev Tolstoy','levtolstoy@gmail.com')
INSERT INTO Yazarlar VALUES (14,'Jean Paul Dumont','jeanpaul@gmail.com')
INSERT INTO Yazarlar VALUES (15,'Jack London','londonjack@gmail.com')
INSERT INTO Yazarlar VALUES (16,'Michael Ende','')
INSERT INTO Yazarlar VALUES (17,'Stefan Zweig','stefanzwei23g@gmail.com')
INSERT INTO Yazarlar VALUES (18,'Victor Hugo','victorhugo@gmail.com')
INSERT INTO Yazarlar VALUES (19,'Franz Kafka','kafkafranz@gmail.com')
INSERT INTO Yazarlar VALUES (20,'Anton Çehov','antoncehov@yandex.com')
GO

INSERT INTO Kitaplar values(1,'Tüfek, Mikrop ve Çelik','Jared Diamond','Pegasus Yayınları',664,26.14,'Ülker İnce','Türkçe','2018/09/28','Karton Kapak')
INSERT INTO Kitaplar values(2,'Hayvanlardan Tanrılara Sapiens','Yuval Noah Harari','Kolektif Kitap',412,34.79,'Ertuğrul GenÇ','Türkçe','2017/03/15','Karton Kapak')
INSERT INTO Kitaplar values(3,'1984','George Orwell','Can Yayınları',352,19.67,'Celal Üster','Türkçe','2019/04/25','Ciltli')
INSERT INTO Kitaplar values(4,'Körlük','Jose Saramago','Kırmızı Kedi Yayınevi',336,17.96,'Işık Erdügen','Türkçe','2019/10/11','Karton Kapak')
INSERT INTO Kitaplar values(5,'Fahrenheit 451','Ray Bradbury','Harper Collins',230,70.20,'','İngilizce','2018/10/01','Karton Kapak')
INSERT INTO Kitaplar values(6,'The Little Prince','Antoine De Saint Exupery','KARBON KİTAPLAR',120,3.70,'','İngilizce','2016/02/15','Karton Kapak')
INSERT INTO Kitaplar values(7,'Bir Ömür Nasıl Yaşanır?','Prof. Dr. İlber Ortaylı','KRONİK KİTAP',288,16.50,'','Türkçe','2020/06/01','Karton Kapak')
INSERT INTO Kitaplar values(8,'Sonbahar Ülkesi','Ray Bradbury','İTHAKİ YAYINLARI',288,23.76,'Mehmet Moralı','Türkçe','2019/10/03','Karton Kapak')
INSERT INTO Kitaplar values(9,'Uğursuz Bir Şey Geliyor Bu Yana','Ray Bradbury','İTHAKİ YAYINLARI',280,24.06,'Ayşe Gorbon','Türkçe','2018/05/11','Karton Kapak')
INSERT INTO Kitaplar values(10,'Resimli Adam','Ray Bradbury','İTHAKİ YAYINLARI',264,21.12,'İlker Sönmez','Türkçe','2019/03/22','Karton Kapak')
INSERT INTO Kitaplar values(11,'1493 Kolomb dan Sonra Amerika Amerikan Yerlilerinin Yok Edilen Uygarlığı','Charles C.Mann','TARİH & KURAM YAYINEVİ',592,42.50,'Kadriye Göksel','Türkçe','2019/08/05','Karton Kapak')
INSERT INTO Kitaplar values(12,'1493: Amerika’nın Keşfinden Küreselleşmeye Kısa Dünya Tarihi','Charles C.Mann','EPSİLON YAYINEVİ',333,35.03,'Tuğba Kaya','Türkçe','2019/02/22','Karton Kapak')
INSERT INTO Kitaplar values(13,'Mozart ve Deyyuslar','Anthony Burgess','TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI',176,10.23,'Aslı Biçen','Türkçe','2019/01/04','Karton Kapak')
INSERT INTO Kitaplar values(14,'Doktor Hastalandı','Anthony Burgess','TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI',264,12.70,'Can Moralı','Türkçe','2019/05/22','Karton Kapak')
INSERT INTO Kitaplar values(15,'Bir Elin Sesi Var','Anthony Burgess','TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI',200,10.12,'Roza Hakmen','Türkçe','2019/02/21','Karton Kapak')
INSERT INTO Kitaplar values(16,'Clockwork Orange','Anthony Burgess','PENGUIN BOOKS',144,60.00,'','İngilizce','2011/07/01','Karton Kapak')
INSERT INTO Kitaplar values(17,'A dan Z ye Düşünmek','Nigel Warburton','ALFA YAYINLARI',232,16.50,'Sevda Çalışkan','Türkçe','2019/10/28','Karton Kapak')
INSERT INTO Kitaplar values(18,'Klasiklerle Felsefe','Nigel Warburton','ALFA YAYINLARI',490,27.75,'Sevda Çalışkan','Türkçe','2019/09/19','Ciltli')
INSERT INTO Kitaplar values(19,'Felsefe Okuma Rehberi','Nigel Warburton','ALFA YAYINLARI',105,12.00,'','Türkçe','2020/07/03','Karton Kapak')
INSERT INTO Kitaplar values(20,'Felsefeye Giriş','Nigel Warburton','ALFA YAYINLARI',320,19.12,'Kerem Cankoçak','Türkçe','2020/10/22','Karton Kapak')
INSERT INTO Kitaplar values(21,'Felsefenin Kısa Tarihi','Nigel Warburton','ALFA YAYINLARI',360,21.74,'Güçlü Ateşoğlu','Türkçe','2020/10/20','Karton Kapak')
INSERT INTO Kitaplar values(22,'İtiraflarım','Lev Tolstoy','KAPRA YAYINCILIK',88,4.90,'İpek Söylemez','Türkçe','2020/10/20','Karton Kapak')
INSERT INTO Kitaplar values(23,'Savaş Sanatı','SUN ZI','MAHZEN',80,4.80,'','Türkçe','2019/10/31','Karton Kapak')
INSERT INTO Kitaplar values(24,'The Art of War','SUN ZI','KARBON KİTAPLAR',73,7.0,'','İngilizce','2019/07/24','Karton Kapak')
INSERT INTO Kitaplar values(25,'Antik Felsefe','Jean Paul Dumont','KARBON KİTAPLAR',128,11.25,'İsmail Yerguz','Türkçe','2007/03/15','Karton Kapak')
INSERT INTO Kitaplar values(26,'Vahşetin Çağrısı','Jack London','KAPRA YAYINCILIK',104,4.90,'Ilgın Tufan','Türkçe','2020/11/28','Karton Kapak')
INSERT INTO Kitaplar values(27,'Yanan Günışığı','Jack London','KAPRA YAYINCILIK',300,4.90,'Ali Şan','Türkçe','2020/11/28','Karton Kapak')
INSERT INTO Kitaplar values(28,'Beyaz Diş','Jack London','KAPRA YAYINCILIK',224,4.90,'Eylül Erten','Türkçe','2020/11/28','Karton Kapak')
INSERT INTO Kitaplar values(29,'Ateş Yakmak','Jack London','KAPRA YAYINCILIK',72,4.90,'Selen Birce Yılmaz','Türkçe','2020/11/28','Karton Kapak')
INSERT INTO Kitaplar values(30,'Michael, Brother of Jerry','Jack London','KARBON KİTAPLAR',323,16.00,'','İngilizce','2019/10/30','Karton Kapak')
INSERT INTO Kitaplar values(31,'The Star-Rover','Jack London','KARBON KİTAPLAR',325,16.00,'','İngilizce','2019/10/12','Karton Kapak')
INSERT INTO Kitaplar values(32,'The Sea Wolf','Jack London','KARBON KİTAPLAR',351,15.00,'','İngilizce','2019/10/17','Karton Kapak')
INSERT INTO Kitaplar values(33,'The People of the Abyss','Jack London','KARBON KİTAPLAR',211,10.00,'','İngilizce','2019/10/17','Karton Kapak')
INSERT INTO Kitaplar values(34,'Büyü Okulu ve Diğer Öyküler','Michael Ende','PEGASUS YAYINLARI',272,22.75,'','Türkçe','2020/08/05','Karton Kapak')
INSERT INTO Kitaplar values(35,'Bilinmeyen Bir Kadının Mektubu','Stefan Zweig','TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI',90,3.90,'Ahmet Cemal','Türkçe','2020/02/26','Karton Kapak')
INSERT INTO Kitaplar values(36,'Korku','Stefan Zweig','TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI',80,5.20,'İlknur İgan','Türkçe','2019/09/23','Karton Kapak')
INSERT INTO Kitaplar values(37,'Olağanüstü Bir Gece','Stefan Zweig','TÜRKİYE İŞ BANKASI KÜLTÜR YAYINLARI',80,5.20,'İlknur İgan','Türkçe','2019/04/15','Karton Kapak')
INSERT INTO Kitaplar values(38,'1793 Devrimi','Victor Hugo','KARBON KİTAPLAR',488,22.75,'Ester Yanarocak','Türkçe','2020/05/04','Karton Kapak')
INSERT INTO Kitaplar values(39,'La Legende des Siecles','Victor Hugo','KARBON KİTAPLAR',153,10.40,'','Fransızca','2019/04/03','Karton Kapak')
INSERT INTO Kitaplar values(40,'Les Miserables I','Victor Hugo','KARBON KİTAPLAR',560,31.20,'','Fransızca','2018/12/26','Karton Kapak')
INSERT INTO Kitaplar values(41,'Les Miserables II','Victor Hugo','KARBON KİTAPLAR',576,32.50,'','Fransızca','2018/12/26','Karton Kapak')
INSERT INTO Kitaplar values(42,'Les Miserables III','Victor Hugo','KARBON KİTAPLAR',550,31.20,'','Fransızca','2018/12/26','Karton Kapak')
INSERT INTO Kitaplar values(43,'Martı','Anton Çehov','İNDİGO KİTAP',128,5.0,'Burak Cemil Yılmaz','Türkçe','2020/08/19','Karton Kapak')
INSERT INTO Kitaplar values(44,'Hayatım Bir Taşralının Hikayesi','Anton Çehov','YORDAM KİTAP',144,8.28,'Nuri Yıldırım','Türkçe','2020/10/21','Karton Kapak')
INSERT INTO Kitaplar values(45,'Step','Anton Çehov','YORDAM KİTAP',144,8.64,'Nuri Yıldırım','Türkçe','2020/10/21','Karton Kapak')
INSERT INTO Kitaplar values(46,'Düello','Anton Çehov','YORDAM KİTAP',160,8.64,'Nuri Yıldırım','Türkçe','2020/10/21','Karton Kapak')
INSERT INTO Kitaplar values(47,'In Der Strafkolonie','Franz Kafka','KARBON KİTAPLAR',52,7.15,'','Almanca','2016/12/24','Karton Kapak')
INSERT INTO Kitaplar values(48,'Ein Hungerkünstler','Franz Kafka','KARBON KİTAPLAR',52,7.15,'','Almanca','2016/12/24','Karton Kapak')
INSERT INTO Kitaplar values(49,'Betrachtung','Franz Kafka','KARBON KİTAPLAR',50,7.15,'','Almanca','2016/12/24','Karton Kapak')
INSERT INTO Kitaplar values(50,'Ein Landarzt','Franz Kafka','KARBON KİTAPLAR',63,7.15,'','Almanca','2016/12/24','Karton Kapak')

GO

--procedures--

create procedure kitaplistele
as
select * from Kitaplar

GO

create procedure yazarlistele
as
select * from Yazarlar
GO


create PROCEDURE kitapekle 
@kitapid   int,  
@kitapad    VARCHAR(255),  
@yazar      VARCHAR(100),  
@yayinevi   VARCHAR(100),  
@sayfasayisi int,  
@fiyat money,
@cevirmen varchar(100),
@dil varchar(55),
@yayintarihi date,
@cilt varchar(55)
AS 
BEGIN  
INSERT INTO Kitaplar
(KitapID,KitapAd,Yazar,Yayinevi,SayfaSayisi,Fiyat,Cevirmen,Dil,YayinTarihi,Cilt)
VALUES(@kitapid,@kitapad,@yazar,@yayinevi,@sayfasayisi,@fiyat,@cevirmen,@dil,@yayintarihi,@cilt); 
END 

GO
create PROCEDURE yazarekle 
@yazarid   int,  
@yazaradsoyad    VARCHAR(100),  
@yazareposta      VARCHAR(255)
AS 
BEGIN  
INSERT INTO Yazarlar
(YazarID,YazarAdSoyad,YazarEposta)
VALUES(@yazarid,@yazaradsoyad,@yazareposta);
END 
GO

create procedure kitapfiyat
@fiyat money
as
begin
select KitapAd,Fiyat from Kitaplar where Fiyat <= @fiyat ORDER BY Fiyat 
end

GO
create procedure yazarkitaplariliste
@yazarad varchar(100)
as
begin
select * from Kitaplar where Yazar = @yazarad
end
GO

--functions--

create function kitapyayinsuresi(@kitapad varchar(255))
returns table
as
return (select KitapAd,DATEDIFF(MONTH,YayinTarihi,GETDATE())as [Kitap Yayınlanma Süresi (AY)],Yayinevi from Kitaplar where KitapAd=@kitapad)

GO

create function yayinevikitaplari(@yayinevi varchar(100))
returns table
as
return (select Yayinevi,KitapAd,YayinTarihi from Kitaplar where Yayinevi=@yayinevi)

GO

create function kitapsayisi(@yazar varchar(100))
returns table
as
return (select Yazar,COUNT(KitapAd)as [Yazdığı Kitap Sayısı] from Kitaplar where Yazar=@yazar group by Yazar)

GO
