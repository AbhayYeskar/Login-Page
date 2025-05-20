// import 'package:flutter/material.dart';
// import 'package:login_page/dashboard_screen.dart';

// class Securityscreen extends StatelessWidget {
//   const Securityscreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MFA Required'),
//         toolbarHeight: 50,
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,

//           children: [
//             Padding(
//               padding: EdgeInsets.only(right: 280),

//               child: Image(
//                 image: AssetImage("assets/images/Security.png"),
//                 height: 90,
//                 width: 240,
//                 fit: BoxFit.cover,
//                 colorBlendMode: BlendMode.srcOver,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20),
//               child: Text(
//                 'Security Question',
//                 style: TextStyle(
//                   fontSize: 45,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//             SizedBox(height: 25),
//             Text(
//               'What is your favourite vacation spot?',
//               style: TextStyle(
//                 fontSize: 13,
//                 color: Colors.black38,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 20),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Answer',
//                 hintText: 'Your Answer',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DashboardScreen()),
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blueAccent,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),

//               child: Text(
//                 'Submit',
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.white,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//             SizedBox(height: 20),
//             Center(
//               child: Text(
//                 'Login with OTP ? ',
//                 style: TextStyle(
//                   fontSize: 15,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueAccent,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:login_page/dashboard_screen.dart';

class Securityscreen extends StatelessWidget {
  const Securityscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MFA Required'),
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 280),
              child: Image.asset(
                "assets/images/Security.png",
                height: 90,
                width: 240,
                fit: BoxFit.cover,
                colorBlendMode: BlendMode.srcOver,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                'Security Question',
                style: TextStyle(
                  fontSize: 45,
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
            ),
            SizedBox(height: 20),
            Builder(
              builder:
                  (context) => ElevatedButton(
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
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
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
    );
  }
}
