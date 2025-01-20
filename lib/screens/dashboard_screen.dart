import 'package:flutter/material.dart';


class LoanDashboard extends StatelessWidget {
  const LoanDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loan Dashboard'),
        automaticallyImplyLeading: false, // Removes the back arrow
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, John Doe!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Loan Balance'),
                subtitle: Text('Kshs. 12,500'),
                trailing: Icon(Icons.account_balance_wallet),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Active Loan'),
                subtitle: Text('Personal Loan - Kshs. 10,000'),
                trailing: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 16),
            Card(
              elevation: 4,
              child: ListTile(
                title: Text('Next Payment Due'),
                subtitle: Text('Feb 10, 2025 - Kshs. 500'),
                trailing: Icon(Icons.payment),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Loans',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        backgroundColor: Colors.black, // Black background
        unselectedItemColor: const Color.fromARGB(255, 7, 7, 7), // White for unselected icons
        selectedItemColor: const Color.fromARGB(255, 12, 12, 12), // White for selected icons
        showUnselectedLabels: true, // Ensures labels are always visible
      ),
    );
  }
}
