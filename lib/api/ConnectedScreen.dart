import 'package:flutter/material.dart';

class ConnectedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Connected'),
        backgroundColor: Colors.deepPurple, // Feel free to change the color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You are logged in!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Add your logic for logout or navigating to another screen
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
