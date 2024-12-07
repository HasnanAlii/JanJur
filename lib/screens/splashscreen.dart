import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
import 'package:tubes_janjur/screens/nav.dart';
import 'package:tubes_janjur/utils/cost.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();

//menunda 3 detik
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavBar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Image.asset(
          'assets/images/JanJur.png', // Pastikan gambar ada di folder assets
          width: double.infinity, // Lebar gambar sesuai dengan lebar layar
          height: double.infinity, // Tinggi gambar sesuai dengan tinggi layar
          fit: BoxFit.cover, // Sesuaikan ukuran gambar
        ),
      ),

      // child: Stack(
      //   alignment: Alignment.center,
      //   children: [
      //     Image.asset(
      //       'assets/images/splash.png', // Pastikan gambar ada di folder assets
      //       width: 280, // Sesuaikan ukuran gambar
      //       height: 280, // Sesuaikan ukuran gambar
      //     ),
      //     // Lottie.network(
      //     //   'assets/splashscreen/janjur.json',
      //     // width: 280,
      //     // height: 280,
      //     // ),
      //     Column(
      //       mainAxisSize: MainAxisSize.min,
      //       children: [
      //         SizedBox(
      //           height: 330,
      //         ),
      //         Text(
      //           'JanJur',
      //           style: TextStyle(
      //             color: kButtonColor,
      //             fontSize: 40,
      //             fontWeight: FontWeight.bold,
      //           ),
      //         ),
      //       ],
      //     )
      //   ],
      // ),
    );
  }
}
