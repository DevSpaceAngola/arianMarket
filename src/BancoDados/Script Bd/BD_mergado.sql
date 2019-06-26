create database supermercado;

create table fornecedor(
id_fornecedor int primary key,
prim_nome varchar (30),
ulti_nome varchar (30),
bi varchar (30),
tel int (9),
e_mail varchar (30)
);
desc fornecedor;

create table produto(
id_produto int primary key,
nome varchar (30),
categoria int,
d_exp varchar (30)
);
desc produto;
drop table produto;

create table cliente(
id_cliente int primary key,
p_nome varchar (30),
ul_nome varchar (30),
tel int (9),
email varchar (30),
morada varchar (30)
);
desc cliente;
drop table cliente;

create table funcionario(
id_func int primary key,
pri_nome varchar (30),
ult_nome varchar (30),
tel int (9),
morada varchar (30)
);
desc funcionario;

create table fornecer(
d_expiracao varchar (30),
quant int,
forne varchar(30),
prod varchar (30),
foreign key (forne) references fornecedor(id_fornecedor),
foreign key (prod) references fornecedor(id_produto)
);
drop table fornecer;
desc fornecer;