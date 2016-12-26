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

#Saving data to access from the R markdown
save(architect, file = "data/architect.Rdata")
save(civil_engineer, file = "data/civil_engineer.Rdata")
save(doctor_general_practice, file = "data/doctor_general_practice.Rdata")
save(economist, file = "data/economist.Rdata")
save(lawyer, file = "data/lawyer.Rdata")
save(street_cleaner, file = "data/street_cleaner.Rdata")

dataset = rbind(architect, civil_engineer, doctor_general_practice, economist, lawyer, street_cleaner)
dataset["norm_avg_salary"] = dataset$avg_salary / dataset$contract_hours
save(dataset, file = "data/dataset.Rdata")