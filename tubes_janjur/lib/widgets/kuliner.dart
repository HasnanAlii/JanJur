import 'package:flutter/material.dart';
import 'package:tubes_janjur/models/kuliner_model.dart';

class RekomendasiKulinerGrid extends StatelessWidget {
  final List<Kuliner> makananList; // Daftar makanan yang akan ditampilkan
  const RekomendasiKulinerGrid({super.key, required this.makananList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Jumlah kolom per baris (2 kolom)
        mainAxisSpacing: 10, // Jarak antar baris
        crossAxisSpacing: 10, // Jarak antar kolom
        childAspectRatio: 3 / 4, // Rasio aspek kotak (lebar/tinggi)
      ),
      itemCount: makananList.length,
      itemBuilder: (context, index) {
        final makanan = makananList[index];
        return RekomendasiKuliner(makanan: makanan);
      },
    );
  }
}

class RekomendasiKuliner extends StatelessWidget {
  final Kuliner makanan;
  const RekomendasiKuliner({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Gambar makanan
          Container(
            height: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  makanan.image?.isNotEmpty == true
                      ? makanan.image![0]
                      : 'default_image_url',
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          // Nama makanan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              makanan.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 5),
          // Rating dan review makanan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Icon(Icons.star, size: 14, color: Colors.yellow[800]),
                const SizedBox(width: 5),
                Text(
                  "${makanan.rate}",
                  style: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.w600),
                ),
                const SizedBox(width: 5),
                Text(
                  "(${makanan.review})",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          // Harga makanan
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "Rp. ${makanan.price}",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
