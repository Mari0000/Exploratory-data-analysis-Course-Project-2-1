setwd("C:/Users/Mario Sobhy/Downloads/coursera-exploratory-data-analysis-course-project-2-master/coursera-exploratory-data-analysis-course-project-2-master")

NEI <- readRDS("./data/summarySCC_PM25.rds")

SCC <- readRDS("./data/Source_Classification_Code.rds")

aggregatedTotalByYear <- aggregate(Emissions ~ year, NEI, sum)

png('plot1.png')
barplot(height=aggregatedTotalByYear$Emissions, names.arg=aggregatedTotalByYear$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' emissions at various years'))
dev.off()