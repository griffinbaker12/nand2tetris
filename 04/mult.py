def mult(a, b):
    i, fv, addBy = 1, 0, a

    while i < b:
        fv += addBy
        i += 1

    return fv


print(mult(2, 5))
