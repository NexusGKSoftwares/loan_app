import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the LoginPage

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            color: Colors.black, // Black text for app bar
          ),
        ),
        backgroundColor: Colors.white, // White app bar for consistency
        elevation: 0, // No shadow
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Add padding around the screen
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Logo or placeholder for branding
              const Center(
                child: Icon(
                  Icons.account_circle,
                  size: 100,
                  color: Colors.black, // Black logo
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
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black, // White text
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: const Text('Register'),
              ),
              const SizedBox(height: 16),

              // Social Media Authentication Buttons
              _buildSocialAuthButton('Sign up with Google', Icons.login, Colors.red),
              _buildSocialAuthButton('Sign up with Facebook', Icons.login, Colors.blue),
              const SizedBox(height: 16),

              // Login Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.black, // Black text for prompt
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Login page
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.black, // Black text for 'Login'
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
      style: const TextStyle(color: Colors.black, fontSize: 18), // Increased font size
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.black, fontSize: 18), // Increased label font size
        prefixIcon: Icon(icon, color: Colors.black), // Black icon
        filled: true,
        fillColor: Colors.black12, // Light black background for text field
        contentPadding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0), // Increased padding
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Black border
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black), // Black border on focus
        ),
      ),
    );
  }

  // Reusable Social Authentication Button
  Widget _buildSocialAuthButton(String label, IconData icon, Color color) {
    return ElevatedButton.icon(
      onPressed: () {
        // Add social authentication logic here (Google/Facebook)
      },
      icon: Icon(icon, color: Colors.white),
      label: Text(
        label,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Set button color based on platform
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(fontSize: 16),
      ),
    );
  }
}
