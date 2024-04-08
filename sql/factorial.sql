-- factorial_extension--1.0.sql

-- Create the extension schema
CREATE SCHEMA factorial;

-- Create the SQL function
CREATE OR REPLACE FUNCTION factorial.factorial(integer)
RETURNS bigint AS 'factorial', 'factorial'
LANGUAGE C STRICT;

-- Grant execute permission to public (change to appropriate roles if needed)
GRANT EXECUTE ON FUNCTION factorial.factorial(integer) TO PUBLIC;