import 'dart:io';

import 'package:flutter/material.dart';
import 'package:florish/dashboard.dart';
import 'package:florish/my_plants.dart';
import 'package:florish/learn.dart';

class Banana extends StatelessWidget {
  const Banana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Florish',
      home: MyContainer(),
    );
  }
}

class MyContainer extends StatefulWidget {
  const MyContainer({Key? key}) : super(key: key);

  @override
  State<MyContainer> createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  late int index;
  late List<Widget> widgets;
  late String contentType;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    contentType = 'content';

    index = 0;

    widgets = [];
    widgets.add(const Dashboard());
    widgets.add(const MyPlants());
    widgets.add(const Learn());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: contentType == 'content' ? const MyContent() : widgets[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.compost),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'My Fruits',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Learn',
          ),
        ],
        onTap: (int tappedIndex) {
          setState(() {
            index = tappedIndex;
            contentType = 'nav';
          });
        },
      ),
    );
  }
}

class MyContent extends StatefulWidget {
  const MyContent({Key? key}) : super(key: key);

  @override
  State<MyContent> createState() => _MyContentState();
}

class _MyContentState extends State<MyContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0),
            child: Image.asset('images/banana.jpg'),
          ),
          const Text(
            'Pisang adalah kelompok tanaman herba yang berbuah dan diketahui berasal dari kawasan tropis. Tanaman ini juga tergolong dalam kelompok tumbuhan monokotil atau berbiji tunggal. Pisang bukanlah pohon karena tidak memilki batang berkayu. Tumbuhan pisang mempunyai struktur fisik yang unik dan khas dibanding tanaman lainnya, sehingga memudahkan manusia untuk mengidentifikasi tumbuhan yang dikategorikan sebagai tanaman pisang.Berdasarkan bentuk morfologinya, bagian tanaman pisang dapat dibagi menjadi beberapa bagian, meliputi akar, batang, daun, buah, dan bunga.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
