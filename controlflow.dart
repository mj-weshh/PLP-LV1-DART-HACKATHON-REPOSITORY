/*
## Program 3: Determine Grade Based on Marks
Write a Dart program to determine the grade based on a student's marks.
The program should print out the appropriate grade according to the following criteria:
- If the marks are greater than 85, print "Excellent".
- If the marks are between 75 and 85 (inclusive), print "Very Good".
- If the marks are between 65 and 75 (inclusive), print "Good".
- If the marks are below 65, print "Average".
*/
import 'dart:io';

void grade(marks){
  // according to the users marks a different message is printed for the user
  switch (marks){
    case >85:
      print('Excellent!');
      break;
    case >75 && <=85:
      print('Very Good!');
      break;
    case >65 && <=75:
      print('Good.');
      break;
    case <=65:
      print('Average.');
  }
}
void main(){
  print('Enter your marks: ');
  // user inputs their marks
  int marks = int.parse(stdin.readLineSync()!);

  // calling the grade function and parsing marks
  grade(marks);
}