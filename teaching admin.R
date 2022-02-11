library(rio)
library(googledrive)
library(usethis)
# install.packages("remotes")
#remotes::install_github("rundel/ghclass")
library(ghclass)
#drive_find("github")
#install_formats()
#setwd("~/Dropbox/Teaching")
drive_download("github student information",overwrite = TRUE)

# list.files()
# import('FIN7028 emails.xls')->ids
students_info<-import("github student information.xlsx")
students<-students_info$`Github Username`[!is.na(students_info$`Github Username`)]
org_admins(org = "Time-series-financial-econometrics")
org_repos(org = "Time-series-financial-econometrics")
org_members(org = "Time-series-financial-econometrics")

org_invite(org = "Time-series-financial-econometrics",user = students)

gh::gh_whoami()
# usethis::browse_github()
# usethis::create_github_token()
credentials::set_github_pat()
