import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _formKey = GlobalKey<FormState>(); // Define _formKey here
  bool _passwordVisible = false; // Track password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey, // Use _formKey here
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //purple box start
              Container(
                height: 300,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 70,
                ),
              ),
              //purple box end

              //name field start
              Padding(
                padding: const EdgeInsets.all(20.0),
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
              // name field end

              SizedBox(height: 10),

              //password field start
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  obscureText: !_passwordVisible, // Toggle visibility
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password properly.';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: "Enter Your Password",
                    labelText: "Password",
                    suffixIcon: IconButton(
                      icon: Icon(
                        _passwordVisible ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _passwordVisible = !_passwordVisible; // Toggle visibility state
                        });
                      },
                    ),
                  ),
                ),
              ),
              //password end

              SizedBox(height: 16),

              // Submit button
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Form is valid, proceed with submission
                        // Add your logic here
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green, // Change button color
                      textStyle: TextStyle(fontSize: 18), // Change button text size
                    ),
                    child: Text('Submit'),
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
