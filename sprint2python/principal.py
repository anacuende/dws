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
    print(func_factorial(n));
else:
    print(func_factorial2(n));