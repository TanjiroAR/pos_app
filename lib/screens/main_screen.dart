import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pos_app/screens/home.dart';
import 'package:pos_app/screens/setting.dart';
import 'package:pos_app/screens/store.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Home(),
    const Store(),
    const Setting(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text("POS App"),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.primary, 
      ),
      body: _widgetOptions.elementAt(_currentIndex),

      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(icon: const Icon(Icons.home), title: const Text('الرئيسية')),
          SalomonBottomBarItem(icon: const Icon(Icons.store), title: const Text('المخزن')),
          SalomonBottomBarItem(icon: const Icon(Icons.settings), title: const Text('الاعدادات')),
        ],
        currentIndex: _currentIndex,
        onTap: _changeItem,
      ),
    );
  }

  void _changeItem(int value) {
    if (kDebugMode) {
      print(value);
    }
    setState(() {
      _currentIndex = value;
    });
  }
}
