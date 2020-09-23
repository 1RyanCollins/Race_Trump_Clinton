#getwd()


#statesInfo <- read.csv('C:/Users/rc124/Desktop/stateData.csv')

#head(statesInfo)

#stateSubset <- subset(statesInfo, state.region == 1)

#Dateset[rowm, col]

#reddit <- read.csv('C:/Users/rc124/Desktop/reddit.csv')

#table(reddit$employment.status)

#library(ggplot2)
#qplot(data = reddit, x = age.range)
#qplot(data = reddit, x = income.range)

##levels(reddit$employment.status)

#pf <- read.csv('C:/Users/rc124/Desktop/pseudo_facebook.tsv', sep = '\t')
#names(pf)

#library(ggplot2)

#qplot(x = dob_day, data  = pf) +
 #  scale_x_continuous(breaks=1:31)


#qplot(x = friend_count, data = pf, xlim = c(0, 1000))


#qplot(x = friend_count, data = pf, binwidth = 25) + 
 # scale_x_continuous(limits = c(0, 1000), breaks = seq(0, 1000, 50))

#ggplot(aes(x = friend_count), data = subset(pf, !is.na(gender))) +
 # geom_histogram() +
  #scale_x_continuous(limits = c(0, 1000), breaks = seq(0, 1000, 50)) +
  #facet_wrap(~gender)

#table(pf$gender)
#by(pf$friend_count, pf$gender, summary)

data <- read.csv("C:/Users/rc124/Desktop/anes_pilot_2019.csv")

head(data)

rr1
names(data)


race1 <- data$rr1
race1[race1 < 0] <- NA
table(race1)
tablerace1 <- table(race1)
#Irish, Italians, Jewish andmany other minoritiesovercame prejudice 
#andworked their way up.Blacks should do thesame without any specialfavors

race2 <- data$rr2
race2[race2 < 0] <- NA
table(race2)
tablerace2 <- table(race2)
#Generations of slaveryand discrimination havecreated conditions thatmake it 
#difficult forblacks to work their wayout of the lower class.

race3 <- data$rr3

race3[race3 < 0] <- NA
table(race3)
tablerace3 <- table(race3)
#Over the past few years,blacks have gotten lessthan they deserve.



race4 <- data$rr4
race4[race4 < 0] <- NA
# It's really a matter ofsome people not tryinghard enough; if blackswould only try harderthey could be just as welloff as whites.
#1 agree strongly 
#5 disagree strongly 




trump <- data$vote16
trump[trump < 0] <- NA
  #trump 1 hil 2 
trump[trump >3] <- NA
table(trump, race4)
tablerace4 <- table(trump, race4)

barplot(tablerace, xlab = "Do you agree or disagree with this statement: It's really a matter of some people not trying hard enough; 
        if blacks would only try harder they could be just as well off as whites", ylab = "Frequency", 
        col  =c ("firebrick3" , "dodgerblue", "white"), names.arg = c("Strongly Agree", "Agree somewhat", "Neither agree or disagree", "Disagree somewhat", "Strongly disagree"), 
        legend.text = c("Voted Trump","Voted Clinton", "Voted Someone else"), 
        args.legend = list(x = "topleft", bty = "n", inset=c(0.03, 0.05)), 
        font.axis=2, font.lab = 2, col.lab = "blue", cex.names = 0.9, cex.axis = 0.8, cex.lab = 0.9, axisnames = 3)

help("barplot")
install.packages("RColorBrewer")
library(RColorBrewer)

help("RColorBrewer")

cor.test(trump, race4)
