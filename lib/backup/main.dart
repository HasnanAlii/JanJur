// import 'package:flutter/material.dart';
// import 'package:tubes_janjur/screens/cari.dart';
// import 'package:tubes_janjur/screens/favorit.dart';
// import 'package:tubes_janjur/screens/homescreen.dart';
// import 'package:tubes_janjur/screens/profil.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.orange,
//       ),
//       home: BelajarNavBar(),
//     );
//   }
// }

// class BelajarNavBar extends StatefulWidget {
//   @override
//   _BelajarNavBarState createState() => _BelajarNavBarState();
// }

// class _BelajarNavBarState extends State<BelajarNavBar> {
//   int _selectedNavbar = 0;

//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _selectedNavbar = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildBody(),
//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Utama',
//           ),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag), label: 'Belanja'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.message),
//             label: 'Pesan',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profil',
//           ),
//         ],
//         currentIndex: _selectedNavbar,
//         selectedItemColor: Colors.orange,
//         unselectedItemColor: Colors.grey,
//         showUnselectedLabels: true,
//         onTap: _changeSelectedNavBar,
//       ),
//     );
//   }

//   Widget _buildBody() {
//     switch (_selectedNavbar) {
//       case 0:
//         return HomeScreen();
//       case 1:
//         return SearchScreen();
//       case 2:
//         return FavoritScreen();
//       case 3:
//         return ProfileScreen();
//       default:
//         return Center(child: Text("Halaman tidak ditemukan"));
//     }
//   }
// }

// Widget buildAppBar() {
//   return Container(
//     height: 70,
//     decoration: BoxDecoration(
//       color: Color.fromARGB(255, 240, 94, 10),
//       boxShadow: [
//         BoxShadow(
//           color: Colors.grey.withOpacity(0.4),
//           spreadRadius: 5,
//           blurRadius: 10,
//           offset: Offset(0, 5),
//         ),
//       ],
//     ),
//     child: SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.only(left: 15, right: 15),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text(
//               'Janjur',
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.white,
//               ),
//             ),
//             Row(
//               children: [
//                 buildSearchButton(),
//                 SizedBox(width: 15),
//                 IconButton(
//                   icon:
//                       Icon(Icons.shopping_cart, size: 28, color: Colors.white),
//                   onPressed: () {},
//                 ),
//                 SizedBox(width: 15),
//                 IconButton(
//                   icon: Icon(Icons.chat, size: 28, color: Colors.white),
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }

// Widget buildSearchButton() {
//   return Container(
//     width: 190,
//     height: 43,
//     padding: EdgeInsets.symmetric(horizontal: 15, vertical: 0),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadius.circular(6),
//     ),
//     child: TextField(
//       decoration: InputDecoration(
//         hintText: 'Cari Makanan',
//         hintStyle: TextStyle(
//           color: Color.fromARGB(255, 240, 94, 10),
//           fontSize: 15,
//         ),
//         prefixIcon: Icon(
//           Icons.search,
//           color: Color.fromARGB(255, 240, 94, 10),
//           size: 20,
//         ),
//         border: InputBorder.none,
//       ),
//       style: TextStyle(color: Colors.black, fontSize: 14),
//     ),
//   );
// }
