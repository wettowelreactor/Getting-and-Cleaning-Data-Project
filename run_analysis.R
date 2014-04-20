## Converts the raw Samsung data into a tidy dataset for future analysis. 
## Assumes the data folder has the same structure as the original data provided
## by the project.

## Core function that will return the cleaned dataset
run_analysis <- function(data_directory = 'data'){
    # Load the dataframes
    dataframes <- load_dataframes(data_directory)
    
    # convert the y_* dataframes to friendly names and relabel
    dataframes$y_train$V1 <- merge(dataframes$y_train, 
                                   dataframes$activity_labels)[,2]
    colnames(dataframes$y_train) <- 'activities'
    dataframes$y_test$V1 <- merge(dataframes$y_test, 
                                   dataframes$activity_labels)[,2]
    colnames(dataframes$y_test) <- 'activities'
    
    # remove activity_labels from memory
    dataframes$activity_labels <- NULL
    
    # label the X_* dataframes
    colnames(dataframes$X_train) <- dataframes$features$V2
    colnames(dataframes$X_test) <- dataframes$features$V2
    
    # remove features from memory
    dataframes$activity_labels <- NULL
    
    # label the subject_* dataframes
    colnames(dataframes$subject_test) <- 'subject'
    colnames(dataframes$subject_train) <- 'subject'
    
    # Assemble the test and train dataframes
    test_dataframe <- do.call(cbind, 
                              list(dataframes$subject_test, 
                                   dataframes$y_test,
                                   dataframes$X_test))
    train_dataframe <- do.call(cbind, 
                               list(dataframes$subject_train,
                                    dataframes$y_train,
                                    dataframes$X_train))
    
    # Combine the test and train dataframes
    tidy_data = rbind(test_dataframe, train_dataframe)
    
    # Remove original dataframes form memory
    dataframes <- NULL
       
    # Drop all variables that are not related to mean() or std(). As the
    # documentation for the project is ambiguous only those features directly
    # referencing -mean() or -std() are kept. Angle features such as
    # angle(tBodyGyroJerkMean,gravityMean) have been dropped.
    features <- c(1, 2, grep('-mean', names(tidy_data), ignore.case=TRUE), 
                  grep('-std', names(tidy_data), ignore.case=TRUE))
    tidy_data <- tidy_data[,features]
    
    write.csv(tidy_data, file='tidy_data.csv', row.names=FALSE)
    tidy_data
}

load_dataframes <- function(data_directory) {
    # Load all the various data files into memory
    activity_labels <- read.table(sprintf('%s/activity_labels.txt', 
                                          data_directory),
                                  quote='',
                                  nrows=6,
                                  colClasses = c('integer', 'character'))
    features <- read.table(sprintf('%s/features.txt', 
                                   data_directory),
                           quote='',
                           nrows=561,
                           colClasses = c('NULL', 'character'))
    subject_test <- read.table(sprintf('%s/test/subject_test.txt', 
                                       data_directory),
                               quote='',
                               nrows=2947,
                               colClasses = c('integer'))
    X_test <- read.table(sprintf('%s/test/X_test.txt', 
                                 data_directory),
                         quote='',
                         nrows=2947,
                         colClasses = c('numeric'))
    y_test <- read.table(sprintf('%s/test/y_test.txt', 
                                 data_directory),
                         quote='',
                         nrows=2947,
                         colClasses = c('integer'))
    subject_train <- read.table(sprintf('%s/train/subject_train.txt', 
                                        data_directory),
                                quote='',
                                nrows=7352,
                                colClasses = c('integer'))
    X_train <- read.table(sprintf('%s/train/X_train.txt', 
                                  data_directory),
                          quote='',
                          nrows=7352,
                          colClasses = c('numeric'))
    y_train <- read.table(sprintf('%s/train/y_train.txt', 
                                  data_directory),
                          quote='',
                          nrows=7352,
                          colClasses = c('integer'))
    
    # return a list of all the loaded datasets.
    list(activity_labels = activity_labels,
         features = features,
         subject_test = subject_test,
         X_test = X_test,
         y_test = y_test,
         subject_train = subject_train,
         X_train = X_train,
         y_train = y_train)
}