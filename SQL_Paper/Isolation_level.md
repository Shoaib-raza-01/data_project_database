# Isolation Level in SQL

Let's cpnsider the example of an e-commerce app whare many customer may order the same product at the same time, price variation may happen, product delivery happens simultaneously, so to maintain the consistency in our database we need to add some logic and here isolations plays the imortant role.

Isolation level is a property of database transactions that determines the degree to which concurrent sessions can execute commands without interfering with each other.

### Phenomenas defining the Isolation Level

- **Dirty Read**

     A dirty read is when a transaction reads data that has been modified by uncommitted transactions.

- **Non-Repeatable reads and Read Skew**

    A transaction re-reads data it has previously read and finds that data has been modified by another transaction. Non-repeatable reads occur when two concurrent sessions are working with the same set of rows, one session updates a row while another session is reading

- **Phantom Reads**

    A transaction re-executes a query returning a set of rows that satisfy a search condition and finds that the set of rows satisfying the condition has changed due to another recently-committed transaction.

- **Write Skew**

    Two concurrent transactions each determine what they are writing based on reading a data set that overlaps what the other is writing.

### Based on these phenomenas we have defined Isolation Levels

1. **Read Uncommitted (RU)**

    Read Uncommitted is the lowest isolation level. At this level, makes sure no transaction can update a database row if another transaction has already updated it and not committed. This protects against lost updates, but won’t stand in a way of dirty reads

2. **Read Commited**

    This isolation level does not allow any other transaction to write or read a row to which another transaction has written to but not yet committed. Thus it does not allows dirty read. The transaction holds a read or write lock on the current row, and thus prevents other transactions from reading, updating, or deleting it.

3. **Repeatable Reads**

    This is the most restrictive isolation level that holds read locks on all rows it references and writes locks on all rows it inserts, updates, or deletes. This isolation level makes sure any transaction that reads data from a row blocks any other writing transactions from accessing the same row.

4. **Serializable**

    This isolation level is the highest isolation level. serializable isolation level requires a lot more than restricting access to a single row. Typically this isolation mode would lock the whole table, to prevent any other transactions from inserting or reading data from it.

**Snapshot Isolation**
    
This isolation level can greatly increase concurrency at a lower cost than transactional isolation. When data is modified, the committed versions of affected rows are copied to temp and given version numbers. This operation is called copy on write and is used for all inserts, updates, and deletes using this technique. When another session reads the same data, the committed version of the data as of the time the reading transaction began is returned.