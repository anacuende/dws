import random;
r = '';
puntos = 0;
op = '';

pregunta = ['p1','p2','p3']

def elegirPregunta(pregunta):
    return random.choice(pregunta)

op = elegirPregunta(pregunta);

if op == 'p1':
    print('Cada cuántos años se celebran las Olimpiadas?');
    print('a) 2');
    print('b) 4');
    print('c) 10');

    r = input('Teclee a/b/c: ')
    if r == "b":
        puntos = puntos + 10;
    else:
        puntos = puntos - 5;

elif op == 'p2':
    print('Cuál de estos animales es un ave?');
    print('a) Perro');
    print('b) Delfín');
    print('c) Ágila');

    r = input('Teclee a/b/c: ')
    if r == "c":
        puntos = puntos + 10;
    else:
        puntos = puntos - 5;

elif op == 'p3':
    print('Cuál NO es un color primario?');
    print('a) Morado');
    print('b) Rojo');
    print('c) Azul');

    r = input('Teclee a/b/c: ')
    if r == "a":
        puntos = puntos + 10;
    else:
        puntos = puntos - 5;

print("Puntos: ");
print(puntos);