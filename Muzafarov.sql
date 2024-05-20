/*SELECT*/
SELECT
 [Type], [Point_name], [ID_point], [Oblast]
FROM
 [Point]
 Go
 
 SELECT 
*
 FROM
 [Names]
 Go


/*ORDER BY*/
SELECT
 [Type], [Point_name], [ID_point], [Oblast]
FROM
 [Point]
ORDER BY
 [Point_name]
 Go

/*COUNT*/
 SELECT
 [�����] = COUNT(*),
 [����� ���������-�����������] = COUNT (DISTINCT [Name_female])
FROM
 [Names]
 Go

/*WHERE - ����� ���������*/
 SELECT 
[Name_female]
 FROM
[Names]
WHERE
[Name_female] LIKE '%��,%' 
Go

/*TOP*/
SELECT TOP 10
  [Name_male]
FROM
  [Names]
ORDER BY
  [Name_male] 
GO

 /*SELECT DISTINCT*/
SELECT DISTINCT
 [Oblast]
FROM
 [Point]
Go

 /*JOIN*/
 SELECT*
 FROM
 [Point]
 JOIN 
 [Names] ON Names.ID_point=Point.ID_point
 WHERE [Type]='�����'
 ORDER BY
 [Name_male]
 Go

 /*CASE*/
SELECT *,
[���������] = 
CASE
 WHEN [Type]='�����' THEN '1'
 ELSE '2'
END
FROM
 [Point]
 Go

/* BETWEEN - �-� */
SELECT [Name_male]
FROM [Names]
WHERE ([Name_male] BETWEEN '�' AND '�')
GO

/* CROSS JOIN*/
SELECT  *
FROM [Names]
CROSS JOIN [Point]
GO

/* UNION - ���������� � � � */
SELECT [���������� �] = COUNT (*)
FROM [Names]
WHERE ([Name_male] LIKE '%��,%')
OR
([Name_male] LIKE '%��,%')
UNION
SELECT [���������� �] = COUNT (*)
FROM [Names]
WHERE ([Name_female] LIKE '%��,%')
GO
