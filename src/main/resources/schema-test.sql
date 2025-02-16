drop table if exists task_domain CASCADE; 
drop table if exists to_do_domain CASCADE ;
create table task_domain (id bigint generated by default as identity, description varchar(255), my_to_do_id bigint, primary key (id));
create table to_do_domain (id bigint generated by default as identity, title varchar(255), primary key (id));
alter table task_domain add constraint FK5ammw8prvjcq1mn8ucwq6guw5 foreign key (my_to_do_id) references to_do_domain on delete cascade;