
-- Cria a chave primária
ALTER TABLE public.cliente  ADD CONSTRAINT cliente_pk PRIMARY KEY(cpf);

-- Cria a chave estrangeira
ALTER TABLE public.cliente ADD CONSTRAINT cliente_cep_fk FOREIGN KEY (cep) REFERENCES public.cep (cep) MATCH SIMPLE ON UPDATE NO ACTION ON DELETE NO ACTION;

-- Testa a chave primária
insert into cliente (nome, sexo, cpf) values ('teste', 'F', '123.123.123-12');

-- Testa a chave estrangeira
delete from cep where cep = '74210126'


