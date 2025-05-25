import 'package:flutter/material.dart';
import 'package:login_page/loginscreen.dart';

void main() {
  runApp(
    MaterialApp(home: DashboardScreen(), debugShowCheckedModeBanner: false),
  );
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text("Dashboard"),
        leading: Icon(Icons.menu),
        actions: [
          Padding(padding: const EdgeInsets.only(left: 20)),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                 style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(8),
                  backgroundColor: Colors.lightBlue, // Background color
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Loginscreen()),
                  );
                },
                child: Icon(Icons.logout, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Account Info Card
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(color: Colors.grey.shade300, blurRadius: 6),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _infoRow("Account Holder", "John Doe"),
                    _infoRow("Account Number", "1234567890"),
                    _infoRow("Branch", "Downtown Branch"),
                    _infoRow("Balance", "\$12,340.50", isGreen: true),
                  ],
                ),
              ),
              SizedBox(height: 16),
              // Card Widget
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.purpleAccent],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "VISA",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    SizedBox(height: 16),
                    Text(
                      "**** **** **** 1234",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("John Doe", style: TextStyle(color: Colors.white)),
                        Text("12/26", style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 24),
              // Grid of Icons
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 4,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                children: [
                  _iconButton(Icons.account_balance, "Bank"),
                  _iconButton(Icons.credit_card, "Cards"),
                  _iconButton(Icons.payment, "Pay"),
                  _iconButton(Icons.show_chart, "Invest"),
                  _iconButton(Icons.support_agent, "Support"),
                  _iconButton(Icons.settings, "Settings"),
                  _iconButton(Icons.qr_code_scanner, "Scan"),
                  _iconButton(Icons.more_horiz, "More"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: "Accounts",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.send),
            label: "Fund Transfer",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: "Bill Payment",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: "Check Deposit",
          ),
        ],
      ),
    );
  }

  // Helper widget for info row
  Widget _infoRow(String title, String value, {bool isGreen = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(
            value,
            style: TextStyle(color: isGreen ? Colors.green : Colors.black),
          ),
        ],
      ),
    );
  }

  // Helper widget for icon buttons
  Widget _iconButton(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: Colors.lightBlue.shade100,
          radius: 26,
          child: Icon(icon, color: Colors.blue),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
