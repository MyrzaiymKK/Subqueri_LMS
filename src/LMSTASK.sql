create  database SUP;

create table languages (
    id serial primary key ,
    language varchar
);
insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');
create table publishers(
    id serial primary key ,
    name varchar
);
insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
create table books(
    id serial primary key ,
    name varchar,
    country varchar,
    published_year date,
    price numeric,
    Genre genre
);
INSERT INTO books (name, country, published_year, price, genre, languages_id, published_id, authors_id)
VALUES
    ('Taina', 'Russia', '2021-11-12', '568', 'DETECTIV', '5', '12', '6'),
    ('Zvezdopad', 'Russia', '2004-12-09', '446', 'ROMANCE', '5', '13', '11'),
    ('Homo Faber', 'Germany','2022-04-10', '772', 'FANTASY', '3', '5', '3'),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780', 'DETECTIV', '3', '3', '10'),
    ('Lord of the Flies', 'United States', '2015-07-11', '900', 'FANTASY', '1', '2', '4'),
    ('Un soir au club', 'France', '2018-01-12', '480', 'DRAMA', '2', '1', '1'),
    ('Voina', 'Russia', '2004-12-06', '880', 'HISTORY', '5', '4', '13'),
    ('Sun Tzu', 'China', '2022-09-05', '349', 'HISTORY', '4', '4', '2'),
    ('Emil und die Detektive', 'Germany', '2010-06-11', '228', 'DETECTIV','3', '5', '10'),
    ('Coule la Seine', 'France', '2015-03-01', '732', 'FANTASY', '2', '6', '1'),
    ('Love and hatred', 'Russia', '2012-02-03', '763', 'ROMANCE', '5', '14', '13'),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', '309', 'FANTASY', '1', '9', '8'),
    ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'ROMANCE', '2', '6', '9'),
    ('The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814', 'DRAMA', '5', '6', '6'),
    ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'ROMANCE', '2', '8', '5'),
    ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'DETECTIV','3','7', '12'),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566', 'DETECTIV', '3', '3', '3'),
    ('LÉtranger', 'France', '2017-11-14', '422', 'ROMANCE', '2', '8', '5'),
    ('Lao Tse', 'China', '2005-07-16', '900', 'FANTASY', '4', '4', '2'),
    ('Semya', 'Russia', '2004-04-12', '194', 'DRAMA', '5', '13', '11'),
    ('Empty World', 'United States', '2008-01-04', '324', 'FANTASY', '1', '11', '15'),
    ('Domainer', 'Germany', '2020-01-06', '420', 'ROMANCE', '3', '5', '10'),
    ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'ROMANCE','1', '9', '4'),
    ('Die R uber', 'Germany', '2020-06-25', '300', 'ROMANCE', '3', '7', '12'),
    ('Jung Chang', 'China', '2021-05-14', '600', 'HISTORY', '4', '10', '7'),
    ('Les Aventures de Tintin', 'France', '2015-04-10', '582', 'DRAMA', '2', '1', '5'),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269', 'DETECTIV', '3', '5', '10'),
    ('Amy Tan', 'China', '2023-01-09', '486', 'DRAMA', '4', '4', '7'),
    ('Krasnaya luna', 'Russia', '2020-02-07', '550', 'FANTASY', '5', '12', '11'),
    ('Emma', 'United States', '2021-10-11', '599', 'BIOGRAPHY','1', '2', '15');


create type genre as enum ('DETECTIV','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');


create table authors(
    id serial primary key ,
    first_name varchar,
    last_name varchar,
    email varchar,
    date_of_birth date,
    country varchar,
    Gender gender
 );
INSERT INTO authors (first_name, last_name, email, date_of_birth, country, gender)
VALUES
    ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968-09-25', 'France', 'Female'),
    ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'Female'),
    ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'Male'),
    ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'Male'),
    ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'Male'),
    ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'Male'),
    ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'Female'),
    ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'Female'),
    ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'Male'),
    ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-08', 'Germany', 'Male'),
    ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'Female'),
    ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'Male'),
    ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'Female'),
    ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'Male'),
    ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'Female');

create type gender as enum ('Male','Female');

alter table books add column authors_id int REFERENCES authors(id);
alter table books add column published_id int REFERENCES publishers(id);
alter table books add column languages_id int REFERENCES languages(id);
--1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select name,published_year,Genre from books;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select  distinct country from  authors;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books where published_year between '2020-01-01' and '2023-01-01';
-- 4.Детектив китептер жана алардын аттары чыксын.
select name from books where Genre = 'DETECTIV';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name,' ',last_name) from authors;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select first_name,last_name from authors where country in  ('Germany','France') order by first_name,last_name desc ;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын.
select * from books where Genre not in ('ROMANCE') and price >= 500;
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where Gender = 'Female' limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from authors where email ilike '%.com' and first_name ilike '____' and Gender = 'Female';
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select country,count(id) from authors  group by country;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select country,count(id) from authors   group by country having count(id) >= 3 order by country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select Genre, count(id) from books group by Genre;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select Genre,min(price) from books where Genre in ('ROMANCE','DETECTIV') group by Genre;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select Genre,count(id) from books where Genre in ('HISTORY','BIOGRAPHY') group by Genre;
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select l.language,name,published_year from books b inner join languages l on b.languages_id = l.id;
-- 16.Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select * from authors a full join books b on b.authors_id = a.id full join public.publishers p on b.published_id = p.id;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select b.name,first_name,last_name from authors a left join books b on a.id = b.authors_id;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select l.language,count(b.id) as book_cunt from books b inner join languages l on b.languages_id = l.id group by l.language order by l.language;
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.name,avg(b.price) from books b inner join publishers p on b.published_id = p.id group by p.name;
-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select a.first_name,a.last_name,b.name from books b inner join authors a on  b.authors_id = a.id where b.published_year between '2010-01-01' and '2015-12-31';
-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select a.first_name, a.last_name, sum(b.price) from books b
    inner join authors a on  b.authors_id = a.id
    where extract(year from b.published_year) between '2010' and '2015' group by a.first_name, a.last_name;

