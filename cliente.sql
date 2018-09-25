CREATE table cliente
(
  id serial,
  nome character varying,
  sexo character(1),
  data_nascimento date,
  cpf character varying,
  cep character varying,
  complemento character varying,
  numero character varying
);


insert into cliente (nome, sexo, data_nascimento, cpf, cep, complemento, numero) values ('Jose das Couves', 'M', '1987-09-23', '123.123.123-12', '74280150', 'Ap 902 Cond Teste', 'SN');
insert into cliente (nome, sexo, data_nascimento, cpf, cep, complemento, numero) values ('Maria das Alfaces', 'F', '1987-10-23', '000.123.123-12', '74255430', 'Qd 01 Lt 02', 'SN');
insert into cliente (nome, sexo, data_nascimento, cpf, cep, complemento, numero) values ('Toinha dos Brocolis', 'F', '1985-09-23', '000.000.123-12', '74210126', 'Qd 02 Lt 02', 'SN');
insert into cliente (nome, sexo, data_nascimento, cpf, cep, complemento, numero) values ('Agro Toxico', 'M', '1987-10-20', '000.000.000-12', '74180150', 'Qd 05 Lt 03', 'SN');
