drop table if exists user;

create table user (
    id int auto_increment primary key,
    username varchar(250) not null,
    password varchar(250) not null
)