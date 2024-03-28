import 'package:flutter/material.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("Login",style: TextStyle(
              fontSize: 24,color: Colors.white
            ),),style: ButtonStyle(elevation: MaterialStatePropertyAll(20),backgroundColor: MaterialStatePropertyAll(Colors.amber)),),
           
           
           
            TextButton(onPressed: (){}, child: Text("Forget password?")),
           
           
           
            OutlinedButton(onPressed: (){}, child:Text("Logout"),style: ButtonStyle(
            side: MaterialStatePropertyAll(BorderSide(
              width: 2,color: Colors.blue
            )),
            backgroundColor: MaterialStatePropertyAll(Colors.amber),
            elevation: MaterialStatePropertyAll(20)
            )),
           
           
           
            IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
            Spacer(),
           
           
             MaterialButton(onPressed: (){} , child: Text("Add to cart"),color: Colors.red,shape: Border(left: BorderSide(color: Colors.white,width: 50))),
          ],
        ),
      ),
    );
  }
}