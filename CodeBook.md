### Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. 

###File Overview:
<table>
  <tr>
    <th>Item</th><th>File Name</th><th>Description</th>
  </tr>
  <tr>
    <td>1</td><td>features_info.txt</td><td>Shows information about the variables used on the feature vector.</td>
  </tr>
  <tr>
    <td>2</td><td>features.txt</td><td>List of all features.</td>
  </tr>
  <tr>
    <td>3</td><td>activity_labels.txt</td><td>Links the class labels with their activity name.</td>
  </tr>
  <tr>
    <td>4</td><td>X_train.txt</td><td>Training set.</td>
  </tr>
  <tr>
    <td>5</td><td>y_train.txt</td><td>Training labels</td>
  </tr>
  <tr>
    <td>6</td><td>X_test.txt</td><td>Test set.</td>
  </tr>
  <tr>
    <td>7</td><td>y_test.txt</td><td>Test labels.</td>
  </tr>
</table>

###Activity Info:
<table>
  <tr>
    <th>Activity ID</th><th>Activity Label</th>
  </tr>
  <tr>
    <td>1</td><td>WALKING</td>
  </tr>
  <tr>
    <td>2</td><td>WALKING_UPSTAIRS</td>
  </tr>
  <tr>
    <td>3</td><td>WALKING_DOWNSTAIRS</td>
  </tr>
  <tr>
    <td>4</td><td>SITTING</td>
  </tr>
  <tr>
    <td>5</td><td>STANDING</td>
  </tr>
  <tr>
    <td>6</td><td>LAYING</td>
  </tr>
</table>

###Variables:
<table>
  <tr>
    <th>Variables</th><th>Decription</th>
  </tr>
  <tr>
    <td>activity_labels</td><td>activity data from "activity_labels.txt"</td>
  </tr>
  <tr>
    <td>features</td><td>features data from "features.txt"</td>
  </tr>
  <tr>
    <td>extract_features</td><td>extract the mean and standard deviation of each measurement</td>
  </tr>
  <tr>
    <td>X_test</td><td>Read x_test data</td>
  </tr>
  <tr>
    <td>y_test</td><td>Read y_test data</td>
  </tr>
  <tr>
    <td>subject_test</td><td>Read subject_test data</td>
  </tr>
  <tr>
    <td>X_train</td><td>Read X_train data</td>
  </tr>
  <tr>
    <td>y_train</td><td>Read y_train data</td>
  </tr>
  <tr>
    <td>subject_train</td><td>Read subject_train data</td>
  </tr>
  <tr>
    <td>test_data</td><td>bind x_test, y_test and subject_test</td>
  </tr>
  <tr>
    <td>train_data</td><td>bind X_train, y_train and subject_train</td>
  </tr>
  <tr>
    <td>data</td><td>bind test_data and train_data.</td>
  </tr>
  <tr>
    <td>tidy_data</td><td>tidy data and calculate the mean of each column.</td>
  </tr>
</table>
