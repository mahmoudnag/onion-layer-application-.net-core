CREATE VIEW GetTasks
AS
     SELECT *
           
     FROM Tasks
        
GO

CREATE PROCEDURE seelctalltasks (@id int)
AS
SELECT * FROM Tasks WHERE ID = @id
GO;
Exec seelctalltasks @id=1
GO;
CREATE FUNCTION Gettaskall()    
 
    RETURNS  table 
	As
	return (select *from tasks );
   
 go
   select *from Gettaskall()