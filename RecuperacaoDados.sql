--criando um banco de dados --

create database fevereiro2020
go

--obtendo informa��es osbre o banco de dados atraves da tabela de sistema

select name,database_id,
compatibility_level as 'nivel de compatibilidade',
recovery_model as 'id-modelo recupera��o',
recovery_model_desc as 'modelo de recupera��o'

from sys.databases

where name = 'fevereiro2020'
go

---obtendo informa��es sobre o banco de dados ataraves da fun��o de sistema
use fevereiro2020
go

select DATABASEPROPERTYEX('fevereiro2020','collation') as collation,
DATABASEPROPERTYEX('fevereiro2020','recovery') as 'recovery',
DATABASEPROPERTYEX('fevereiro2020','status') as status,
DATABASEPROPERTYEX('fevereiro2020','version')as version
go

---alterando o status do banco de dados para offline--
--obtentem informa��es tecnicas sobre a vers�o do sql server---
xp_msver
go

--obtendo a vers�o do sql server--
select @@VERSION
go






