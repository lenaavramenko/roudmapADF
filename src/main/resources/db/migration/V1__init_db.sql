create table hibernate_sequence (next_val bigint) engine=MyISAM;
insert into hibernate_sequence values ( 1 );

create table tbl_messages (
id integer not null,
filename varchar(255),
tag varchar(255),
text varchar(2048),
user_id integer,
primary key (id)
) engine=MyISAM;

create table user_role (
user_id integer not null,
roles varchar(255)
) engine=MyISAM;

create table tbl_user (
id integer not null AUTO_INCREMENT,
activation_code varchar(255),
active bit not null,
email varchar(255),
password varchar(255) not null,
username varchar(255) not null,
primary key (id)
) engine=MyISAM;

alter table tbl_messages add constraint message_user_fk foreign key (user_id) references tbl_user(id);
alter table user_role add constraint user_role_fk foreign key (user_id) references tbl_user(id);
