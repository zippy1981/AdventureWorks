  
CREATE  	PROCEDURE ufnGetAccountingStartDate.[test that correct accounting end date is returned]
AS
BEGIN
    DECLARE @actual DATETIME;
    SELECT @actual = [dbo].ufnGetAccountingStartDate();
 
    DECLARE @expected DATETIME;
    SET @expected = '2003-07-01 00:00:00.000';
    EXEC tSQLt.AssertEquals @expected, @actual;
END;