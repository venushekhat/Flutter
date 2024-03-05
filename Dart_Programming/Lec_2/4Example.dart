import 'dart:io';
void main()
{
  var age;
  print("Enter Your Age : ");
  age=int.parse(stdin.readLineSync()!);
  if(age > 0 && age <= 80)
  {
     if(age > 3 && age < 5)
    {
      print("You have Buy A Tiket for Kid");
    }
    else if(age > 18 && age < 35)
    {
      print("You Have a Buy Full Tiket");
    }
    else if(age >= 60 && age <=80)
    {
      print("You have a cinear Citizan Discount 20% To The Ticket");
    }
    else
    {
      print("You Dont Need Buy a ticket");
    }
  }
   else
     {
      print("This is NOt Your Real age");
     }
}
