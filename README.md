This repo demonstrates how to write a postgres extension in c++.
Install with `make && make install` and then run `CREATE EXTENSION factorial; SELECT factorial.factorial(5);` to see it in action.