import 'package:flutter/material.dart';
import 'loginscreen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.deepPurple,
        title: const Text('Home Page'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(
              Icons.logout,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          )
        ],
      ),
      body: Center(
        child: ListView(
          children: [
            ListItem('The Shawshank Redemption'),
            ListItem('Batman Begins'),
            ListItem('The Dark Knight'),
            ListItem('The Dark Knight begins'),
            ListItem('Avengers Infinity War'),
            ListItem('Seven'),
            ListItem('Transformers'),
            ListItem('Taken'),
            ListItem('Happy End'),
            ListItem('Sisu'),
            ListItem('John Wick'),
          ],
        ),
      ),
    );
  }
}

Widget ListItem(String message) {
  return Card(
    child: SizedBox(
        height: 80,
        child: Center(
            child: Text(message,
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)))),
  );
}
