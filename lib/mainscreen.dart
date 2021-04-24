import 'package:constructor_equipment/loginscreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOMEPAGE'),
        backgroundColor: Color.fromRGBO(191, 30, 46, 50),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("MENU",style: TextStyle(color: Colors.white,fontSize: 20)),
              decoration: BoxDecoration(color: Colors.red.shade900),
            ),
            ListTile(
              title: Text("Services",style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Renting",style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Products",style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("My Account",style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Contact Us",style: TextStyle(fontSize: 16)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(title: Text("Logout",style: TextStyle(fontSize: 16)), onTap: _logout),
          ],
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          Container(
            child: Text(
              'Welcome To Construction Equipment!',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      )),
    );
  }

  void _logout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (content) => LoginScreen()));
  }
}
