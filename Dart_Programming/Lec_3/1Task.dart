import 'dart:io';

void main()
{
   // ignore: unused_local_variable
   var mainbill,name,quantety=0,choice,total = 0,reset,i=0;
   print("Enter Your Name :");
   name=stdin.readLineSync()!;

  while(i<1)
  {
       print("__________Hot and Spicy__________");
   print("Our Menue : ");
   print("1.Pinaple chezee Sendwitch = 1 plate 140Rs.");
   print("2.gughra Sendwitch = 1plate 120rs");
   print("3.Aloo matar grill Sendwitch =  1 plate 130Rs.");
   print("4.only chezz Sendwitch = 1 plate 160Rs.");

   print("Enter Your Choice : ");
   choice=int.parse(stdin.readLineSync()!);

   print("Enter quantety :");
   quantety=int.parse(stdin.readLineSync()!);

   switch(choice){
    case 1 :
    total +=  quantety * 140;
      // mainbill = mainbill+total;
     print("1.Pinaple chezee Sendwitch = 1 plate 140Rs.");
     break;
      case 2 :
    total +=   quantety*120;
          // mainbill = mainbill+total;

      print("2.gughra Sendwitch");
      break;
      case 3 :
    total +=  quantety*160;
    // mainbill = mainbill+total;
      print("3.aloo matar grill Sendwitch");
      break;
      case 4 :
    total += quantety*200;
    // mainbill = mainbill+total;
      print("4.only chezz Sendwitch");
      break;
      default :
       print("Sorry THis Is Not Available");
       break;
   }

  print("Do you want to order anything else ?? : ");
  reset = stdin.readLineSync()!;
  if (reset == "yes" || reset == "YES" || reset == "Y")
  {}
  else
  {
    i++;
  }
  }
  
     print("Thanks for ordering $name this is your total bill amount $total");
  
}