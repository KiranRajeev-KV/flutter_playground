import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    ClickCounter(),
    Center(child: Text('List View Page')), // Placeholder for your list view page
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Click Counter App'),
        ),
        body: Center(
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.touch_app),
              label: 'Counter',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
            ),
          ],
        ),
      ),
    );
  }
}

class ClickCounter extends StatefulWidget {
  const ClickCounter({super.key});

  @override
  State<ClickCounter> createState() => _ClickCounterState();
}

class _ClickCounterState extends State<ClickCounter> {
  int _count = 0;

  void _increment() {
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Button pressed $_count times'),
        const SizedBox(height: 16),
        ElevatedButton(
          onPressed: _increment,
          child: const Text('Click me'),
        ),
      ],
    );
  }
}
