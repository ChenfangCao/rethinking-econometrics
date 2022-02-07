source("pdf-slides.R")
filepath<-"course-material/slides/"
subpaths<-c("01-intro/01-intro")
f<-paste0(filepath,subpaths)
xaringan_to_pdf(paste(f,".html"),paste(f,".pdf"))
