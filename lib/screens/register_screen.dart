import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the LoginScreen

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo or Placeholder
              const Center(
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 40),

              // Text Fields
              _buildTextField(
                label: 'Username',
                icon: Icons.person,
                obscureText: false,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Email',
                icon: Icons.email,
                obscureText: false,
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              _buildTextField(
                label: 'Password',
                icon: Icons.lock,
                obscureText: true,
                keyboardType: TextInputType.text,
              ),
              const SizedBox(height: 32),

              // Register Button
              ElevatedButton(
                onPressed: () {
                  // Add your registration logic here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: const Text('Register'),
              ),
              const SizedBox(height: 16),

              // Login Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to LoginScreen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required IconData icon,
    required bool obscureText,
    required TextInputType keyboardType,
  }) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.black, fontSize: 18),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 18),
        prefixIcon: Icon(icon, color: Colors.black),
        filled: true,
        fillColor: Colors.black12,
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
      ),
    );
  }
}
