# Codebook for tidy_data.txt

**Activity** Activity performed by subject.

Walking  
Walking (upstairs)  
Walking (downstairs)  
Sitting  
Standing  
Laying  

**subject** Individual who performed the activities.

0 - 30

**tBodyAcc-** Body acceleration signals, X, Y and Z axis. Time domain
signals. *mean()* and *std()* denote mean and standard deviation. 

**Please note:** All variables from now on are scaled from -1 to 1.

tBodyAcc-mean()-X  
tBodyAcc-mean()-Y  
tBodyAcc-mean()-Z  
tBodyAcc-std()-X  
tBodyAcc-std()-Y  
tBodyAcc-std()-Z  

**tGravityAcc-** Gravity acceleration signals, X, Y and Z axis. Time domain
signals. *mean()* and *std()* denote mean and standard deviation. 

tGravityAcc-mean()-X  
tGravityAcc-mean()-Y           
tGravityAcc-mean()-Z  
tGravityAcc-std()-X            
tGravityAcc-std()-Y  
tGravityAcc-std()-Z            

**tBodyAccJerk-** Body linear acceleration signals, X, Y and Z axis. Time domain
signals. *mean()* and *std()* denote mean and standard deviation. 

tBodyAccJerk-mean()-X   
tBodyAccJerk-mean()-Y          
tBodyAccJerk-mean()-Z   
tBodyAccJerk-std()-X           
tBodyAccJerk-std()-Y  
tBodyAccJerk-std()-Z           

**tBodyGyro-** Angular velocity signals, X, Y and Z axis. Time domain
signals. *mean()* and *std()* denote mean and standard deviation. 

tBodyGyro-mean()-X  
tBodyGyro-mean()-Y              
tBodyGyro-mean()-Z  
tBodyGyro-std()-X                
tBodyGyro-std()-Y  
tBodyGyro-std()-Z              

**tBodyGyro-** Angular velocity signals, X, Y and Z axis. Time domain
signals. *mean()* and *std()* denote mean and standard deviation. 

tBodyGyroJerk-mean()-X  
tBodyGyroJerk-mean()-Y           
tBodyGyroJerk-mean()-Z  
tBodyGyroJerk-std()-X          
tBodyGyroJerk-std()-Y  
tBodyGyroJerk-std()-Z          

**tBodyAccMag-** Magnitude of the above three dimensional signals. *mean()* and *std()* denote mean and standard deviation. 

tBodyAccMag-mean()   
tBodyAccMag-std()              

tGravityAccMag-mean()  
tGravityAccMag-std()           

tBodyAccJerkMag-mean()  
tBodyAccJerkMag-std()          

tBodyGyroMag-mean()  
tBodyGyroMag-std()             

tBodyGyroJerkMag-mean()  
tBodyGyroJerkMag-std()         

**fBody** Fast Fourier Transform (FFT) of the above three dimensional signals. *mean()* and *std()* denote mean and standard deviation. 

fBodyAcc-mean()-X   
fBodyAcc-mean()-Y              
fBodyAcc-mean()-Z  
fBodyAcc-std()-X               
fBodyAcc-std()-Y  
fBodyAcc-std()-Z               

fBodyAccJerk-mean()-X          
fBodyAccJerk-mean()-Y  
fBodyAccJerk-mean()-Z          
fBodyAccJerk-std()-X    
fBodyAccJerk-std()-Y           
fBodyAccJerk-std()-Z  

fBodyGyro-mean()-X  
fBodyGyro-mean()-Y             
fBodyGyro-mean()-Z   
fBodyGyro-std()-X               
fBodyGyro-std()-Y   
fBodyGyro-std()-Z              

fBodyAccMag-mean()              
fBodyAccMag-std()   

fBodyBodyAccJerkMag-mean()  
fBodyBodyAccJerkMag-std()      

fBodyBodyGyroMag-mean()        
fBodyBodyGyroMag-std()   

fBodyBodyGyroJerkMag-mean()   
fBodyBodyGyroJerkMag-std()     
