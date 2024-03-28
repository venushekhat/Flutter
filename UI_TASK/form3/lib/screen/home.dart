// import 'package:flutter/material.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             child: Column(
//               crossAxisAlignment:
//                   CrossAxisAlignment.start, // Align children to the left
//               children: [
//                 //image start
//                 Container(
//                   height: 200,
//                   width: double.maxFinite,
//                   child: Image.asset(
//                     'assets/images.jpeg',
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 //image end
//                 //sing up start
//                 Container(
//                   padding:
//                       EdgeInsets.only(left: 16), // Add padding for the text
//                   child: Text(
//                     "Sign Up",
//                     style: TextStyle(
//                       fontSize: 42,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//                 //sing up end

//                 //create account start
//                 Container(
//                   padding:
//                       EdgeInsets.only(left: 16), // Add padding for the text

//                   child: Text(
//                     "Create Account",
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.w500,
//                     ),
//                   ),
//                 ),
//                 //create account end
//                 //name fiwld  start

//                 Container(
//                   child: Column(
//                     children: [
//                       Container(
//                         child: Icon(Icons.person_2_outlined),
//                       )
//                       // text name start
//                       Container(
//                         padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
//                         child: TextFormField(
//                           decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(5),
//                             ),
//                             hintText: "name",
//                             labelText: "Name",
//                           ),
                          
//                         )
//                       ),
//                       //text name end
//                     ],
//                   ),
//                 ),
//                 //name fiwld  end
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//}


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image
                  Container(
                    height: 200,
                    width: double.maxFinite,
                    child: Image.asset(
                      'assets/images.jpeg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Sign Up Text
                  Container(
                    padding: EdgeInsets.only(left: 16, top: 5),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  // Create Account Text
                  Container(
                    padding: EdgeInsets.only(left: 16),
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  // Name Field with Icon
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Name",
                        labelText: "Name",
                        prefixIcon: Icon(Icons.person, color: Colors.black, size: 30),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),
                  ),
                  // Email Field with Icon
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Email",
                        labelText: "Email",
                        prefixIcon: Icon(Icons.email, color: Colors.black, size: 30),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                  ),
                  // Password Field with Icon and Visibility Toggle
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: TextFormField(
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintText: "Password",
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.black, size: 30),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                          icon: Icon(
                            _passwordVisible ? Icons.visibility : Icons.visibility_off,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                  ),
                  // Terms of Service and Privacy Policy Text
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: Text(
                      "Creating an account means you're okay with our Terms of Service and our Privacy Policy",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  // Login Button start
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Logging in Successfully...')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 18,color: Colors.white),
                        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                        primary: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0), // Removed the radius
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 130),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // login button end

                  // last line start

                  Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                  // last line end
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


