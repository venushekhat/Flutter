import 'dart:io';

void main()
{
  var name,choice,occupation,annualincome,monthlyincome;

     print("Enter Your Name : ");
     name = stdin.readLineSync()!;

     print("_____________________________");

   print("1) Student");
   print("2) Salaried");
   print("3) Self - Employed");

   print("______________________________");

   print("What Do You Do For Your Living ? ");
   choice = int.parse(stdin.readLineSync()!);

   switch(occupation)
   {
    case 1 :
          print('Enter your annual income as a student:');
         annualincome=int.parse(stdin.readLineSync()!);
         monthlyincome = annualincome / 12;
         break;

         case 2 :
               print('Enter your annual income as a self-employed individual:');
               monthlyincome=int.parse(stdin.readLineSync()!);
               monthlyincome = annualincome / 12;
               break;
   
     case 3 :
           print('Enter your annual salary:');
          monthlyincome=int.parse(stdin.readLineSync()!);
          monthlyincome = annualincome / 12;
          break;

       default:
      print('Invalid occupation type selected.');
      return;

   }
}
