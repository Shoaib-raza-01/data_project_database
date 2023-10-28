# SQL Indexes
An index in SQL is a special data structure that improves the performance of database SELECT and WHERE queries by using a pointer. Although they increase these queries but INSERT and UPDATE command may take longer time.

```sql
CREATE INDEX index_name
ON table_name column_name
```

* table_name is the name of the table on which the index is created 

* column_name specifies the columns to be indexed. Multiple columns can be specified by separating them with commas(,)

**Indexes** should be created when a column contains a wide range of values, a column does not contain a large number of null values or one or more columns are frequently used together in a where clause or a join condition.

As it takes longer time in INSERT and UPDATE command so we should avoid usiing INDEXES where we have to insert or update our database frequently.

We can remove an index by using the DROP commmand only if you are the owner of that index of have the privilege of DROP INDEX

```sql
DROP INDEX index_name
```