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
        "https://images.unsplash.com/photo-1733477092543-9d50b2da24d0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8fA%3D%3D",
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
        "https://plus.unsplash.com/premium_photo-1700590072727-c98504929014?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1700590072681-3267b66e53c3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
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
        "https://images.unsplash.com/photo-1718942899999-b3da4177ee2a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1680180226111-61202fef979c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z3JpbGxlZCUyMGZpc2h8ZW58MHx8MHx8fDA%3D",
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
        "https://images.unsplash.com/photo-1529563021893-cc83c992d75d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1703946908870-200ef3067952?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 20,
      description:
          "Sate maranggi adalah makanan khas Sunda di Indonesia yang biasa ditemukan di daerah Jawa Barat, khususnya Purwakarta dan Cianjur. Istilah maranggi sendiri dalam bahasa Sunda merupakan istilah petukangan, yakni seorang ahli pembuat sarung keris.",
      rate: 4.8),

  // Recommended destinations
  Kuliner(
      id: 8,
      name: "Bandrek",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1733544939032-b2a47f97ae6d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8MXx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1733544488291-07ae474f22c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8fA%3D%3D"
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 7,
      description:
          "Bandrek adalah minuman tradisional khas Sunda, Jawa Barat, yang dikenal sebagai penghangat tubuh alami. Terbuat dari campuran jahe, gula merah, dan rempah-rempah seperti kayu manis, cengkeh, dan serai, bandrek memiliki rasa khas yang hangat, manis, dan sedikit pedas. Kadang-kadang, santan atau susu ditambahkan untuk memberikan tekstur yang lebih kaya dan creamy.",
      rate: 4.8),

  Kuliner(
      id: 6,
      name: "Laksa",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1622896275857-0c5bb31a7ecd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8bGFrc2F8ZW58MHx8MHx8fDA%3D",
        "https://images.unsplash.com/photo-1633271333045-d6cd23567743?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGFrc2F8ZW58MHx8MHx8fDA%3D",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 12,
      description:
          "Laksa adalah hidangan berkuah khas yang populer di beberapa negara Asia Tenggara, termasuk Indonesia, Malaysia, dan Singapura. Hidangan ini memiliki banyak variasi tergantung daerahnya, namun secara umum, laksa merupakan sajian berbasis mie atau bihun yang disiram dengan kuah kaya rempah.",
      rate: 4.8),
  Kuliner(
      id: 5,
      name: "Mochi",
      category: 'rekomendasi',
      image: [
        "https://plus.unsplash.com/premium_photo-1700590072727-c98504929014?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1700590072681-3267b66e53c3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 30,
      description:
          "Mochi merupakan kue berbentuk bulat yang terbuat dari beras ketan dan biasanya memiliki adonan kacang sebagai isiannya. Mochi juga terkadang memiliki beberapa bahan tambahan lain, seperti air, gula, dan tepung jagung, serta isian lain, seperti cokelat atau kacang merah. Dalam pembuatan mochi, beras ketan yang digunakan akan ditumbuk hingga menjadi pasta, lalu dibentuk sesuai dengan keinginan (biasanya bulat). Mochi memiliki sejarah dan asal usul yang cukup panjang dan rumit. Kue beras yang satu ini memang terkenal berasal dari Jepang. Namun, mochi yang kita kenal di Indonesia (atau moci), bukan merupakan bawaan dari Jepang, melainkan makanan tradisional khas Jawa Barat yang berasal dari Kerajaan Sunda pada zaman dahulu.",
      rate: 4.7),
  Kuliner(
      id: 7,
      name: "Ikan Bakar",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1718942899999-b3da4177ee2a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1680180226111-61202fef979c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z3JpbGxlZCUyMGZpc2h8ZW58MHx8MHx8fDA%3D",
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
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1529563021893-cc83c992d75d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1703946908870-200ef3067952?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Cianjur, Jawa barat, Indonesia',
      review: random.nextInt(250) + 20,
      price: 20,
      description:
          "Sate maranggi adalah makanan khas Sunda di Indonesia yang biasa ditemukan di daerah Jawa Barat, khususnya Purwakarta dan Cianjur. Istilah maranggi sendiri dalam bahasa Sunda merupakan istilah petukangan, yakni seorang ahli pembuat sarung keris.",
      rate: 4.8),

  Kuliner(
      id: 11,
      name: "Mie Gulung",
      category: 'rekomendasi',
      image: [
        "https://images.unsplash.com/photo-1733545784816-476e15fdad8b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8Mnx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1733545793439-89efa82fca00?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwcm9maWxlLXBhZ2V8M3x8fGVufDB8fHx8fA%3D%3D",
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
        "https://plus.unsplash.com/premium_photo-1700590072727-c98504929014?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1700590072681-3267b66e53c3?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://plus.unsplash.com/premium_photo-1700830646842-5a9695b04544?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Cianjur',
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
        "https://images.unsplash.com/photo-1718942899999-b3da4177ee2a?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1680180226111-61202fef979c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8Z3JpbGxlZCUyMGZpc2h8ZW58MHx8MHx8fDA%3D",
      ],
      location: 'Cianjur',
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
        "https://images.unsplash.com/photo-1529563021893-cc83c992d75d?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
        "https://images.unsplash.com/photo-1703946908870-200ef3067952?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
      ],
      location: 'Cianjur',
      review: random.nextInt(250) + 20,
      price: 20,
      description:
          "Sate maranggi adalah makanan khas Sunda di Indonesia yang biasa ditemukan di daerah Jawa Barat, khususnya Purwakarta dan Cianjur. Istilah maranggi sendiri dalam bahasa Sunda merupakan istilah petukangan, yakni seorang ahli pembuat sarung keris.",
      rate: 4.8),
];
