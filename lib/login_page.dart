import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255), 
      body: Center( 
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              SizedBox(
                height: 200,
                child: Image.asset(
                  'assets/images/bluedoorz.png', 
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 50), 
              Container(
                width: 250, 
                child: TextField(
                  controller: _usernameController,
                  decoration: InputDecoration(
                    labelText: 'Username',
                    labelStyle: TextStyle(color: Colors.blue[300]), 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue[300]!), 
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20), 
              Container(
                width: 250, 
                child: TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.blue[300]), 
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.blue[300]!), 
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50), 
              SizedBox(
                width: 150, 
                height: 40, 
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            HomePage(username: _usernameController.text),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[300], 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12), 
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 16, color: Colors.white), 
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
