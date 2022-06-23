import 'dart:ui';

import 'package:flutter/material.dart';

class Learn extends StatelessWidget {
  const Learn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Image.asset('images/cactus.jpeg'),
          ),
          const Text(
            'Kaktus dapat tumbuh pada waktu yang lama tanpa air.Kaktus biasa ditemukan di daerah-daerah yang kering (gurun). Kata jamak untuk kaktus adalah kakti. Kaktus memiliki akar yang panjang untuk mencari air dan memperlebar penyerapan air dalam tanah. Air yang diserap kaktus disimpan dalam ruang di batangnya.Kaktus juga memiliki daun yang berubah bentuk menjadi duri sehingga dapat mengurangi penguapan air lewat daun.Oleh sebab itu, kaktus dapat tumbuh pada waktu yang lama tanpa air.',
            style: TextStyle(
              fontSize: 14
            ),
          ),
        ],
      ),
    );
  }
}
