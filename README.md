# Tcl == Operator Pitfalls
This repository demonstrates a common pitfall in Tcl programming concerning the use of the `==` operator for numeric comparisons.  Tcl's `==` operator performs string comparison rather than numeric comparison, leading to unexpected results when comparing numbers with different representations (e.g., integer vs. floating point, string representation of a number). 

## Bug Description
The `bug.tcl` file contains a procedure, `buggyProc`, that uses `==` to compare two arguments. The intention is to check for numerical equality.  However, due to Tcl's string comparison, the results are inconsistent:

- Comparing 1 and 1 (integers) works correctly.
- Comparing 1.0 (floating-point) and 1 (integer) fails unexpectedly. 
- Comparing 1 (integer) and "1" (string) also fails unexpectedly.

## Solution
The `bugSolution.tcl` file shows a corrected implementation using the `expr` command for proper numeric comparison.