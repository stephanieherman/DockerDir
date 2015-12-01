
HelloWorld <-function(name) {

cat("Hello", name)

}

options(echo=TRUE)
args<-commandArgs(trailingOnly=TRUE)
HelloWorld(args)