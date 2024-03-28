// import 'package:flutter/material.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   String? errorMessage;
//   bool isLoggedIn = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Container(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   "English",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 28,
//                   ),
//                 ),
//                 SizedBox(
//                   height: 90,
//                 ),
//                 Text(
//                   "Instagram",
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 52,
//                     fontWeight: FontWeight.w500,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextFormField(
//                   controller: usernameController,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     hintText: "Phone number, email, or username",
//                     errorText: errorMessage,
//                   ),
//                   onChanged: (_) {
//                     setState(() {
//                       errorMessage = null;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 15),
//                 TextFormField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5),
//                     ),
//                     hintText: "Password",
//                     errorText: errorMessage,
//                   ),
//                   onChanged: (_) {
//                     setState(() {
//                       errorMessage = null;
//                     });
//                   },
//                 ),
//                 SizedBox(height: 20),
//                 GestureDetector(
//                   onTap: () {
//                     String username = usernameController.text.trim();
//                     String password = passwordController.text.trim();

//                     if (username.isEmpty || password.isEmpty) {
//                       setState(() {
//                         errorMessage = "Please fill in all fields.";
//                       });
//                     } else {
//                       setState(() {
//                         errorMessage = null;
//                         isLoggedIn = true;
//                       });
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: Text("Login Successful"),
//                             content: Text("Welcome, $username!"),
//                             actions: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: Text("OK"),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     }
//                   },
//                   child: Container(
//                     height: 65,
//                     width: MediaQuery.of(context).size.width - 40,
//                     decoration: BoxDecoration(
//                       color: Colors.blue,
//                       borderRadius: BorderRadius.circular(4),
//                     ),
//                     child: Center(
//                       child: Text(
//                         "Login",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 isLoggedIn
//                     ? Text(
//                         "Login successful!",
//                         style: TextStyle(
//                           color: Colors.green,
//                           fontSize: 16,
//                         ),
//                       )
//                     : SizedBox(),
//                 SizedBox(height: 20),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "Forget Your Login Details??",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: 18,
//                       ),
//                     ),
//                     SizedBox(width: 5),
//                     Text(
//                       "Get help",
//                       style: TextStyle(
//                         color: Colors.blue[900],
//                         fontSize: 24,
//                         fontWeight: FontWeight.w700,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: 20),
//                 Container(
//                   margin: EdgeInsets.symmetric(vertical: 10),
//                   child: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Divider(
//                         color: Colors.black,
//                         height: 1,
//                       ),
//                       Container(
//                         padding: EdgeInsets.symmetric(horizontal: 10),
//                         color: Colors.white,
//                         child: Text(
//                           "or",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 10),
//                 Center(
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           Container(
//                             child: Icon(
//                               Icons.facebook_rounded,
//                               color: Colors.blue[900],
//                               size: 30,
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.symmetric(horizontal: 10),
//                             child: Text(
//                               "Login with Facebook",
//                               style: TextStyle(
//                                 color: Colors.blue[900],
//                                 fontWeight: FontWeight.w700,
//                                 fontSize: 20,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 25),
//                       Divider(
//                         color: Colors.black,
//                         height: 4,
//                       ),
//                       SizedBox(height: 10),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             "Don't have an account?",
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 18,
//                             ),
//                           ),
//                           SizedBox(width: 15),
//                           Text(
//                             "Sign up",
//                             style: TextStyle(
//                               color: Colors.blue[900],
//                               fontSize: 18,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "English",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Text(
                    "Instagram",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 52,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Phone number, email, or username",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your username";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "Password",
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      if (formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Logging in Successfully...')),
                        );
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  isLoggedIn
                      ? Text(
                          "Login successful!",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
                        )
                      : SizedBox(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Forget Your Login Details??",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "Get help",
                        style: TextStyle(
                          color: Colors.blue[900],
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Divider(
                          color: Colors.black,
                          height: 1,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          color: Colors.white,
                          child: Text(
                            "or",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              child: Icon(
                                Icons.facebook_rounded,
                                color: Colors.blue[900],
                                size: 30,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "Login with Facebook",
                                style: TextStyle(
                                  color: Colors.blue[900],
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 25),
                        Divider(
                          color: Colors.black,
                          height: 4,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have an account?",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(width: 15),
                            Text(
                              "Sign up",
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
