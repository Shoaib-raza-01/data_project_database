# ACID 

ACID is a concept in SQL used to maintain consistency in a database, before and after the transaction. ACID stands for Atomicity, Consistency, Isolation, Durability.

**Atomicity  -**  It state that the whole transaction will happen at once or it will not happen at all(All or nothing rule)

**Consistency  -** The database must remain consistent before and after the transaction happns.

**Isolation  -** Multiple transactions happen independently without interference. This property ensures that multiple transactions can occur concurrently without leading to the inconsistency of the database state.

**Durability  -** The changes of successfull transaction occures even if a system failure happens.