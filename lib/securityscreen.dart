import 'package:flutter/material.dart';
import 'package:login_page/dashboard_screen.dart';
import 'package:login_page/provider/securityprovider.dart';
import 'package:provider/provider.dart';

class Securityscreen extends StatefulWidget {
  const Securityscreen({super.key});

  @override
  State<Securityscreen> createState() => _SecurityscreenState();
}

class _SecurityscreenState extends State<Securityscreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SecurityProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('MFA Required'),
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: SizedBox(
          height: 490,
          width: 390,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),

              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withValues(alpha: 0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,

                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 280, top: 20, left: 20),

                    child: Image(
                      image: AssetImage("assets/images/Security.png"),
                      height: 100,
                      width: 50,
                      fit: BoxFit.cover,
                      colorBlendMode: BlendMode.srcOver,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'Security Question',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    'What is your favourite vacation spot?',
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.black38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Answer',
                      hintText: 'Your Answer',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: provider.updateAnswer,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DashboardScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),

                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Login with OTP ? ',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
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
