--criando um banco de dados --

create database fevereiro2020
go

--obtendo informações osbre o banco de dados atraves da tabela de sistema

select name,database_id,
compatibility_level as 'nivel de compatibilidade',
recovery_model as 'id-modelo recuperação',
recovery_model_desc as 'modelo de recuperação'

from sys.databases

where name = 'fevereiro2020'
go

---obtendo informações sobre o banco de dados ataraves da função de sistema
use fevereiro2020
go

select DATABASEPROPERTYEX('fevereiro2020','collation') as collation,
DATABASEPROPERTYEX('fevereiro2020','recovery') as 'recovery',
DATABASEPROPERTYEX('fevereiro2020','status') as status,
DATABASEPROPERTYEX('fevereiro2020','version')as version
go

---alterando o status do banco de dados para offline--
--obtentem informações tecnicas sobre a versão do sql server---
xp_msver
go

--obtendo a versão do sql server--
select @@VERSION
go






