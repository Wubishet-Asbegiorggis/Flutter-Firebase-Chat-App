import 'package:flutter/material.dart';
import 'sign_up_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to my Flutter-Fire Chat App',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.blue,
        padding: const EdgeInsets.symmetric(horizontal: 36.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Login, please !',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              const SizedBox(height: 10),
              const Text(
                'Email',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 10),
              const TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Password',
                style: TextStyle(color: Colors.black),
              ),
              const SizedBox(height: 10),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10), // Adjust padding here
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'Sign in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16), // Adjust font size here
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpPage()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10), // Adjust padding here
                  backgroundColor: Colors.orange,
                ),
                child: const Text(
                  'New User? Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16), // Adjust font size here
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '© ${DateTime.now().year}',
                style: const TextStyle(fontSize: 16, color: Colors.white),
              ),
              const SizedBox(width: 5),
              const Text(
                'Developed by:  Wubshet Asbe',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
