# Locks in SQL
* A lock is a mechanism that prevents concurrent access to data by multiple users. It ensures the integrity of data and consistency between transactions. SQL Server is a relational database, data consistency is an important mechanism, and it can be done by means of SQL Locks. A lock is established in SQL Server when a transaction starts, and it is released when it is ended.

There are different types of locks are there.

* **Shared (S) Locks:** 

    * When the object needs to be read, this type of lock will occur, but this is not harmful.

* **Exclusive (X) Locks:**
    * It prevents other transactions like inserting/updating/deleting etc., Hence no modifications can be done on a locked object.

* **Update (U) Locks:** 
    * More or less similar to Exclusive lock but here the operation can be viewed as “read phase” and “write phase”. Especially during the read phase, other transactions are prevented. 

* **Intent Locks:** 
    * When SQL Server has the shared (S) lock or exclusive (X) lock on a row, then the intent lock is on the table.

* **Regular intent locks:** 
    * Intent exclusive (IX) , Intent shared (IS), and Intent update (IU).
    
* **Conversion locks :**
    * Shared with intent exclusive (SIX), Shared with intent update (SIU), and Update with intent exclusive (UIX).
