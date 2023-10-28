# NORMALIZATION

Normalization is used to minimize the redundancy from a relation or set of relations. It is used to eliminate undesirable characteristics like Insertion, Update, and Deletion Anomalies.

Normalization is basically dividing our existing table into smaller tables and linking then using relations.

## Layers of normalization

Mainly we have 5 layes in normalization and oen extra layer known as BCNF(Boyce Codd's Normal form) which is the extended version of 3NF.

![Normalization levels](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn3uerv3kvWkyLjRx23bH-8b3GQk0uTwax5meKKTlbOvZr1t3r1FDq8iAfrFT6Gh3O5kU&usqp=CAU)


* **1NF**
    - A relation is in 1NF if it contains an atomic value.
* **2NF**
    - A relation will be in 2NF if it is in 1NF and all non-key attributes are fully functional dependent on the primary key.
* **3NF**
    - A relation will be in 3NF if it is in 2NF and no transition dependency exists.
* **BCNF**
    - A stronger definition of 3NF is known as Boyce Codd's normal form.
* **4NF**
    - A relation will be in 4NF if it is in Boyce Codd's normal form and has no multi-valued dependency.
* **5NF**
    - A relation is in 5NF. If it is in 4NF and does not contain any join dependency, joining should be lossless.