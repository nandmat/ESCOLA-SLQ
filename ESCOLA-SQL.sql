create database escola;
use escola;

create table cliente (
idcliente int not null,
nome varchar(90) not null,
datanascimento date not null,
cpf varchar(12) not null,
email varchar(50) not null,
telefone varchar(14) null,
primary key (idcliente)
);

create table curso (
idcurso int not null,
nome varchar(90) not null,
cargahoraria int not null,
descricao varchar(120) not null,

primary key (idcurso)
);

create table inscricao (
idcurso int not null,
idcliente int not null,
datainscricao date not null,
datacancelamento date null,

primary key (idcurso, idcliente),
foreign key (idcliente) references cliente (idcliente),
foreign key (idcurso) references curso (idcurso)
);