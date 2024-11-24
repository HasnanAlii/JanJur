// import 'package:flutter/material.dart';
// import 'package:tubes_janjur/screens/homescreen.dart';

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
//       appBar: PreferredSize(
//         preferredSize: Size.fromHeight(270.0),
//         child: AppBar(
//           flexibleSpace: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/d.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           title: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 10.0, top: 20.0),
//                 child: Text(
//                   'JanJur',
//                   style: TextStyle(
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                   ),
//                 ),
//               ),
//               // Text(
//               //   'Selamat datang di aplikasi',
//               //   style: TextStyle(
//               //     fontSize: 16,
//               //     color: Colors.white,
//               //   ),
//               // ),
//             ],
//           ),
//           centerTitle: false,
//           actions: [
//             Padding(
//               padding: EdgeInsets.only(right: 10.0, top: 20.0),
//               child: IconButton(
//                 icon: Icon(Icons.search, color: Colors.white),
//                 onPressed: () {
//                   // Implementasi fungsi pencarian
//                 },
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(right: 10.0, top: 20.0),
//               child: IconButton(
//                 icon: Icon(Icons.notifications, color: Colors.white),
//                 onPressed: () {
//                   // Implementasi fungsi notifikasi
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
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
//         return Center(child: Text("Halaman Utama"));
//       case 1:
//         return HomeScreen();
//       case 2:
//         return Center(child: Text("Halaman Pesan"));
//       case 3:
//         return Center(child: Text("Halaman Profil"));
//       default:
//         return Center(child: Text("Halaman tidak ditemukan"));
//     }
//   }
// }
