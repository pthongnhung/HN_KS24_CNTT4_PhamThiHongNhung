drop database if exists ExamPractice;
create database ExamPractice;
use ExamPractice;

create table Reader (
	reader_id int auto_increment primary key,
    reader_name varchar(100) not null,
    phone varchar(15) unique,
    register_date date default (current_date)
);

create table Book(
	book_id int primary key,
    book_tile varchar(150) not null,
    author varchar(100),
    publish_year int check(publish_year>=1900)
);

create table Borrow(
	reader_id int,
    book_id int,
    borrow_date date default(current_date),
    return_date date,
    primary key(reader_id,book_id),
    foreign key (reader_id) references Reader(reader_id),
	foreign key (book_id) references Book(book_id)
);

