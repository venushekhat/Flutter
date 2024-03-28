import 'dart:io';

void main()
{
  var num=5;
  for(var i=1; i<=5; i++){
    for(var j=1; j<=num-i; j++){
    stdout.write(" ");
    }
    for (var k = 1; k <= i; k++) {
      stdout.write("$i ");
    }
    stdout.writeln();
  }
}