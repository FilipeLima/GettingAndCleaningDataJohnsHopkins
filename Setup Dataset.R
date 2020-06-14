if(!file.exists("./data")){
  dir.create(("./data"))
}

if(!file.exists("./output")){
  dir.create(("./output"))
}


fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

download.file(fileURL,destfile = "./data/dataset.zip")

unzip("./data/dataset.zip",exdir="./data")

file.rename("./data/UCI HAR Dataset","./data/dataset")


