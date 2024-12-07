// import 'package:flutter/material.dart';

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

//   final List<Map<String, dynamic>> kuliner = [
//     {
//       "name": "Ordinary Burgers",
//       "price": 17230,
//       "rating": 4.9,
//       "distance": 190,
//       "image": "assets/images/d.png"
//     },
//     {
//       "name": "Burger With Meat",
//       "price": 17230,
//       "rating": 4.9,
//       "distance": 190,
//       "image": "assets/images/d.png"
//     },
//     {
//       "name": "Special Burger",
//       "price": 17230,
//       "rating": 4.9,
//       "distance": 190,
//       "image": "assets/images/d.png"
//     },
//     {
//       "name": "Special Burger",
//       "price": 17230,
//       "rating": 4.9,
//       "distance": 190,
//       "image": "assets/images/d.png"
//     },
//     {
//       "name": "Special Burger",
//       "price": 17230,
//       "rating": 4.9,
//       "distance": 190,
//       "image": "assets/images/d.png"
//     },
//     {
//       "name": "Special Burger",
//       "price": 17230,
//       "rating": 4.9,
//       "distance": 190,
//       "image": "assets/images/d.png"
//     },
//   ];

//   void _changeSelectedNavBar(int index) {
//     setState(() {
//       _selectedNavbar = index;
//     });
//   }

//   Widget _buildBody() {
//     switch (_selectedNavbar) {
//       case 0:
//         return _buildHomePage();
//       case 1:
//         return Center(child: Text("Halaman Belanja"));
//       case 2:
//         return Center(child: Text("Halaman Pesan"));
//       case 3:
//         return Center(child: Text("Halaman Profil"));
//       default:
//         return Center(child: Text("Halaman tidak ditemukan"));
//     }
//   }

//   Widget _buildHomePage() {
//     return CustomScrollView(
//       slivers: [
//         SliverToBoxAdapter(
//           child: Padding(
//             padding: const EdgeInsets.all(27.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Cari Kategori",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
//                 ),
//                 const SizedBox(height: 16),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     CategoryButton(
//                         icon: Icons.food_bank, label: "Burger", isActive: true),
//                     CategoryButton(icon: Icons.food_bank, label: "Pizza"),
//                     CategoryButton(icon: Icons.local_drink, label: "Drinks"),
//                     CategoryButton(icon: Icons.local_taxi, label: "Tacos"),
//                   ],
//                 ),
//                 const SizedBox(height: 10),
//               ],
//             ),
//           ),
//         ),
//         SliverPadding(
//           padding: const EdgeInsets.symmetric(horizontal: 27.0),
//           sliver: SliverGrid(
//             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2,
//               crossAxisSpacing: 16,
//               mainAxisSpacing: 16,
//               childAspectRatio: 0.8,
//             ),
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 final burger = kuliner[index];
//                 return kulinerCard(
//                   name: burger['name'],
//                   price: burger['price'],
//                   rating: burger['rating'],
//                   distance: burger['distance'],
//                   image: burger['image'],
//                 );
//               },
//               childCount: kuliner.length,
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(220.0),
//         child: AppBar(
//           flexibleSpace: Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('assets/images/d.png'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           title: const Padding(
//             padding: EdgeInsets.only(left: 10.0, top: 10.0),
//             child: Text(
//               'JanJur',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           centerTitle: false,
//           actions: [
//             IconButton(
//               icon: const Icon(Icons.search, color: Colors.white),
//               onPressed: () {
//                 // Implementasi fungsi pencarian
//               },
//             ),
//             IconButton(
//               icon: const Icon(Icons.notifications, color: Colors.white),
//               onPressed: () {
//                 // Implementasi fungsi notifikasi
//               },
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
//           BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star),
//             label: 'Favorit',
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
// }

// class CategoryButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//   final bool isActive;

//   const CategoryButton({
//     Key? key,
//     required this.icon,
//     required this.label,
//     this.isActive = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(16),
//           decoration: BoxDecoration(
//             color: isActive ? Colors.orange : Colors.grey[200],
//             borderRadius: BorderRadius.circular(12),
//             boxShadow: [
//               if (isActive)
//                 BoxShadow(
//                   color: Colors.orange.withOpacity(0.4),
//                   blurRadius: 10,
//                   offset: Offset(0, 4),
//                 ),
//             ],
//           ),
//           child: Icon(icon, color: isActive ? Colors.white : Colors.black),
//         ),
//         const SizedBox(height: 8),
//         Text(label, style: const TextStyle(fontSize: 14)),
//       ],
//     );
//   }
// }

// class kulinerCard extends StatelessWidget {
//   final String name;
//   final int price;
//   final double rating;
//   final int distance;
//   final String image;

//   const kulinerCard({
//     Key? key,
//     required this.name,
//     required this.price,
//     required this.rating,
//     required this.distance,
//     required this.image,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.1),
//             blurRadius: 10,
//             spreadRadius: 2,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ClipRRect(
//             borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//             child: Image.network(
//               image,
//               height: 160,
//               width: double.infinity,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   name,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 16),
//                 ),
//                 const SizedBox(height: 4),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         const Icon(Icons.star, size: 14, color: Colors.orange),
//                         const SizedBox(width: 4),
//                         Text("$rating"),
//                       ],
//                     ),
//                     Text("${distance}"),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   "\RP. $price",
//                   style: const TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 16,
//                     color: Colors.orange,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
