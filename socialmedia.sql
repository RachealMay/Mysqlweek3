Create database if not exists socialmedia;

use socialmedia;

drop table if exists comments;
drop table if exists posts;
drop table if exists users;

create table users (
	User_ID int(10) not null auto_increment,
	Username varchar(25) not null,
	Password varchar(25) not null,
	Email varchar(50) not null,
	First_Name varchar(25) not null,
	Last_Name varchar(25) not null, 
	City varchar(50) not null,
	State char(2) not null,
	primary key(User_ID)
);

create table posts (
	Post_ID int(10) not null auto_increment,
	User_ID int(10) not null,
	Post text(700) not null,
	Post_time datetime default current_timestamp,
	primary key (Post_ID),
	foreign key (User_ID) references users (User_ID)
);

Create table comments (
	Comment_ID int(10) not null auto_increment,
	Post_ID int(10) not null,
	User_ID int(10) not null,
	Comment text (500) not null,
	Comment_time datetime default current_timestamp,
	primary key (Comment_ID),
	foreign key (Post_ID) references posts (Post_ID),
	foreign key (User_ID) references users (User_ID)
);	
