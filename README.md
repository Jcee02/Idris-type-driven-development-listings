# Code listings from my copy of: Type Driven Development with Idris

My own contribution/version of TDD w/ Idris, as well as tiny sized projects aimed for Scheme / Racket code generation

- C code generation remains a mystery 

Idris code can bootstrap to Chez Scheme, yet Idris2 compiler is implemented in Idris2.


Default exec file is a shell script executable, can be found in <build/exec/name>

ex:
```console
foo@bar:~$ idris2 name.idr -o name
cd build/exec && ./name
```
