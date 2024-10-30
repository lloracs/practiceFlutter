import 'package:flutter/material.dart';
import 'screens/sneaker_list_screen.dart';
import 'screens/account_screen.dart';
import 'screens/cart_screen.dart';

void main() {
  runApp(const SneakerShopApp());
}

class SneakerShopApp extends StatelessWidget {
  const SneakerShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(        
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
        ),
        iconTheme: const IconThemeData(color: Colors.white)
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    AccountScreen(),
    SneakerListScreen(),    
    CartScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: _pages.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Аккаунт',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Корзина',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white,     
        unselectedItemColor: const Color.fromARGB(255, 214, 214, 214),    
        backgroundColor: const Color.fromARGB(255, 0, 17, 255),      
      ),
    );
  }
}
