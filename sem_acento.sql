
```sql
CREATE OR REPLACE FUNCTION public.sem_acento(text)
  RETURNS text AS
$BODY$
SELECT translate($1,
'¹²³àáâãäåāăąÀÁÂÃÄÅĀĂĄÆćčç©ĆČÇĐÐèéêёëēĕėęěÈÊËЁĒĔĖĘĚ€ğĞıìíîïìĩīĭÌÍÎÏЇÌĨĪĬłŁńňñŃŇÑòóôõöōŏőøÒÓÔÕÖŌŎŐØŒř®ŘšşșßŠŞȘùúûüũūŭůÙÚÛÜŨŪŬŮýÿÝŸžżźŽŻŹ',
'123aaaaaaaaaAAAAAAAAAAccccCCCDDeeeeeeeeeeEEEEEEEEEEgGiiiiiiiiiIIIIIIIIIlLnnnNNNoooooooooOOOOOOOOOOrrRssssSSSuuuuuuuuUUUUUUUUyyYYzzzZZZ'
);
$BODY$
  LANGUAGE sql IMMUTABLE STRICT
  COST 100;
  
```
