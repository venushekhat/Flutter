// 1
// 1 0
// 1 0 1
// 1 0 1 0
// 1 0 1 0 1


import 'dart:io';

void main()
{ 
var n;
  for(var i=1; i<=5; i++)
  {
    for(var j=1; j<=i; j++)
    {
      n=j%2;
      stdout.write('$n');
    
    }
    stdout.writeln();
  }
}