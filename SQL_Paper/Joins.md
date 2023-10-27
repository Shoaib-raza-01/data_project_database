# JOINS in SQL

SQL Join statement is used to combine data or rows from two or more tables based on a common field between them.

**TYPES**
- **INNER JOIN**

    * The INNER JOIN keyword selects all rows from both the tables where condition is satisfied.

    ```sql
    SELECT Column_name
    FROM Tab1
    INNER JOIN Tab2 
    ON Tab1.matching_col = Tab2.matching_col
    WHERE Your_condition;
    ```

- **LEFT JOIN**

    - The LEFT JOIN keyword returns all records from the left table and the matched records from the right table. If there are no matches on the right side, the result will be null.
    ```sql
    SELECT Column_name
    FROM Tab1
    LEFT JOIN Tab2 
    ON Tab1.matching_col = Tab2.matching_col
    WHERE Your_condition;
    ```

- **RIGHT JOIN**
    * The LEFT JOIN keyword returns all records from the right table and the matched records from the left table. If there are no matches on the left side, the result will be null.
    ```sql
    SELECT Column_name
    FROM Tab1
    RIGHT JOIN Tab2 
    ON Tab1.matching_col = Tab2.matching_col
    WHERE Your_condition;
    ```
- **FULL JOIN**

    * FULL JOIN creates the result-set by combining results of both LEFT JOIN and RIGHT JOIN. The result-set will contain all the rows from both tables. For the rows for which there is no matching, the result-set will contain NULL values.

    ```sql
    SELECT Student.NAME,StudentCourse.COURSE_ID 
    FROM Student
    FULL JOIN StudentCourse 
    ON StudentCourse.ROLL_NO = Student.ROLL_NO;
    ```
