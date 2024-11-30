import 'package:flutter/material.dart';
import 'package:tubes_janjur/models/kuliner_model.dart';
import 'package:tubes_janjur/screens/Detail.dart';
import 'package:tubes_janjur/utils/cost.dart';
import 'package:tubes_janjur/widgets/kuliner.dart';
import 'package:tubes_janjur/widgets/popular_kuliner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int _selectedNavbar = 0;

  // void _changeSelectedNavBar(int index) {
  //   setState(() {
  //     _selectedNavbar = index;
  //   });
  // }

  List<Kuliner> popular =
      listKuliner.where((element) => element.category == 'popular').toList();
  List<Kuliner> rekomendasi = listKuliner
      .where((element) => element.category == 'rekomendasi')
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: buildAppBar(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // buildAppBar(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    popular.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => DetailScreen(
                                          makanan: popular[index])));
                            },
                            child: PopularKuliner(makanan: popular[index]),
                          ),
                        )),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Cari Kategori",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryButton(
                          icon: Icons.fastfood,
                          label: "Makanan",
                          isActive: true),
                      CategoryButton(icon: Icons.local_bar, label: "Minuman"),
                      CategoryButton(icon: Icons.free_breakfast, label: "Kopi"),
                      CategoryButton(icon: Icons.local_drink, label: "Rujak"),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rekomendasi untuk Kamu',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Lihat Semua',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GridView.builder(
                physics:
                    NeverScrollableScrollPhysics(), // Disable internal scroll
                shrinkWrap: true, // Allow GridView to take only required space
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.8,
                ),
                itemCount: rekomendasi.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) =>
                                    DetailScreen(makanan: rekomendasi[index])));
                      },
                      child: RekomendasiKuliner(makanan: rekomendasi[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.home_filled,
      //         size: 30,
      //         color: _selectedNavbar == 0
      //             ? Color.fromARGB(255, 240, 94, 10)
      //             : Color.fromARGB(255, 37, 37, 37),
      //       ),
      //       label: 'Utama',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.search_rounded,
      //         size: 30,
      //         color: _selectedNavbar == 1
      //             ? Color.fromARGB(255, 240, 94, 10)
      //             : Color.fromARGB(255, 37, 37, 37),
      //       ),
      //       label: 'Cari',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.star,
      //         size: 30,
      //         color: _selectedNavbar == 2
      //             ? Color.fromARGB(255, 240, 94, 10)
      //             : Color.fromARGB(255, 37, 37, 37),
      //       ),
      //       label: 'Favorit',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(
      //         Icons.person_3_sharp,
      //         size: 30,
      //         color: _selectedNavbar == 3
      //             ? Color.fromARGB(255, 240, 94, 10)
      //             : Color.fromARGB(255, 37, 37, 37),
      //       ),
      //       label: 'Profil',
      //     ),
      //   ],
      //   currentIndex: _selectedNavbar,
      //   selectedItemColor: Colors.orange,
      //   unselectedItemColor: Colors.grey,
      //   showUnselectedLabels: true,
      //   onTap: _changeSelectedNavBar,
      // ),
    );
  }
}

Widget buildAppBar() {
  return AppBar(
    toolbarHeight: 70,
    backgroundColor: kButtonColor,
    elevation: 5,
    shadowColor: Colors.grey.withOpacity(0.4),
    title: Padding(
      padding: const EdgeInsets.only(left: 5, right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Janjur',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          Row(
            children: [
              // buildSearchButton(),
              // SizedBox(width: 10),
              // IconButton(
              //   icon: Icon(Icons.shopping_cart, size: 28, color: Colors.white),
              //   onPressed: () {},
              // ),
              SizedBox(width: 10),
              IconButton(
                icon: Icon(Icons.chat, size: 28, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

class CategoryButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isActive;

  const CategoryButton({
    Key? key,
    required this.icon,
    required this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: isActive ? kButtonColor : Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              if (isActive)
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
            ],
          ),
          child: Icon(icon, color: isActive ? Colors.white : Colors.black),
        ),
        const SizedBox(height: 8),
        Text(label, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
