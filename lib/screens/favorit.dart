import 'package:flutter/material.dart';
import 'package:tubes_janjur/models/kuliner_model.dart';
import 'package:tubes_janjur/screens/Detail.dart';
import 'package:tubes_janjur/screens/homescreen.dart';
import 'package:tubes_janjur/utils/cost.dart';
import 'package:tubes_janjur/widgets/favorite_kuliner.dart';

class FavoritScreen extends StatefulWidget {
  const FavoritScreen({super.key});

  @override
  State<FavoritScreen> createState() => _FavoritScreenState();
}

class _FavoritScreenState extends State<FavoritScreen> {
  List<Kuliner> favorit =
      listKuliner.where((element) => element.category == 'favorite').toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: buildAppBar(),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Kuliner Favorit',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                      children: List.generate(
                          favorit.length,
                          (index) => Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => DetailScreen(
                                                makanan: favorit[index])));
                                  },
                                  child:
                                      FavoriteKuliner(favorite: favorit[index]),
                                ),
                              )))))
        ],
      ),
    );
  }
}
