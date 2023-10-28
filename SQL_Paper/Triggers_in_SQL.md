# Triggers in SQL
Triggers are special stored procedures that automatically run when a specified event occurs. Each trigger is associated with a table and they can be used to enforce business rules or maintain the integrity.

* We cannot invoke any trigger
* No transaction can be commited or rolled back inside a trigger

```sql
    CREATE TABLE Employee_Audit_Test  
    (    
    Id int IDENTITY,   
    Audit_Action text   
    )  
```
First we will create the table where we will store the triggered data from other table.

```sql
    CREATE TRIGGER tr_Insert_Employee   
    ON Employee  
    FOR INSERT  
    AS  
    BEGIN  
      Declare @Id int  
      SELECT @Id = Id from inserted  
      INSERT INTO Employee_Audit_Test  
      VALUES ('New employee with Id = ' + CAST(@Id AS VARCHAR(10)) + ' is added at ' + CAST(Getdate() AS VARCHAR(22)))  
    END  
```
This is an example of a trigger which will add the details (ID and the time of insertion of that employee) into another table named as Employee_Audit_Test 