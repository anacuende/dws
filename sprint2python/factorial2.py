def func_factorial2(n): 
    if n == 0 or n == 1: 
        return 1
    else: 
        factorial = 1
        while(n > 1): 
            factorial = factorial * n 
            n = n - 1
        return factorial