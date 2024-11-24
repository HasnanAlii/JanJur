import 'package:flutter/material.dart';
import 'package:tubes_janjur/screens/homescreen.dart';
import 'package:tubes_janjur/utils/cost.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: buildAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                hintText: 'Cari Makanan',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
            const SizedBox(height: 20),
            // Section: Pencarian Terakhir
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Pencarian Terakhir',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Aksi hapus semua pencarian terakhir
                  },
                  child: const Text(
                    'Delete',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            // Daftar Pencarian Terakhir
            Wrap(
              spacing: 10, // Jarak horizontal antar item
              runSpacing: 15, // Jarak vertikal antar baris
              children: [
                _buildRecentSearchItem('Fast food', context),
                _buildRecentSearchItem('Dessert', context),
                _buildRecentSearchItem('French', context),
                _buildRecentSearchItem('Pastry', context),
              ],
            ),
            const SizedBox(height: 250),
            // Section: Pesanan Terakhir
            const Text(
              'Review Terakhir',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            // Daftar Pesanan
            Expanded(
              child: ListView(
                children: [
                  _buildOrderItem(
                    imageUrl: 'assets/images/d.png',
                    name: 'Ordinary Burgers',
                    restaurant: 'Burger Restaurant',
                    rating: 4.9,
                    distance: '100m',
                  ),
                  _buildOrderItem(
                    imageUrl: 'assets/images/d.png',
                    name: 'Ordinary Burgers',
                    restaurant: 'Burger Restaurant',
                    rating: 4.9,
                    distance: '100m',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecentSearchItem(String text, BuildContext context) {
    return Chip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.search, size: 18, color: Colors.black),
          const SizedBox(width: 5),
          Text(text),
        ],
      ),
      backgroundColor: Colors.grey[200],
      deleteIcon: const Icon(Icons.close, size: 18, color: Colors.black),
      onDeleted: () {
        // Aksi hapus item pencarian
      },
    );
  }

  Widget _buildOrderItem({
    required String imageUrl,
    required String name,
    required String restaurant,
    required double rating,
    required String distance,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          // Gambar makanan
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 15),
          // Detail makanan
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  restaurant,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, size: 16, color: Colors.yellow[800]),
                    const SizedBox(width: 5),
                    Text(
                      rating.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.location_on, size: 16, color: Colors.grey),
                    const SizedBox(width: 5),
                    Text(
                      distance,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
