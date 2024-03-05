import 'dart:io';

void main()
{
  var day;
  print("Enter the day : ");
  day=int.parse(stdin.readLineSync()!);
  switch(day)
  {
    case 1:
    print("Monday");
    break;
    case 2:
    print("tuesday");
    break;
      case 3:
    print("wednesday");
    break;
      case 4:
    print("thrusday");
    break;
      case 5:
    print("friday");
    break;
      case 6:
    print("saturday");
    break;
      case 7:
    print("sunday");
    break;
    default :
    print("Invalid Choice..");
    break;
      }
}