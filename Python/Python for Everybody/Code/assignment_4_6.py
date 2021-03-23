def computepay(hours, rate):
    # overtime pay
    if h > 40:
        reg_pay = 40 * r
        overtime_pay = (h-40)*(r*1.5)
        total_pay = reg_pay + overtime_pay
        return total_pay
    # regular pay
    else: #h <= 40:
        total_pay = h * r
        return total_pay

hrs = input("Enter Hours:")
h = float(hrs)
rate = input("Enter Rate:")
r = float(rate)
t_pay = computepay(h,r)

print(t_pay)
