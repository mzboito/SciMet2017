import sys
import numpy as np

sumW = 0
sumM = 0
men = 0
women = 0
with open(sys.argv[1],'r') as inputFile:
	for line in inputFile:
		if line != "CBO2002,Scholarity,contract_hours,age,avg_salary,min_salary,gender,employment_time\n":
			atts = line.split(",")
			ln_norm_salary = np.log( float(atts[4]) / float(atts[2]) )

			if atts[6] == "1":
				sumM += ln_norm_salary
				men += 1
			else:
				sumW += ln_norm_salary
				women +=1

print "women", "men"
print sumW/women, sumM/men
print "difference:"
print sumM/men - sumW/women
		
