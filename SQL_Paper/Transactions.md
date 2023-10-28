# Transactions in SQL
Transactions are a crucial part of database management. They allow you to ensure the integrity and consistency of your data.
Transactions group a set of tasks into a single execution unit. Each transaction begins with a specific job and ends when all the tasks in the group successfully completed. If any of the tasks fail, the transaction fails(All or nothing rule). Therefore, a transaction has only two results: success or failure.

We have four commands in transaction
1. BEGIN TRANSACTION / BEGIN TRANSACTION
2. COMMIT
3. ROLLBACK
4. SAVE POINT

### BEGIN TRANSACTION / BEGIN TRANSACTION
This command is used to start a new workload or set of transactions against the database. This command is used to specify characteristics for the transaction that follows. All the changes are temporary and can be `rolled` back if any error is encountered

### COMMIT
The commit statement is used to save the changes made by a series of transactions and end the current transaction block. If no error has occurred, all changes can be seen in the database.

```sql
DELETE FROM CUSTOMERS WHERE AGE = 25;
COMMIT;
```

### ROLLBACK
The ROLLBACK command is the transactional command used to undo transactions that have not already been saved to the database. This command can only undo transactions since the last COMMIT or ROLLBACK.

```sql
DELETE FROM CUSTOMERS WHERE AGE = 25;
ROLLBACK;
```

### SAVE POINT
A SAVEPOINT is a logical rollback point in a transaction. Usually, when we execute the ROLLBACK command, it undoes the changes until the last COMMIT. But, if we create save points, we can partially roll the transaction back to these points. We can create multiple save points between two commits.

```sql
-- creating savepoint
SAVEPOINT savepoint_name;
```

```sql
-- rolling back to a specific point using the name of the savepoint
ROLLBACK TO savepoint_name;
```

You can use the `RELEASE` statement to release a savepoint, but you cannot roll back to it after releasing it.

```sql
-- deleting the savepoint
RELEASE SAVEPOINT SAVEPOINT_NAME;
```