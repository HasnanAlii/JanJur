import 'dart:math';

Random random = Random();

class Kuliner {
  final int id, price, review;
  final List<String>? image;
  final String name, description, category, location;
  final double rate;

  Kuliner({
    required this.id,
    required this.name,
    required this.category,
    required this.image,
    required this.location,
    required this.review,
    required this.price,
    required this.description,
    required this.rate,
  });
}

List<Kuliner> listKuliner = [
  // Popular destinations
  Kuliner(
      id: 1,
      name: "Geser untuk temukan Kulier andalan Cianjur",
      category: 'popular',
      image: [
        "assets/images/d.png",
      ],
      location: 'Cianjur',
      review: random.nextInt(250) + 20,
      price: 150,
      description: "description",
      rate: 5),
  Kuliner(
      id: 2,
      name: "Mochi",
      category: 'popular',
      image: [
        "assets/images/kuliner/moci1.jpg",
        "assets/images/kuliner/moci2.jpg",
        "assets/images/kuliner/moci4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 30,
      description:
          "Mochi merupakan kue berbentuk bulat yang terbuat dari beras ketan dan biasanya memiliki adonan kacang sebagai isiannya. Mochi juga terkadang memiliki beberapa bahan tambahan lain, seperti air, gula, dan tepung jagung, serta isian lain, seperti cokelat atau kacang merah. Dalam pembuatan mochi, beras ketan yang digunakan akan ditumbuk hingga menjadi pasta, lalu dibentuk sesuai dengan keinginan (biasanya bulat). Mochi memiliki sejarah dan asal usul yang cukup panjang dan rumit. Kue beras yang satu ini memang terkenal berasal dari Jepang. Namun, mochi yang kita kenal di Indonesia (atau moci), bukan merupakan bawaan dari Jepang, melainkan makanan tradisional khas Jawa Barat yang berasal dari Kerajaan Sunda pada zaman dahulu.",
      rate: 4.7),
  Kuliner(
      id: 3,
      name: "Ikan Bakar",
      category: 'popular',
      image: [
        "assets/images/kuliner/ib1.jpg",
        "assets/images/kuliner/ib2.jpg",
        "assets/images/kuliner/ib3.jpg",
        "assets/images/kuliner/ib4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          "Ikan bakar adalah hidangan ikan yang dibakar atau dipanggang di atas api atau bara api. Hidangan ikan yang dibakar, muncul secara universal di berbagai belahan dunia.Akan tetapi secara khusus di dunia internasional, istilah ikan bakar merujuk kepada ikan bakar khas Indonesia dan Malaysia berupa ikan atau boga bahari lain yang dipanggang di atas arang atau bara api.",
      rate: 5.0),
  Kuliner(
      id: 4,
      name: "Sate Maranggi",
      category: 'popular',
      image: [
        "assets/images/kuliner/sate1.jpg",
        "assets/images/kuliner/sate2.jpg",
        "assets/images/kuliner/sate3.jpg",
        "assets/images/kuliner/sate4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 20,
      description:
          "Sate maranggi adalah makanan khas Sunda di Indonesia yang biasa ditemukan di daerah Jawa Barat, khususnya Purwakarta dan Cianjur. Istilah maranggi sendiri dalam bahasa Sunda merupakan istilah petukangan, yakni seorang ahli pembuat sarung keris.",
      rate: 4.8),

  // Recommended destinations
  Kuliner(
      id: 5,
      name: "Mochi",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/moci1.jpg",
        "assets/images/kuliner/moci2.jpg",
        "assets/images/kuliner/moci4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 30,
      description:
          "Mochi merupakan kue berbentuk bulat yang terbuat dari beras ketan dan biasanya memiliki adonan kacang sebagai isiannya. Mochi juga terkadang memiliki beberapa bahan tambahan lain, seperti air, gula, dan tepung jagung, serta isian lain, seperti cokelat atau kacang merah. Dalam pembuatan mochi, beras ketan yang digunakan akan ditumbuk hingga menjadi pasta, lalu dibentuk sesuai dengan keinginan (biasanya bulat). Mochi memiliki sejarah dan asal usul yang cukup panjang dan rumit. Kue beras yang satu ini memang terkenal berasal dari Jepang. Namun, mochi yang kita kenal di Indonesia (atau moci), bukan merupakan bawaan dari Jepang, melainkan makanan tradisional khas Jawa Barat yang berasal dari Kerajaan Sunda pada zaman dahulu.",
      rate: 4.7),
  Kuliner(
      id: 6,
      name: "Laksa",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/laksa1.jpg",
        "assets/images/kuliner/laksa2.jpg",
        "assets/images/kuliner/laksa3.jpg",
        "assets/images/kuliner/laksa4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 12,
      description:
          "Laksa adalah hidangan berkuah khas yang populer di beberapa negara Asia Tenggara, termasuk Indonesia, Malaysia, dan Singapura. Hidangan ini memiliki banyak variasi tergantung daerahnya, namun secara umum, laksa merupakan sajian berbasis mie atau bihun yang disiram dengan kuah kaya rempah.",
      rate: 4.8),
  Kuliner(
      id: 7,
      name: "Es Cincau",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/cincau1.jpg",
        "assets/images/kuliner/cincau2.jpg",
        "assets/images/kuliner/cincau3.jpg",
        "assets/images/kuliner/cincau4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 5,
      description:
          "Es cincau adalah minuman tradisional khas Indonesia yang terbuat dari cincau—bahan berbentuk gel kenyal hasil olahan daun cincau—dicampur dengan kuah manis, santan atau susu, dan es batu. Minuman ini terkenal karena rasanya yang segar, teksturnya yang lembut, serta manfaat kesehatannya, seperti membantu meredakan panas dalam dan melancarkan pencernaan.",
      rate: 4.9),
  Kuliner(
      id: 8,
      name: "Bandrek",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/badrek2.jpg",
        "assets/images/kuliner/bandrek1.jpg",
        "assets/images/kuliner/bandrek3.jpg",
        "assets/images/kuliner/bandrek4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 7,
      description:
          "Bandrek adalah minuman tradisional khas Sunda, Jawa Barat, yang dikenal sebagai penghangat tubuh alami. Terbuat dari campuran jahe, gula merah, dan rempah-rempah seperti kayu manis, cengkeh, dan serai, bandrek memiliki rasa khas yang hangat, manis, dan sedikit pedas. Kadang-kadang, santan atau susu ditambahkan untuk memberikan tekstur yang lebih kaya dan creamy.",
      rate: 4.8),
  Kuliner(
      id: 9,
      name: "Jus Jeruk",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/jus1.jpg",
        "assets/images/kuliner/jus2.jpg",
        "assets/images/kuliner/jus3.jpg",
        "assets/images/kuliner/jus4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          "Jus jeruk adalah minuman yang terbuat dari perasan buah jeruk segar. Jus ini dikenal luas karena rasanya yang manis, segar, dan sedikit asam, serta kaya akan kandungan vitamin C yang baik untuk kesehatan tubuh. Jus jeruk sering dijadikan pilihan minuman sehat karena dapat membantu meningkatkan daya tahan tubuh, menjaga kesehatan kulit, dan meningkatkan sistem kekebalan tubuh.",
      rate: 4.8),
  Kuliner(
      id: 15,
      name: "Bubur Ayam",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/bubur4.jpg",
        "assets/images/kuliner/bubur1.jpg",
        "assets/images/kuliner/bubur2.jpg",
        "assets/images/kuliner/bubur3.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 15,
      description:
          "Bubur ayam adalah hidangan sarapan khas Indonesia yang terbuat dari bubur nasi yang lembut dan diberi berbagai topping, terutama potongan ayam yang sudah dibumbui, serta pelengkap lainnya. Bubur ayam sangat populer di berbagai daerah, terutama di Jakarta, dan sering dijadikan pilihan makanan yang menghangatkan dan mengenyangkan, cocok untuk dimakan di pagi hari.",
      rate: 4.8),
  Kuliner(
      id: 10,
      name: "Es Kelapa Muda",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/s kelapa1.jpg",
        "assets/images/kuliner/s kelapa2.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 8,
      description:
          "Es kelapa adalah minuman segar yang terbuat dari air kelapa muda yang dicampur dengan es batu. Minuman ini sangat populer di Indonesia, terutama di daerah tropis, karena rasanya yang menyegarkan dan menyehatkan, serta cocok dinikmati pada cuaca panas. Es kelapa juga sering disajikan dengan daging kelapa muda yang berserat sebagai tambahan tekstur.",
      rate: 4.9),

  Kuliner(
      id: 11,
      name: "Mie Gulung",
      category: 'rekomendasi',
      image: [
        "assets/images/kuliner/mgulung1.jpg",
        "assets/images/kuliner/mgulung2.jpg",
        "assets/images/kuliner/mgulung3.jpg",
        "assets/images/kuliner/mgulung4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 10,
      description:
          "Mie Gulung adalah hidangan unik yang terbuat dari mie yang digulung dan kemudian digoreng atau disajikan dengan bumbu tertentu. Mie gulung sering dijadikan camilan atau hidangan ringan yang memiliki rasa gurih dan tekstur yang renyah di luar, namun lembut di dalam. Mie gulung bisa ditemukan di berbagai warung atau pedagang kaki lima, terutama di Indonesia.",
      rate: 4.7),

  Kuliner(
      id: 10,
      name: "Mochi",
      category: 'favorite',
      image: [
        "assets/images/kuliner/moci1.jpg",
        "assets/images/kuliner/moci2.jpg",
        "assets/images/kuliner/moci4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 30,
      description:
          "Mochi merupakan kue berbentuk bulat yang terbuat dari beras ketan dan biasanya memiliki adonan kacang sebagai isiannya. Mochi juga terkadang memiliki beberapa bahan tambahan lain, seperti air, gula, dan tepung jagung, serta isian lain, seperti cokelat atau kacang merah. Dalam pembuatan mochi, beras ketan yang digunakan akan ditumbuk hingga menjadi pasta, lalu dibentuk sesuai dengan keinginan (biasanya bulat). Mochi memiliki sejarah dan asal usul yang cukup panjang dan rumit. Kue beras yang satu ini memang terkenal berasal dari Jepang. Namun, mochi yang kita kenal di Indonesia (atau moci), bukan merupakan bawaan dari Jepang, melainkan makanan tradisional khas Jawa Barat yang berasal dari Kerajaan Sunda pada zaman dahulu.",
      rate: 4.7),

  Kuliner(
      id: 11,
      name: "Ikan Bakar",
      category: 'favorite',
      image: [
        "assets/images/kuliner/ib1.jpg",
        "assets/images/kuliner/ib2.jpg",
        "assets/images/kuliner/ib3.jpg",
        "assets/images/kuliner/ib4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 150,
      description:
          "Ikan bakar adalah hidangan ikan yang dibakar atau dipanggang di atas api atau bara api. Hidangan ikan yang dibakar, muncul secara universal di berbagai belahan dunia.Akan tetapi secara khusus di dunia internasional, istilah ikan bakar merujuk kepada ikan bakar khas Indonesia dan Malaysia berupa ikan atau boga bahari lain yang dipanggang di atas arang atau bara api.",
      rate: 5.0),
  Kuliner(
      id: 12,
      name: "Sate Maranggi",
      category: 'favorite',
      image: [
        "assets/images/kuliner/sate1.jpg",
        "assets/images/kuliner/sate2.jpg",
        "assets/images/kuliner/sate3.jpg",
        "assets/images/kuliner/sate4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 20,
      description:
          "Sate maranggi adalah makanan khas Sunda di Indonesia yang biasa ditemukan di daerah Jawa Barat, khususnya Purwakarta dan Cianjur. Istilah maranggi sendiri dalam bahasa Sunda merupakan istilah petukangan, yakni seorang ahli pembuat sarung keris.",
      rate: 4.8),
  Kuliner(
      id: 12,
      name: "",
      category: 'Mie Gulung',
      image: [
        "assets/images/kuliner/mgulung1.jpg",
        "assets/images/kuliner/mgulung2.jpg",
        "assets/images/kuliner/mgulung3.jpg",
        "assets/images/kuliner/mgulung4.jpg",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 10,
      description:
          "Mie Gulung adalah hidangan unik yang terbuat dari mie yang digulung dan kemudian digoreng atau disajikan dengan bumbu tertentu. Mie gulung sering dijadikan camilan atau hidangan ringan yang memiliki rasa gurih dan tekstur yang renyah di luar, namun lembut di dalam. Mie gulung bisa ditemukan di berbagai warung atau pedagang kaki lima, terutama di Indonesia.",
      rate: 4.7),
];
