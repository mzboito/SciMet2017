# Opening files
architect = read.csv("data/architect.csv")
civil_engineer = read.csv("data/civil_engineer.csv")
economist = read.csv("data/economist.csv")
lawyer = read.csv("data/lawyer.csv")
street_cleaner = read.csv("data/street_cleaner.csv")
doctor_general_practice = read.csv("data/doctor_general_practice.csv")

#Not a beautiful manner of removing the first useless column from the files
architect$CBO2002 = "architect"
civil_engineer$CBO2002 = "civil_engineer"
economist$CBO2002 = "economist"
lawyer$CBO2002 = "lawyer"
street_cleaner$CBO2002 = "street_cleaner"
doctor_general_practice$CBO2002 = "doctor_gp"

architect["norm_avg_salary"] = architect$avg_salary / architect$contract_hours
civil_engineer["norm_avg_salary"] = civil_engineer$avg_salary / civil_engineer$contract_hours
economist["norm_avg_salary"] = economist$avg_salary / economist$contract_hours
lawyer["norm_avg_salary"] = lawyer$avg_salary / lawyer$contract_hours
street_cleaner["norm_avg_salary"] = street_cleaner$avg_salary / street_cleaner$contract_hours
doctor_general_practice["norm_avg_salary"] = doctor_general_practice$avg_salary / doctor_general_practice$contract_hours



#Saving data to access from the R markdown
save(architect, file = "data/architect.Rdata")
save(civil_engineer, file = "data/civil_engineer.Rdata")
save(doctor_general_practice, file = "data/doctor_general_practice.Rdata")
save(economist, file = "data/economist.Rdata")
save(lawyer, file = "data/lawyer.Rdata")
save(street_cleaner, file = "data/street_cleaner.Rdata")

dataset = rbind(architect, civil_engineer, doctor_general_practice, economist, lawyer, street_cleaner)
save(dataset, file = "data/dataset.Rdata")

avg_street_cleaner = read.csv("data/street_cleaner_avg.csv", header = FALSE)
save(avg_street_cleaner, file = "data/avg_street_cleaner.Rdata")