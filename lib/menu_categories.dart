import 'package:flutter/material.dart';
import 'menu_screen.dart';

class MenuCategories extends StatefulWidget {
  @override
  _MenuCategoriesState createState() => _MenuCategoriesState();
}

class _MenuCategoriesState extends State<MenuCategories> {
  int _selectedIndex = 0;

  static const List<String> _categories = ['Makanan', 'Minuman', 'Camilan'];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rendi\'s Recipes'), // Updated app title
      ),
      body: MenuScreen(category: _categories[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: 'Makanan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_cafe),
            label: 'Minuman',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_dining),
            label: 'Camilan',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
