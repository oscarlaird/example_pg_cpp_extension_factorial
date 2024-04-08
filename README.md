This repo demonstrates how to write a postgres extension in c++.
Install with `make && make install` and then run `CREATE EXTENSION factorial; SELECT factorial.factorial(5);` to see it in action.

To learn more about writing postgres extensions in c++
- [Postgres documentation](https://www.postgresql.org/docs/9.0/extend-cpp.html)
- [Blog post by Abhi-Kmr](https://dev.to/abhikmr2046/how-to-write-postgresql-extensions-in-c-55l3)
- [Blog post by Jobin Augustine](https://web.archive.org/web/20170703160924/https://www.openscg.com/2017/03/c14-and-postgres/)