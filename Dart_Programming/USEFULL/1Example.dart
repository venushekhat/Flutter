//asynchronous function : process ne wait karav mate.. 

fun(){
  for(var i=0; i<=12; i++){
    print(i);
  }
}

Future <void> fetchindetails() async{
  await Future.delayed(Duration(seconds: 4),()=>fun());
}
void main(){
fetchindetails();
}