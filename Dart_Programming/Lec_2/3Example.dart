
import 'dart:io';

void main()
{
  var marks;
  print("Enter Your Marks : ");
  marks=int.parse(stdin.readLineSync()!);
  if(marks > 90 && marks < 100)
  {
    print("You Clam A Grade!!");
  }
  else if(marks > 70 && marks <= 90)
  {
    print("You Clam B Grade!!");
  }
  else if(marks > 50 && marks <= 70 )
  {
    print("You Got C Grade!!");
  }
  else if(marks > 33 && marks <= 50)
  {
    print("Just Pass");
  }
  else if(marks > 100 && marks < 0)
  {
    print("Invalid Choice");
  }
  else
  {
    print("You Are Fail.......");
  }
}