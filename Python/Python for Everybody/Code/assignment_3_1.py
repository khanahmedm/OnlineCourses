hrs = input("Enter Hours:")
h = float(hrs)
rate = input("Enter Rate:")
r = float(rate)
# regular pay
if h >= 40:
    pay = 40 * r
else:
    pay = h * r
# overtime pay
if h > 40:
    overtime_pay = (h-40)*(r*1.5)

total_pay = pay + overtime_pay
print(total_pay)
