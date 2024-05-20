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
 [Всего] = COUNT(*),
 [Всего топонимов-феминитивов] = COUNT (DISTINCT [Name_female])
FROM
 [Names]
 Go

/*WHERE - поиск словоформ*/
 SELECT 
[Name_female]
 FROM
[Names]
WHERE
[Name_female] LIKE '%ка,%' 
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
 WHERE [Type]='город'
 ORDER BY
 [Name_male]
 Go

 /*CASE*/
SELECT *,
[Категория] = 
CASE
 WHEN [Type]='город' THEN '1'
 ELSE '2'
END
FROM
 [Point]
 Go

/* BETWEEN - а-в */
SELECT [Name_male]
FROM [Names]
WHERE ([Name_male] BETWEEN 'а' AND 'в')
GO

/* CROSS JOIN*/
SELECT  *
FROM [Names]
CROSS JOIN [Point]
GO

/* UNION - количество м и ж */
SELECT [Количество м] = COUNT (*)
FROM [Names]
WHERE ([Name_male] LIKE '%ич,%')
OR
([Name_male] LIKE '%ец,%')
UNION
SELECT [Количество ж] = COUNT (*)
FROM [Names]
WHERE ([Name_female] LIKE '%ка,%')
GO
