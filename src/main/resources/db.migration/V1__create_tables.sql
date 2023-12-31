create table person(
    id int generated by default as identity primary key,
    name varchar not null unique,
    year int not null
);

create table book(
    id int generated by default as identity primary key,
    title varchar(60) not null,
    author varchar(45) not null,
    year int not null,
    person_id int,
    foreign key (person_id) references person(id) on DELETE set null
);
