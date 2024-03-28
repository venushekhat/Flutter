import 'dart:io';

void main(){
  var n1,n2,choice,number;
  print("Enter the Number 1 : ");
  n1=int.parse(stdin.readLineSync()!);
  print("Enter the Number 2 : ");
  n2=int.parse(stdin.readLineSync()!);

print("____________________");
print("1]Odd/Even");
print("2]prime/Not-Prime");

print("Enter Your Choice Odd/Even ya Prime/Note-Prime : ");
number=int.parse(stdin.readLineSync()!);

switch(number){
//Even Odd
  case 1 :
  if(n1%2==0){
  print("Number $n1 is Odd...");
}
else{
  print("This is $n1 Even number..");
}

if(n2%2==0){
  print("Number $n2 is Odd...");
}
else{
  print("This is $n2 Even number..");
}

case 2:
//prime Not Prime
if(n1%2==0)
    {
      print("$n1 Not A Prime Number...");
    }
    else{
      print("$n2 This is a Prime Number...");
    }

    if(n2%2==0)
    {
      print("$n1 Is Not A Prime Number...");
    }
    else{
      print("$n2 is a Prime Number...");
    }
    
    default:print("Not Valid choice...");
}












  print("___________________________________");
  print("Enter You Want to Create : ");
  print("1]__Addition__ ");
  print("2]__Substraction__");
  print("3]__Multiplication__");
  print("4]__Division__");
  print("5]__Modulo__");

  print("Enter Your Choice : ");
  choice=int.parse(stdin.readLineSync()!);

  switch(choice){
    case 1:
    print("__Addition__ Of Two Numbers :${(n1+n2)}");
  
     case 2:
    print("__Substraction__ Of Two Numbers :${(n1-n2)}");

       case 3:
    print("__Multiplication__ Of Two Numbers :${(n1*n2)}");

       case 4:
    print("__Division__ Of Two Numbers :${(n1/n2)}");

       case 5:
    print("__Modulo__ Of Two Numbers :${(n1%n2)}");

    default: print("Not Valid Choice...");
    
  }
  
  }