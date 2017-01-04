import sys
import numpy as np

salary = dict(zip([],[]))
for x in range(1,12):
	salary[str(x)] = 0.0
count = 0


with open(sys.argv[1],'r') as inputFile:
	for line in inputFile:
		if line != "CBO2002,Scholarity,contract_hours,age,avg_salary,min_salary,gender,employment_time\n":
			atts = line.split(",")
			ln_norm_salary = np.log( float(atts[4]) / float(atts[2]) )
			salary[atts[1]] += ln_norm_salary
			count +=1


with open(sys.argv[2],'w') as outputFile:
	for x in range(1,12):
		salary[str(x)] = salary[str(x)]/count
		outputFile.write(str(x) +","+ str(salary[str(x)]) +"\n")
