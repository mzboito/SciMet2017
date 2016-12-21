# Opening files
architect = read.csv("data/architect.csv")
civil_engineer = read.csv("data/civil_engineer.csv")
economist = read.csv("economist.csv")
lawyer = read.csv("lawyer.csv")
street_cleaner = read.csv("street_cleaner.csv")
doctor_general_practice = read.csv("doctor_general_practice.csv")

#Not a beautiful manner of removing the first useless column from the files
architect$CBO2002 = NULL
civil_engineer$CBO2002 = NULL
economist$CBO2002 = NULL
lawyer$CBO2002 = NULL
street_cleaner$CBO2002 = NULL
doctor_general_practice$CBO2002 = NULL

#Saving data to access from the R markdown
save(name, file = "name.Rdata")
