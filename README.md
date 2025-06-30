

#### Overview

This section demonstrates how to use SQL `JOIN` operations to combine data across related tables.

#### Goal

To understand the differences between types of joins and how they affect query results when data is matched (or unmatched) across tables.

#### Tables Involved:

* `employee`
* `client`
* `works_with`

#### Join Types Demonstrated

| Join Type         | Description                                                                   |
| ----------------- | ----------------------------------------------------------------------------- |
| `INNER JOIN`      | Retrieves records with matching values in both tables.                        |
| `LEFT JOIN`       | Retrieves all records from the left table and matched records from the right. |
| `RIGHT JOIN`      | Retrieves all records from the right table and matched records from the left. |
| `FULL OUTER JOIN` | Combines results of both `LEFT` and `RIGHT JOIN`, showing all records.        |

