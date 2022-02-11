library(rio)
library(googledrive)
# install.packages("remotes")
#remotes::install_github("rundel/ghclass")
library(ghclass)
#drive_find("github")
#install_formats()
setwd("~/Dropbox/Teaching")
drive_download("github student information",overwrite = TRUE)

# list.files()
# import('FIN7028 emails.xls')->ids
students_info<-import("github student information.xlsx")
students<-students_info$`Github Username`[!is.na(students_info$`Github Username`)]
org_invite(org = "Time-series-financial-econometrics",
           user = students)
students
