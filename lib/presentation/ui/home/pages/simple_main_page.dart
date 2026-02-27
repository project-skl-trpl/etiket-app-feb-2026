import 'package:flutter/material.dart';

class SimpleMainPage extends StatefulWidget {
  const SimpleMainPage({super.key});

  @override
  State<SimpleMainPage> createState() => _SimpleMainPageState();
}

class _SimpleMainPageState extends State<SimpleMainPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('Home Page')),
    Center(child: Text('Ticket Page')),
    Center(child: Text('History Page')),
    Center(child: Text('Setting Page')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.qr_code_scanner),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_number),
            label: 'Ticket',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Hostory'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),
        ],
      ),
    );
  }
}
