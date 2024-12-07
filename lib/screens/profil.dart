import 'package:flutter/material.dart';
import 'package:tubes_janjur/utils/cost.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Pengaturan Profil',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            // Foto Profil
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/user.jpg'),
            ),
            const SizedBox(height: 10),
            // Nama & Email
            const Text(
              'Silahkan Masuk',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              '',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 30),
            // Menu Pengaturan
            _buildMenuSection(
              title: 'Profil',
              items: [
                _buildMenuItem(
                  icon: Icons.person,
                  text: 'Data Pribadi',
                  onTap: () {
                    // Navigasi ke Data Pribadi
                  },
                ),
                _buildMenuItem(
                  icon: Icons.settings,
                  text: 'Pengaturan',
                  onTap: () {
                    // Navigasi ke Pengaturan
                  },
                ),
              ],
            ),
            _buildMenuSection(
              title: 'Support',
              items: [
                _buildMenuItem(
                  icon: Icons.help_center,
                  text: 'Pusat Bantuan',
                  onTap: () {
                    // Navigasi ke Pusat Bantuan
                  },
                ),
                _buildMenuItem(
                  icon: Icons.delete,
                  text: 'Permintaan penghapusan akun',
                  onTap: () {
                    // Navigasi ke penghapusan akun
                  },
                ),
                _buildMenuItem(
                  icon: Icons.account_circle,
                  text: 'Tambah Akun Lain',
                  onTap: () {
                    // Navigasi ke tambah akun
                  },
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Tombol Keluar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: OutlinedButton.icon(
                onPressed: () {
                  // Log in
                },
                icon: const Icon(Icons.login, color: Colors.green),
                label: const Text(
                  'Masuk',
                  style: TextStyle(color: Colors.green, fontSize: 16),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.green),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuSection(
      {required String title, required List<Widget> items}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 10),
          ...items,
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(icon, color: Colors.black54),
                const SizedBox(width: 15),
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Icon(Icons.arrow_forward_ios,
                color: Colors.black54, size: 16),
          ],
        ),
      ),
    );
  }
}
