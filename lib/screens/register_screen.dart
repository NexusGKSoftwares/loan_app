import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  // Set the background color to white
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            color: Colors.black,  // Black text for app bar
          ),
        ),
        backgroundColor: Colors.white,  // White app bar for consistency
        elevation: 0,  // No shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),  // Add padding around the screen
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo or placeholder for branding
              Center(
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.black,  // Black logo
                ),
              ),
              const SizedBox(height: 40),

              // Text Fields for username, email, and password
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
                child: const Text('Register'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,  // White text
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),

              // Login Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black,  // Black text for prompt
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Login page
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black,  // Black text for 'Login'
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

  // Reusable method for text field widgets
  Widget _buildTextField({
    required String label,
    required IconData icon,
    required bool obscureText,
    required TextInputType keyboardType,
  }) {
    return TextField(
      obscureText: obscureText,
      keyboardType: keyboardType,
      style: const TextStyle(color: Colors.black, fontSize: 18),  // Increased font size
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 18),  // Increased label font size
        prefixIcon: Icon(icon, color: Colors.black),  // Black icon
        filled: true,
        fillColor: Colors.black12,  // Light black background for text field
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0), // Increased padding
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),  // Black border
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),  // Black border on focus
        ),
      ),
    );
  }
}
