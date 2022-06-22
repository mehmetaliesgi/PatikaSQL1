-- 1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), 
--name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.

CREATE TABLE employee (
	id SERIAL,
	name VARCHAR(50),
	birthday DATE,
	email VARCHAR(100)
);

-- 2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.

insert into employee (name, email, birthday) values ('Korry', 'knend0@va.gov', '1950-12-19');
insert into employee (name, email, birthday) values ('Peggi', 'pblacksland1@phpbb.com', '1944-08-29');
insert into employee (name, email, birthday) values ('Hussein', 'hreaney2@purevolume.com', null);
insert into employee (name, email, birthday) values ('De', 'dbaudon3@msu.edu', '1941-05-13');
insert into employee (name, email, birthday) values ('Alleyn', 'adavidov4@woothemes.com', '1959-09-06');
insert into employee (name, email, birthday) values ('Retha', 'rsimonich5@ovh.net', '1989-05-25');
insert into employee (name, email, birthday) values ('Had', 'htitcombe6@kickstarter.com', '1908-05-03');
insert into employee (name, email, birthday) values ('Belva', 'bdobeson7@webs.com', '2006-06-30');
insert into employee (name, email, birthday) values ('Miguelita', 'mglinde8@cdbaby.com', '1911-05-28');
insert into employee (name, email, birthday) values ('Veronique', 'vpailin9@amazon.de', '2017-06-01');
insert into employee (name, email, birthday) values ('Jocelin', 'jsportona@weather.com', '1941-07-02');
insert into employee (name, email, birthday) values ('Monte', 'mtennantb@networksolutions.com', '1921-01-06');
insert into employee (name, email, birthday) values ('Caldwell', 'cfreeburyc@mozilla.com', '1950-05-29');
insert into employee (name, email, birthday) values ('Darci', 'dtilzeyd@comcast.net', '1968-02-03');
insert into employee (name, email, birthday) values ('Jen', 'jvickerstaffe@free.fr', '1990-10-22');
insert into employee (name, email, birthday) values ('Meier', 'mseckingtonf@nifty.com', '1960-08-09');
insert into employee (name, email, birthday) values ('Mikol', 'mmartinollig@yahoo.com', '1984-02-18');
insert into employee (name, email, birthday) values ('Nelly', 'ndafforneh@intel.com', '1933-12-16');
insert into employee (name, email, birthday) values ('Jacques', 'jfodeni@weather.com', '1942-04-24');
insert into employee (name, email, birthday) values ('Norine', 'ngeogheganj@shop-pro.jp', '1965-11-26');
insert into employee (name, email, birthday) values ('Benito', 'bmcgennk@businessweek.com', null);
insert into employee (name, email, birthday) values ('Pietrek', 'pcowiel@hao123.com', '2009-06-08');
insert into employee (name, email, birthday) values ('Lura', 'ljoseym@nps.gov', '1964-01-29');
insert into employee (name, email, birthday) values ('Abbey', 'aroseburghn@toplist.cz', '1907-06-16');
insert into employee (name, email, birthday) values ('Lutero', 'lpantlino@google.com.au', '1999-06-29');
insert into employee (name, email, birthday) values ('Gay', 'gorrp@friendfeed.com', '2018-05-11');
insert into employee (name, email, birthday) values ('Darci', 'deffauntq@ustream.tv', '1923-08-26');
insert into employee (name, email, birthday) values ('Jemima', 'jsmalingr@freewebs.com', null);
insert into employee (name, email, birthday) values ('Colly', 'cgirogettis@about.me', '1944-07-26');
insert into employee (name, email, birthday) values ('Adler', 'akleinplatzt@twitter.com', null);
insert into employee (name, email, birthday) values ('Teodora', 'thacardu@mozilla.org', '2018-06-09');
insert into employee (name, email, birthday) values ('Benoite', 'bvakhrushinv@jiathis.com', '1908-04-20');
insert into employee (name, email, birthday) values ('Eddy', 'ehinkleyw@boston.com', null);
insert into employee (name, email, birthday) values ('Rosabel', 'rcrathernx@digg.com', '1929-07-21');
insert into employee (name, email, birthday) values ('Tracie', 'tvipany@yelp.com', '1992-03-30');
insert into employee (name, email, birthday) values ('Ethelind', 'estoutez@reuters.com', '1932-02-04');
insert into employee (name, email, birthday) values ('Jolie', 'jfarfalameev10@ft.com', null);
insert into employee (name, email, birthday) values ('Gwyneth', 'gswyer11@pbs.org', '1905-05-09');
insert into employee (name, email, birthday) values ('Stefan', 'smurrells12@admin.ch', '2014-09-18');
insert into employee (name, email, birthday) values ('Winny', 'whastings13@globo.com', '1957-10-18');
insert into employee (name, email, birthday) values ('Raymund', 'rplester14@patch.com', '1921-08-02');
insert into employee (name, email, birthday) values ('Aguie', 'aadlem15@loc.gov', '1917-11-06');
insert into employee (name, email, birthday) values ('Corny', 'cbeaconsall16@ezinearticles.com', '1907-02-27');
insert into employee (name, email, birthday) values ('Martina', 'mbehnke17@sbwire.com', '1991-08-27');
insert into employee (name, email, birthday) values ('Bartholomeo', 'bpavolillo18@vk.com', null);
insert into employee (name, email, birthday) values ('Huntley', 'haguirre19@unblog.fr', '1944-05-17');
insert into employee (name, email, birthday) values ('Griffie', 'gtyrone1a@edublogs.org', '1930-06-27');
insert into employee (name, email, birthday) values ('Hadleigh', 'hdevany1b@cocolog-nifty.com', '2006-10-18');
insert into employee (name, email, birthday) values ('Rockie', 'rcamplin1c@phoca.cz', '1976-09-07');
insert into employee (name, email, birthday) values ('Ailina', 'abuttgow1d@smh.com.au', '1953-06-04');


-- 3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee 
SET name = 'Ahmet',
	birthday = '1999-11-21',
	email = 'ahmetdeneme@gmail.com'
WHERE id = 1;

UPDATE employee 
SET name = 'Ahmet1',
	birthday = '1999-11-22',
	email = 'ahmetdeneme1@gmail.com'
WHERE id = 2;

UPDATE employee 
SET name = 'Ahmet2',
	birthday = '1999-11-23',
	email = 'ahmetdeneme3@gmail.com'
WHERE id = 3;

UPDATE employee 
SET name = 'Ahmet3',
	birthday = '1999-11-24',
	email = 'ahmetdeneme4@gmail.com'
WHERE id = 4;

UPDATE employee 
SET name = 'Ahmet4',
	birthday = '1999-11-25',
	email = 'ahmetdeneme5@gmail.com'
WHERE id = 5;

-- 4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.

DELETE FROM employee
WHERE id = 1;

DELETE FROM employee
WHERE id = 2;

DELETE FROM employee
WHERE id = 3;

DELETE FROM employee
WHERE id = 4;

DELETE FROM employee
WHERE id = 5;
