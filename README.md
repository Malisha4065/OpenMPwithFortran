# OpenMPwithFortran

This project demonstrates the use of OpenMP with Fortran to parallelize code execution. 

## Files

- **f1_hello.f90**: A simple program that demonstrates the use of OpenMP to print a message from multiple threads. Each thread prints its own thread ID.
- **f2_criticalregion.f90**: A program that demonstrates the use of OpenMP to perform parallel computation with a critical region to ensure correct summation.

## Compilation and Execution

To compile the Fortran programs with OpenMP support, use the following commands: (Using gfortran compiler)

```sh
gfortran -fopenmp -o helloopenmp f1_hello.f90

./helloopenmp
```
