import 'package:flutter/material.dart';
import 'package:tubes_janjur/screens/cari.dart';
import 'package:tubes_janjur/screens/favorit.dart';
import 'package:tubes_janjur/screens/homescreen.dart';
import 'package:tubes_janjur/screens/profil.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorit',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }

  Widget _buildBody() {
    switch (_selectedNavbar) {
      case 0:
        return HomeScreen();
      case 1:
        return SearchScreen();
      case 2:
        return FavoritScreen();
      case 3:
        return ProfileScreen();
      default:
        return Center(child: Text("Halaman tidak ditemukan"));
    }
  }
}
