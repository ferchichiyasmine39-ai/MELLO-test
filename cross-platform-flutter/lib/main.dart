import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DashboardCoach(),
  ));
}

class DashboardCoach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // 1) El menu 3al jnab (beige)
          Container(
            width: 220,
            color: Color(0xFFE8D8B9),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'COACH',
                    style: TextStyle(
                      color: Colors.brown,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.brown),
                  title: Text('Accueil', style: TextStyle(color: Colors.brown)),
                ),
                ListTile(
                  leading: Icon(Icons.people, color: Colors.brown),
                  title: Text('Clients', style: TextStyle(color: Colors.brown)),
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today, color: Colors.brown),
                  title: Text('Séances', style: TextStyle(color: Colors.brown)),
                ),
                ListTile(
                  leading: Icon(Icons.settings, color: Colors.brown),
                  title: Text('Paramètres', style: TextStyle(color: Colors.brown)),
                ),
              ],
            ),
          ),

          // 2) El west: Welcome Coach bark
          Expanded(
            child: Container(
              color: Color(0xFFFFF8EE),
              child: Center(
                child: Text(
                  'Welcome',
                  style: TextStyle(fontSize: 32, color: Colors.brown),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}