library(plyr)

# Step 1-  Merging
xtra <- read.table("train/X_train.txt")
ytra <- read.table("train/y_train.txt")
subtra <- read.table("train/subject_train.txt")
xtes <- read.table("test/X_test.txt")
ytes <- read.table("test/y_test.txt")
subtes <- read.table("test/subject_test.txt")
a <- rbind(xtra, xtes)
b <- rbind(ytra, ytes)
c <- rbind(subtra, subtes)

# Step 2 Extract
f <- read.table("features.txt")
f[,2] <- as.character(f[,2])
msf <- grep(".*mean.*|.*std.*", f[,2])
a <- a[, msf]
names(a) <- f[msf, 2]


# Step 3 descriptions and names
labels<- read.table("activity_labels.txt")
b[, 1] <- labels[b[, 1], 2]
names(b) <- "Activities"

# Step 4 Variables
names(c) <- "Subject"
final <- cbind(a, b, c)

# Step 5 Tidy Data
avg <- ddply(final, .(Subject, Activities), function(x) colMeans(x[, 1:66]))
write.table(avg, "tidy.txt", row.name=FALSE)

#Alas the sweet end
