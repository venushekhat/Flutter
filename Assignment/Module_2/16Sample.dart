// a program user enter the 5 subjects mark. You have to make a
// total and find the percentage. percentage > 75 you have to print
// “Distinction” percentage > 60 and percentage <= 75 you have to
// print “First class” percentage >50 and percentage <= 60 you have to print
// “Second class” percentage > 35 and  percentage <= 50 you have to print
// “Pass class” Otherwise print “Fail”
import 'dart:io';

void main() {
  var m1, m2, m3, m4, m5, totalMarks; //variable
  double percentage;

  print("Input First Subject Marks : "); //marks1
  m1 = int.parse(stdin.readLineSync()!);

  print("Input secound Subject Marks : "); //marks2
  m2 = int.parse(stdin.readLineSync()!);

  print("Input third Subject Marks : "); //marks3
  m3 = int.parse(stdin.readLineSync()!);

  print("Input Fourth Subject Marks : "); //marks4
  m4 = int.parse(stdin.readLineSync()!);

  print("Input Fifth Subject Marks : "); //marks5
  m5 = int.parse(stdin.readLineSync()!);

  print("First Subject Marks   = $m1");
  print("Secound Subject Marks = $m2");
  print("third Subject Marks   = $m3");
  print("Fourth Subject Marks  = $m4");
  print("Fifth Subject Marks   = $m5");

  totalMarks = m1 + m2 + m3 + m4 + m5; //total of all subject marks

  percentage = (totalMarks / 500) * 100; //percantage of all marks of total

  print("All Subject Marks Total is $totalMarks");
  print("Percentage of the total $percentage");
  
  //check by condition student are which class
  if (percentage >= 75) {
    print("Distinction");
  } else if (percentage >= 60 && percentage < 75) {
    print("First class");
  } else if (percentage >= 50 && percentage < 60) {
    print("Second Class");
  } else if (percentage >= 35 && percentage < 50) {
    print("Pass Class");
  } else {
    print("Fail");
  }
}
