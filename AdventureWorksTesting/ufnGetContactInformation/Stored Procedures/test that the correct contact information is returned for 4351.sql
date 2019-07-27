  
CREATE  	PROCEDURE ufnGetContactInformation.[test that the correct contact information is returned for 4351]
AS
BEGIN
	SELECT * into #actual FROM dbo.ufnGetContactInformation (4351)
-- SELECT * FROM #actual a	 
	SELECT TOP 0 * into #expected FROM #actual a
	INSERT INTO #expected (PersonID, firstname, lastname, jobTitle, BusinessEntityType)
	values(4351, 'Melvin','She',NULL,'Consumer')
		
	EXEC tSQLt.AssertEqualsTable #expected, #actual;
END;