//name password simple form

import 'package:flutter/material.dart';
import 'package:myapp11/Screen/Home.dart';

class MyTextfields extends StatefulWidget {
  const MyTextfields({Key? key}) : super(key: key);

  @override
  State<MyTextfields> createState() => _MyTextfieldsState();
}

class _MyTextfieldsState extends State<MyTextfields> {
  bool _selected = true;
  final _formKey = GlobalKey<FormState>(); // Added GlobalKey for form validation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey, // Assigned form key to the form widget
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),











                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name properly.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Enter Your Name",
                    labelText: "Name",
                    suffixIcon: Icon(Icons.person),
                  ),
                ),














              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password properly.';
                    }
                    return null;
                  },
                  obscureText: _selected,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Enter the Password",
                    labelText: "Password",
                    suffixIcon: _selected
                        ? IconButton(
                            onPressed: () {
                              setState(() {
                                _selected = false;
                              });
                            },
                            icon: Icon(Icons.visibility),
                          )
                        : IconButton(
                            onPressed: () {
                              setState(() {
                                _selected = true;
                              });
                            },
                            icon: Icon(Icons.visibility_off),
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) => Home_Page()),
                      );
                    }
                  },
                  child: Text("Login"),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 24, color: Colors.white),
                    primary: Colors.amber,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
