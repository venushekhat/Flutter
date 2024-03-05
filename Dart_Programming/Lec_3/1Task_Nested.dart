import 'dart:io';

void main()
{
  var name,quentity=0,total=0,reset,i=0,subchoice,mainchoice;
  
    print("____________Welcome to Our Restuarante___________");

  print("Enter Your Name : ");
  name=stdin.readLineSync()!;

  while(i<1){
    print("________UNIQUE_________");
    print("1]pizaa");
    print("2]Garlic Bread");
    print("3]Burger");
    print("4]Sendwitch");
    print("5]Coldrinks");

    print("Enter Your mainChoice : ");
    mainchoice=int.parse(stdin.readLineSync()!);

     switch(mainchoice)
     {
      case 1:
      print("__________PIZAA MENUE_____________");
      print("1)Margerita pizza 360rs.");
      print("2)7 chezeee pizza 660rs.");
      print("3)garden fresh pizza 560rs.");
      print("4)paneer chilly  pizza 520rs.");

      print("Enter Your Sub choice : ");
      subchoice=int.parse(stdin.readLineSync()!);
       print("Enter the Quentity : ");
      quentity=int.parse(stdin.readLineSync()!);
      switch(subchoice)
      {
        case 1 : print("1)Margerita pizza 360rs."); break;
        case 2 : print("2)7 chezeee pizza 660rs."); break;
        case 3 :  print("3)garden fresh pizza 560rs."); break;;

         default:print("Enyter Valid choice......");
         break;
      }
        
         switch(subchoice)
         {
          case 1 :
          total+=quentity*360; break;
            case 2 :
          total+=quentity*660; break;
            case 3 :
          total+=quentity*560; break;
            case 4 :
          total+=quentity*520; break;
         }

         case 2 :
          print("__________GARLIC BREAD MENUE__________");
          print("1)Chezz garlic bread 160rs.");
          print("2)spicy garlic bread 190rs.");
          print("3)corn garlic bread 130rs.");
          print("4)lavabdar garlic bread 170rs.");
         print("Enter Your Subchoice : ");
         subchoice=int.parse(stdin.readLineSync()!);
         print("Enter The Quentity : ");
         quentity=int.parse(stdin.readLineSync()!);
         switch(subchoice)
         
         {
          case 1 :  print("1)Chezz garlic bread 160rs."); break;
          case 2 :  print("2)spicy garlic bread 190rs."); break;
          case 3 :  print("3)corn garlic bread 130rs."); break;
          case 4 :  print("4)lavabdar garlic bread 170rs."); break;
          default:  print("Enter Your valid choice"); break;
         }
         
         switch(subchoice)
         {
              case 1 :
          total+=quentity*160; break;
              case 2 :
          total+=quentity*190; break;
              case 3 :
          total+=quentity*130; break;
              case 4 :
          total+=quentity*170; break;
         }

case 3 :
         print("__________BURGER MENUE____________");
          print("1)Aloo tikki burger 60rs.");
          print("2)spicy hot burger 100rs.");
          print("3)italian cheezze burger 160rs.");
          print("4)corn & cheez burger 130rs.");
         
         print("Enter Your Subchoice : ");
         subchoice=int.parse(stdin.readLineSync()!);
         print("Enter The Quentity : ");
         quentity=int.parse(stdin.readLineSync()!);
         switch(subchoice)
         {
          case 1 :  print("1)Aloo tikki burger 60rs."); break;
          case 2 :  print("2)spicy hot burger 100rs."); break;
          case 3 :  print("3)italian cheezze burger 160rs."); break;
          case 4 :  print("4)corn & cheez burger 130rs."); break;
          default:  print("Enter Your valid choice"); break;
         }
         
         switch(subchoice)
         {
              case 1 :
          total+=quentity*60; break;
              case 2 :
          total+=quentity*100; break;
              case 3 :
          total+=quentity*160; break;
              case 4 :
          total+=quentity*130; break;
         }

 
case 4 :
         print("___________SENDWITCH MENUE____________");
          print("1)Aloo matar grrill sendwitch  160rs.");
          print("2)pinaple cheeze 140rs.");
          print("3)chocolate ice cream sendwitch 200rs.");
          print("4)ghura and sev sendwitch 180rs.");
         print("Enter Your Subchoice : ");
         subchoice=int.parse(stdin.readLineSync()!);
         print("Enter The Quentity : ");
         quentity=int.parse(stdin.readLineSync()!);
         switch(subchoice)
         {
          case 1 : print("1)Aloo matar grrill sendwitch  160rs."); break;
          case 2 : print("2)pinaple cheeze 140rs."); break;
          case 3 : print("3)chocolate ice cream sendwitch 200rs."); break;
          case 4 : print("4)ghura and sev sendwitch 180rs."); break;
          default: print("Enter Your valid choice"); break;
         }
         
         switch(subchoice)
         {
              case 1 :
          total+=quentity*160; break;
              case 2 :
          total+=quentity*140; break;
              case 3 :
          total+=quentity*200; break;
              case 4 :
          total+=quentity*180; break;
         }

case 5 :
        print("______COLDRINKS MENUE______");
          print("1)thums up 500ml 65rs.");
          print("2)cocacola 500ml 70rs.");
          print("3)red bull 100ml 200rs.");
          print("4)mazaa 50ml 20rs.");
         print("Enter Your Subchoice : ");
         subchoice=int.parse(stdin.readLineSync()!);
         switch(subchoice)
         {
          case 1 : print("1)thums up 500ml 65rs."); break;
          case 2 : print("2)cocacola 500ml 70rs."); break;
          case 3 : print("3)red bull 100ml 200rs."); break;
          case 4 : print("4)mazaa 50ml 20rs."); break;
          default: print("Enter Your valid choice"); break;
         }
         print("Enter The Quentity : ");
         quentity=int.parse(stdin.readLineSync()!);
         switch(subchoice)
         {
              case 1 :
          total+=quentity*65; break;
              case 2 :
          total+=quentity*70; break;
              case 3 :
          total+=quentity*200; break;
              case 4 :
          total+=quentity*20; break;
         }
         }
              print("Do you Want to anything else ? : ");
      reset=stdin.readLineSync()!;

      if(reset == 'yes' || reset == 'YES' || reset == 'Y')
      {}
      else
      {
        i++;
      }
     }
 
      print("Thanks For Ordering $name this is your order payment $total");
  }
  


