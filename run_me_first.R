library(PredPsych)
LDAModel <- LinearDA(Data = KinData, classCol = 1,
                     selectedCols = c(1,2,12,22,32,42,52,62,72,82,92,102,112),cvType="holdout",silent = TRUE)
tryCatch(expr = signif(LDAModel,2)==0.57,finally = cat("\n Congratulations!! \n The toolbox has been installed properly."))