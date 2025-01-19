import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      appBar: AppBar(
        title: const Text(
          'Login',
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
                  Icons.lock_outline,
                  size: 100,
                  color: Colors.black, // Black logo
                ),
              ),
              const SizedBox(height: 40),

              // Text Fields for email and password
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
              const SizedBox(height: 16),

              // Forgot Password link
              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Add your forgot password logic here
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Colors.black, // Black text
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Login Button
              ElevatedButton(
                onPressed: () {
                  // Add your login logic here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black, // White text
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 16),

              // Social Media Authentication Buttons
              _buildSocialAuthButton('Sign in with Google', 'assets/img_3.png', Colors.red),
              const SizedBox(height: 12),
              _buildSocialAuthButton('Sign in with Facebook', 'assets/img_4.png', Colors.blue),
              const SizedBox(height: 16),

              // Register Navigation
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      color: Colors.black, // Black text for prompt
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigate to Register page
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.black, // Black text for 'Register'
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
  Widget _buildSocialAuthButton(String label, String iconPath, Color color) {
    return ElevatedButton.icon(
      onPressed: () {
        // Add social authentication logic here (Google/Facebook)
      },
      icon: Image.asset(
        iconPath,
        height: 24,
        width: 24,
      ),
      label: Text(
        label,
        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Set button color based on platform
        padding: const EdgeInsets.symmetric(vertical: 16),
        textStyle: const TextStyle(fontSize: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        elevation: 5, // Add shadow for a more modern feel
      ),
    );
  }
}
