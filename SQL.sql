--����� ����������

select * from articles where art_id=795035
select * from doclist where doc_id=449619 'doc_id = ���. �����
select * from pc where Proj_AID=850925

--������ ����������� ������� �� artid

update top(10) articles set designatio='����.686468.001-46' where art_id=1018253 or art_id=-1018253

--�� �������� ��� ���������

update top(10) doclist set NAME='������' where doc_id=505037 or art_id=-505037

--��������� DOC_ID
select DOC_ID from DOCLIST
where FILENAME='����.745442.603.idw' and DOC_ID>0


--����� �� ���������� ������
select c.DESIGNATIO, a.VER_CODE, a.BIRTHDAY, b.FULLNAME, a.REVDOC_ID from RC a 
join USERS b on (b.USER_ID=a.DESIGNERID) 
join DOCLIST c on (c.DOC_ID=a.REVDOC_ID) 
where a.FILENAME='����.745442.603.idw'
order by cast(a.VER_CODE as int) DESC  --����� ��������� ���� ����������

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
where a.FILENAME='����.123456.123 ���.idw' and b.DOC_ID > 0
order by a.VERSION_ID DESC


--������ �� ���������� �������
select c.DESIGNATIO, a.VER_CODE, a.BIRTHDAY, b.FULLNAME, a.VERSION_ID from RC a 
join USERS b on (b.USER_ID=a.DESIGNERID) 
join DOCLIST c on (c.DOC_ID=a.REVDOC_ID)
where a.DOC_ID=(select top 1 DOC_ID from RC where FILENAME='����.301413.6305 ��.dwg' and DOC_ID>0)
order by a.VERSION_ID DESC

--Like ("_" - ���� ����� ����, "%" - ����� ���-�� ����� ������)
select top 1 DOC_ID from RC where FILENAME like '___�.301413.6305 ��.d%' and DOC_ID>0

--��������� ����� �����
select F_TABKEY, F_CATKEY from CTL000050_F4 where F_TEXT='���� ��-��-��-��-��-2 ���� 19904-90/�270� ���� 16523-97'























