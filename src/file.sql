create type gender as enum ('Male', 'Female');
create type genre as enum ('DETECTIVE','ROMANS','FANTASY','DRAMA','HISTORY','BIOGRAPHY');

create table Publisher
(
    id serial primary key,
    name varchar
);

create table Author
(
    id serial primary key ,
    first_name varchar,
    last_name varchar,
    email varchar,
    date_of_birth date,
    country varchar,
    gender gender
);

create table book
(
    id serial primary key ,
    name varchar,
    country varchar,
    published_year date,
    price numeric,
    genre genre
);

create table language
(
    id serial primary key ,
    language varchar
);

alter table author add constraint author_unique unique (email);
alter table book add column language_id int references language(id);
alter table book add column publisher_id int references publisher(id);
alter table book add column author_id int references author(id);
alter table language alter language set not null;

insert into publisher(name)
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
insert into Author(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp','1968-9-25', 'France', 'Female'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'Female'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-5-16', 'Germany', 'Male'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '1964-4-24', 'United States', 'Male'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-7-3', 'France', 'Male'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'Male'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'Female'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-1-29', 'United States', 'Female'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'Male'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-9-8', 'Germany', 'Male'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-3', 'Russia', 'Female'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-8-28', 'Germany', 'Male'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-3-28', 'Russia', 'Female'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-8-5', 'Spain', 'Male'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'Female');

insert into language(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into book(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values
    ('Taina', 'Russia', '2021-11-12', '568', 'DETECTIVE', '5', '12', '6'),
    ('Zvezdopad', 'Russia', '2004-12-09', '446', 'ROMANS', '5', '13', '11'),
    ('Homo Faber', 'Germany', '2022-04-10', '772', 'FANTASY', '3', '5', '3'),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780', 'DETECTIVE', '3', '3', '10'),
    ('Lord of the Flies', 'United States', '2015-07-11', '900', 'FANTASY', '1', '2', '4'),
    ('Un soir au club', 'France', '2018-01-12', '480', 'DRAMA', '2', '1', '1'),
    ('Voina', 'Russia', '2004-12-06', '880', 'HISTORY', '5', '4', '13'),
    ('Sun Tzu', 'China', '2022-09-05', '349', 'HISTORY', '4', '4', '2'),
    ('Emil und die Detektive', 'Germany', '2010-06-11', '228', 'DETECTIVE', '3', '5', '10'),
    ('Coule la Seine', 'France', '2015-03-01', '732', 'FANTASY', '2', '6', '1'),
    ('Love and hatred', 'Russia', '2012-02-03', '763', 'ROMANS', '5', '14', '13'),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', '309', 'FANTASY', '1', '9', '8'),
    ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'ROMANS', '2', '6', '9'),
    ('“The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814', 'DRAMA', '5', '6', '6'),
    ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'ROMANS', '2', '8', '5'),
    ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'DETECTIVE', '3', '7', '12'),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566', 'DETECTIVE', '3', '3', '3'),
    ('LÉtranger', 'France', '2017-11-14', '422', 'ROMANS', '2', '8', '5'),
    ('Lao Tse', 'China', '2005-07-16', '900', 'FANTASY', '4', '4', '2'),
    ('Semya', 'Russia', '2004-04-12', '194', 'DRAMA', '5', '13', '11'),
    ('Empty World', 'United States', '2008-01-04', '324', 'FANTASY', '1', '11', '15'),
    ('Domainer', 'Germany', '2020-01-06', '420', 'ROMANS', '3', '5', '10'),
    ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'ROMANS', '1', '9', '4'),
    ('Die R über', 'Germany', '2020-06-25', '300', 'ROMANS', '3', '7', '12'),
    ('Jung Chang', 'China', '2021-05-14', '600', 'HISTORY', '4', '10', '7'),
    ('Les Aventures de Tintin', 'France', '2015-04-10', '582', 'DRAMA', '2', '1', '5'),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269', 'DETECTIVE', '3', '5', '10'),
    ('Amy Tan', 'China', '2023-01-09', '486', 'DRAMA', '4', '4', '7'),
    ('Krasnaya luna', 'Russia', '2020-02-07', '550', 'FANTASY', '5', '12', '11'),
    ('Emma', 'United States', '2021-10-11', '599', 'BIOGRAPHY', '1', '2', '15');

-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select name, published_year, genre from book;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct country from author;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from book where published_year between '2020-1-1' and '2023-1-1';
-- 4.Детектив китептер жана алардын аттары чыксын.
select b.genre, b.name from book b where genre = 'DETECTIVE';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name, ' ', last_name) as author from author;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select concat(first_name, ' ', last_name ) as author_full_name ,country from author where Author.country in ('Germany','France') order by country ;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select name, country, published_year, price, genre from book where genre <> 'ROMANS';
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from author where gender = 'Female' limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from author where email like '%.com' and first_name like '____';
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select distinct country, count(id) as count_authors from author group by country;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select count(id),country from author group by country having count(id) = 3 order by country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select distinct genre, sum(price) from book group by genre;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select genre, min(price) from book where genre in ('ROMANS','DETECTIVE') group by genre;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select genre, count(genre) as count_book from book where genre in ('HISTORY','BIOGRAPHY') group by genre;
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select b.name as book_name, p.name as publisher_name, l.language from book b inner join publisher p on b.publisher_id = p.id
                                                                             inner join language l on b.language_id = l.id;
-- 16.Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select a.*, p.* from author a
                         inner join book b on a.id = b.author_id
                         right join publisher p on p.id = b.publisher_id ;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select concat(a.first_name,' ',a.last_name) as author_full_name, b.* from author a
                                                                              left join book b on a.id = b.author_id;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select language, count(b.id) from book b inner join language l on l.id = b.language_id group by language order by count(b.id) desc ;
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.name as publ_name, round(avg(b.price)) from publisher p inner join book b on p.id = b.publisher_id group by p.name;
-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select b.name as book_name, published_year, concat(a.first_name, ' ', a.last_name) as author_full_name
from author a inner join book b on a.id = b.author_id
where b.published_year between '2010--1-1' and '2015-1-1';
-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select concat(a.first_name, ' ', a.last_name) as author_full_name, sum(b.price) as salary_author
from author a inner join book b on a.id = b.author_id
where b.published_year between '2010-1-1' and '2015-1-1'
group by first_name, last_name; __

