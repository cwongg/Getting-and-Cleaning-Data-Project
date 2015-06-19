library(data.table)
library(reshape2)
library(dplyr)

# Read training data

xtrain <- read.table("R/Cleaning/X_train.txt")
ytrain <- read.table("R/Cleaning/y_train.txt")
strain <- read.table("R/Cleaning/subject_train.txt")


# Read test data

xtest <- read.table("R/Cleaning/X_test.txt")
ytest <- read.table("R/Cleaning/y_test.txt")
stest <- read.table("R/Cleaning/subject_test.txt")

# Combine Subjects, training labels and training set

train_data <- cbind(strain, ytrain, xtrain)
test_data <- cbind(stest, ytest, xtest)

data <- rbind(train_data, test_data)


names <- read.table("R/Cleaning/features.txt")

colnames(data) <- c("Subject", "Test Label", as.vector(names$V2))

# Add the activity labels, by merging activity_labels with the data set 

activity_labels <- read.table("R/Cleaning/activity_labels.txt")
colnames(activity_labels) <- c("Test Label", "Activity")

merged_data <- merge(data, activity_labels, by.x="Test Label", by.y="Test Label")

# Filters the Standard Deviation and Mean columns

namesdt <- as.data.table(names)
namessm <- namesdt[V2 %like% "mean()" | V2 %like% "std()"]
namessm2 <- as.vector(namessm$V2)
namessm2 <- c("Activity", "Test Label", "Subject", namessm2)

required_data <- merged_data[, colnames(merged_data) %in% namessm2]

namessm2 <- as.vector(namessm$V2)
melted_data <- melt(required_data, id=c("Activity", "Test Label", "Subject"), measure.vars = namessm2)
colnames(melted_data) <- c("Activity", "Test Label", "Subject", "Variable", "Value")

summary_data <- melted_data %>% group_by(Activity, Subject, Variable) %>% summarize(mean(Value, na.rm=TRUE))

colnames(summary_data) <- c("Activity", "Subject", "Variable", "Average")

write.table(summary_data, "R/Cleaning/Git/Getting-and-Cleaning-Data-Project/Summary by Activity and Subject.txt", row.names=FALSE)
write.table(required_data, "R/Cleaning/Git/Getting-and-Cleaning-Data-Project/Standard Deviation and Mean data.txt", row.names=FALSE)
write.table(melted_data, "R/Cleaning/Git/Getting-and-Cleaning-Data-Project/Melted Standard Deviation and Mean data.txt", row.names=FALSE)
