import time
from factorial import func_factorial;
from factorial2 import func_factorial2;

op = '';
n = 0;

print('Menú');
print('a) func_factorial');
print('b) func_factorial2');
p = input('Opción a/b? ');
n = int(input('Teclee número: '));

if op == 'a':
    start_time = time.time()
    print(func_factorial(n))
    end_time = time.time()
    elapsed_time = end_time - start_time
    print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
else:
    start_time = time.time()
    print(func_factorial(n))
    end_time = time.time()
    elapsed_time = end_time - start_time
    print('El tiempo de ejecución ha sido :' + str(elapsed_time) + ' s')
