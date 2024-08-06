def multiply(R0, R1):
    if R0 == 0 or R1 == 0:
        return 0

    i = 1
    fv = 0
    addBy = R0
    checkBy = R1

    while True:
        if i > checkBy:
            break
        fv += addBy
        i += 1

    return fv


R0 = 0
R1 = 3
result = multiply(R0, R1)
print(f"The result of {R0} * {R1} is: {result}")
