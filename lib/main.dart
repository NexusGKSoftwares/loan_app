import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(LoanApp());
}

class LoanApp extends StatelessWidget {
  const LoanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loan App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: OnboardingPages(),
    );
  }
}

class OnboardingPages extends StatefulWidget {
  const OnboardingPages({super.key});

  @override
  State<OnboardingPages> createState() => _OnboardingPagesState();
}

class _OnboardingPagesState extends State<OnboardingPages> {
  final PageController _pageController = PageController(); // Controls the PageView
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _isLastPage = index == 2;
              });
            },
            children: [
              WelcomePage1(),
              WelcomePage2(),
              WelcomePage3(),
            ],
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Column(
              children: [
                SmoothPageIndicator(
                  controller: _pageController,
                  count: 3, // Total pages
                  effect: WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blue,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
                SizedBox(height: 20),
                _isLastPage
                    ? ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text('Get Started'),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                )
                    : TextButton(
                  onPressed: () {
                    _pageController.jumpToPage(2);
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(color: Colors.blue, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.greenAccent], // Gradient background
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          // Image with margin and borderRadius
          Container(
            margin: EdgeInsets.only(top: 130), // Move the image down slightly
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Add border radius to the image
              child: Image.asset(
                'assets/img.png', // Image for the first page
                width: double.infinity,
                height: 300, // Adjust height of the image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text content
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to Loan App',
                    style: TextStyle(
                      fontSize: 50, // Increased font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Black text
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Get easy access to loans with low interest rates and flexible repayment terms.',
                    style: TextStyle(
                      fontSize: 22, // Increased font size
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Black text
                      height: 1.5,
                      letterSpacing: 1.5, // Slight space between letters
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.greenAccent], // Gradient background
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          // Image with margin and borderRadius
          Container(
            margin: EdgeInsets.only(top: 140), // Move the image down slightly
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Add border radius to the image
              child: Image.asset(
                'assets/img_1.png', // Image for the second page
                width: double.infinity,
                height: 350, // Adjust height of the image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text content
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Easy Loans, Anytime!',
                    style: TextStyle(
                      fontSize: 50, // Increased font size
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Black text
                      letterSpacing: 2.0,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 5.0,
                          color: Colors.black.withOpacity(0.6),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Our services are available 24/7. Apply for a loan anytime, anywhere.',
                    style: TextStyle(
                      fontSize: 22, // Increased font size
                      fontWeight: FontWeight.w500,
                      color: Colors.black, // Black text
                      height: 1.5,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blueAccent, Colors.greenAccent], // Gradient background
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          // Image with margin and borderRadius
          Container(
            margin: EdgeInsets.only(top: 150), // Move the image down slightly
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20), // Add border radius to the image
              child: Image.asset(
                'assets/img_2.png', // Image for the third page
                width: double.infinity,
                height: 400, // Adjust height of the image
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Text content
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get Started Now!',
                  style: TextStyle(
                    fontSize: 50, // Increased font size
                    fontWeight: FontWeight.bold,
                    color: Colors.black, // Black text
                    letterSpacing: 2.0,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 5.0,
                        color: Colors.black.withOpacity(0.6),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                Text(
                  'Sign up now to begin your journey with flexible loans at your fingertips.',
                  style: TextStyle(
                    fontSize: 22, // Increased font size
                    fontWeight: FontWeight.w500,
                    color: Colors.black, // Black text
                    height: 1.5,
                    letterSpacing: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                // SizedBox(height: 40),
                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => RegisterPage()),
                //     );
                //   },
                //   child: Text('Get Started'),
                //   style: ElevatedButton.styleFrom(
                //     padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                //     backgroundColor: Colors.blue,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                //   ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Center(child: Text('Register Page')),
    );
  }
}
