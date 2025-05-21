import 'package:flutter/material.dart';
import 'package:login_page/provider/loginprovider.dart';
import 'package:login_page/securityscreen.dart';
import 'package:provider/provider.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LoginProvider>(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,

              children: [
                Image(image: AssetImage('assets/images/logo.png')),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20, bottom: 30),
                  child: Text(
                    'Sign in your account',
                    style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Enter your email and password for login',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                SizedBox(height: 35),

                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: provider.setEmail,
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'Enter your password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onChanged: provider.setPassword,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 250),
                  child: Text(
                    'ForgotPassword?',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    // background color
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Securityscreen()),
                    );
                  },

                  child: Text('Login', style: TextStyle(color: Colors.white)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,

                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(
                      ' OR ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20),

                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/google.png',
                    height: 23,
                    width: 23,
                  ),

                  label: Text(
                    'Continue with Google',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/images/meta.png',
                    height: 23,
                    width: 23,
                  ),
                  label: Text(
                    'Continue with Meta',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: [
                          TextSpan(text: "Don't have an account? "),
                          TextSpan(
                            text: "Signup",
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//      Padding(
//         padding: const EdgeInsets.only(top: 120, right: 150),
//         child: Column(
//           children: <Widget>[
//             Center(child: Image.asset('assets/images/login.png')),
//             Align(
//               alignment: Alignment.topCenter,
//               child: Text(
//                 'Sign in to your ',
//                 style: TextStyle(
//                   fontSize: 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   letterSpacing: 1.6,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: 130),
//               child: Text(
//                 'account',
//                 style: TextStyle(
//                   fontSize: 25,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: 10),
//               child: Text(
//                 'Enter your email and password for login ',
//                 style: TextStyle(fontSize: 13, color: Colors.black),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 80, left: 40),
//               child: TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Email',
//                   hintText: 'Enter your email',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 12, left: 40),
//               child: TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Password',
//                   hintText: 'Enter your Password',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 20, left: 160),
//               child: Text(
//                 "Forgot Password?",
//                 style: TextStyle(
//                   fontSize: 11,
//                   color: Colors.black,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blueAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               onPressed: () {},
//               child: Text(
//                 'Login',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
