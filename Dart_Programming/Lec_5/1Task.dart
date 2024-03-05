import 'dart:io';

void main()
{
  var name;

print("1)Albert Einstein");
print("2)Benjamin Franklin");
print("3)Ada Lovelace");

  print(" Who's birthday do you want to look up?");
  name = int.parse(stdin.readLineSync()!);

  switch (name)
   {
    case 1 :
      print("Albert Einstein's birthday is 14/03/1779.");
      break;
    case 2 :
      print("Benjamin Franklin's birthday is  01/17/1706.");
      break;
    case 3 :
      print("Ada Lovelace's birthday is 10/12/1856.");
      break;
    default:
      print("Sorry, we don't have $name's birthday in the dictionary.");
  }
}
