--Поиск

select * from articles where art_id=795035
select * from doclist where doc_id=449619 'doc_id = Инв. номер
select * from pc where Proj_AID=850925

--Замена обозначния по artid

update top(10) articles set designatio='ЖКЕБ.686468.001-46' where art_id=1018253 or art_id=-1018253

--По аналогии имя документа

update top(10) doclist set NAME='ТЕСТБЧ' where doc_id=505037 or art_id=-505037

--Получение DOC_ID
select DOC_ID from DOCLIST
where FILENAME='ЖКЕБ.745442.603.idw' and DOC_ID>0


--Join
select c.DESIGNATIO, a.VER_CODE, a.BIRTHDAY, b.FULLNAME, a.REVDOC_ID from RC a 
join USERS b on (b.USER_ID=a.DESIGNERID) 
join DOCLIST c on (c.DOC_ID=a.REVDOC_ID) 
where a.FILENAME='ÆÊÅÁ.745442.603.idw'
order by cast(a.VER_CODE as int) DESC  --здесь изменение типа переменной

select c.DESIGNATIO, a.VER_CODE, a.BIRTHDAY, b.FULLNAME, a.REVDOC_ID, a.VERSION_ID from RC a
join USERS b on (b.USER_ID=a.DESIGNERID)
join DOCLIST c on (c.DOC_ID=a.REVDOC_ID)
where a.DOC_ID=196422
order by a.VERSION_ID DESC

select count (VER_CODE) from RC
where DOC_ID=196422

select * from DOCLIST where DOC_ID=503116

select a.VERSION_ID, b.DOC_ID from RC a
join DOCLIST b on (b.FILENAME=a.FILENAME)
where a.FILENAME='ТЕСТ.123456.123 ЭСБ.idw' and b.DOC_ID > 0
order by a.VERSION_ID DESC


--Запрос по результату запроса
select c.DESIGNATIO, a.VER_CODE, a.BIRTHDAY, b.FULLNAME, a.VERSION_ID from RC a 
join USERS b on (b.USER_ID=a.DESIGNERID) 
join DOCLIST c on (c.DOC_ID=a.REVDOC_ID)
where a.DOC_ID=(select top 1 DOC_ID from RC where FILENAME='ЖКЕБ.301413.6305 СБ.dwg' and DOC_ID>0)
order by a.VERSION_ID DESC

--Like ("_" - один любой знак, "%" - любое кол-во любых знаков)
select top 1 DOC_ID from RC where FILENAME like '___Б.301413.6305 СБ.d%' and DOC_ID>0

--Получение части ключа
select F_TABKEY, F_CATKEY from CTL000050_F4 where F_TEXT='Лист БТ-БШ-БД-ПН-НО-2 ГОСТ 19904-90/К270В ГОСТ 16523-97'























