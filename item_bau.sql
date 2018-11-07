--Executar estas instruções abaixo


CREATE TABLE public.item_bau (
    id serial NOT NULL,
    item_id integer,
    bau_id integer,
    quantidade integer
);



INSERT INTO public.item_bau (id, item_id, bau_id, quantidade) VALUES (1, 1, 1, 3);
INSERT INTO public.item_bau (id, item_id, bau_id, quantidade) VALUES (2, 3, 1, 5);
INSERT INTO public.item_bau (id, item_id, bau_id, quantidade) VALUES (3, 4, 1, 30);
INSERT INTO public.item_bau (id, item_id, bau_id, quantidade) VALUES (4, 2, 2, 5);
INSERT INTO public.item_bau (id, item_id, bau_id, quantidade) VALUES (5, 1, 2, 1);



SELECT pg_catalog.setval('public.item_bau_id_seq', 5, true);




ALTER TABLE ONLY public.item_bau
    ADD CONSTRAINT item_bau_pkey PRIMARY KEY (id);

	
--Testar os seguintes comandos
-- max, min, sum, avg, count
-- group by
-- having
-- order by

-- Referências: https://www.postgresql.org/docs/9.4/tutorial-agg.html

-- SQL com Sub Select
select * from item_bau where quantidade = (select max(quantidade) from item_bau)
