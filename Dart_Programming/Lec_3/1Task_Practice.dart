import 'dart:io';

void main()
{
  var name,choice,quentity=0,total=0,reset,i=0;
  print("Enter Your Name : ");
  name=stdin.readLineSync()!;

while(i<1)
{
  print("___________Spicy_______________");
  print("Pizzzaaa = 450rs. ");
  print("Gotalo Dhosa = 180rs. ");
  print("Sendwitches = 150rs.");
  print("Butter Bhaji-Pav = 170rs.");

  print("Enter Your Choice : ");
  choice=int.parse(stdin.readLineSync()!);

  print("Enter you Choice Quentity : ");
  quentity=int.parse(stdin.readLineSync()!);

  switch(choice)
  {
    case 1:
       total+=quentity*450;
       print("Pizzzaaa 450rs.");
              break;


    case 2:
        total+=quentity*180;
        print("Gotalo Dhosa 180rs. ");
               break;

    
    case 3:
            total+=quentity*150;
            print("Sendwitches 150rs.");
                   break;

    
    case 4:
             total+=quentity*170;
            print("Butter Bhaji-Pav 170rs.");
                   break;

    
    default:
       print("Not Available!!!!!");
       break;

  }
  print("Do You Want to order Anything else ?? :");
  reset=stdin.readLineSync()!;
  if(reset == "yes" || reset == "Y"  || reset == "Yes")
  {}
  else
  {
    i++;
  }
}
print("Thanks For Ordering $name this is your order payment $total");
}