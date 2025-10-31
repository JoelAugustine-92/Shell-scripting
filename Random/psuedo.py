import random
otp = ""
for i in range(6):
    otp=otp+str(random.randint(100,999))
print("the otp is: ",otp)
