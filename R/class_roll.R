class.roll<-read.table("class_roll.txt",header=FALSE,sep="")
dimnames(class.roll)[[2]]<-c("ID","name","n.accesses")
red.id<-sample(1:71,size=35)
black.id<-(1:71)[-red.id]
class.roll$group<-"red"
class.roll$group[black.id]<-"black"
tapply(class.roll$n.accesses,class.roll$group,summary)
png("red_black.png",width=640,height=640)
boxplot(n.accesses~group,data=class.roll,at=2:1)
dev.off()
#quartz(dpi=72)
#boxplot(n.accesses~group,data=class.roll)
png("red_black_ecdf.png",width=640,height=640)
plot(ecdf(class.roll$n.accesses[red.id]),col="red",main="표본누적분포함수")
lines(ecdf(class.roll$n.accesses[black.id]),pch=15)
legend(x=0,y=0.9,legend=c("red","black"),pch=16:15,col=c("red","black"))
dev.off()
#quartz(dpi=72)
#plot(ecdf(class.roll$n.accesses[red.id]))
#lines(ecdf(class.roll$n.accesses[black.id]),pch=17,col="red")
class.roll$ID >= 20130000
table(class.roll$ID >= 20130000)[c(2,1)]
table((class.roll$ID >= 20130000)[red.id])[c(2,1)]
table((class.roll$ID >= 20130000)[black.id])[c(2,1)]
table(class.roll$ID >= 20120000)[c(2,1)]
table((class.roll$ID >= 20120000)[red.id])[c(2,1)]
table((class.roll$ID >= 20120000)[black.id])[c(2,1)]
table(class.roll$n.accesses >= 100)[c(2,1)]
table((class.roll$n.accesses >= 100)[red.id])[c(2,1)]
table((class.roll$n.accesses >= 100)[black.id])[c(2,1)]
table(class.roll$n.accesses >= 50)[c(2,1)]
table((class.roll$n.accesses >= 50)[red.id])[c(2,1)]
table((class.roll$n.accesses >= 50)[black.id])[c(2,1)]
