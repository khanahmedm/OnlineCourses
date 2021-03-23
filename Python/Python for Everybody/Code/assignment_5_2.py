largest = None
smallest = None
while True:
    sval = input('Enter value:')
    if sval == 'done':
        break
    try:
        fval = int(sval)
    except:
        print('Invalid input')
        continue
    if largest is None:
        largest = fval
    if fval > largest:
        largest = fval
    if smallest is None:
        smallest = fval
    if fval < smallest:
        smallest = fval

print ('Maximum is', largest)
print('Minimum is', smallest)
