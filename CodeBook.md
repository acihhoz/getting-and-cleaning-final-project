

Run Analysis Big One
1) All data is merged using the rbind(), those files having the same number of columns and referring to the same entities.
2) Those columns with the mean and standard deviation measures are taken after extracting  data refromrated using features.txt.
3) Activity data is addressed with values 1:6  from activity_labels.txt and they are substituted in the dataset.
4) Finally, generated a new dataset with all the average measures 
5) The output file is called tidy.txt, and uploaded


Variables
1) xtra, ytra, xtes, ytes, subtra and subtes contain the data
2) a, b and c user for merging.
3) f contains the correct names for the a dataset, which are applied to the column names stored in msf(mean and standard), also a numeric vector used to extract the desired data.
4) final merges a,b and c into one big dataset.
5) Last but not least, avg contains the averages which will be later stored in a tidy.txt file. 
