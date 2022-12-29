create table post(
num int auto_increment primary key,
title varchar(100) not null,
nickname varchar(100) not null,
content text,
regdate datetime default now(),
view_count int default 0);

create table user(
id varchar(100) not null primary key,
password varchar(100) not null,
nickname varchar(100) not null,
regdate datetime default current_timestamp);