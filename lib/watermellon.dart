import 'dart:io';

import 'package:flutter/material.dart';
import 'package:florish/dashboard.dart';
import 'package:florish/my_plants.dart';
import 'package:florish/learn.dart';

class Watermellon extends StatelessWidget {
  const Watermellon({Key? key}) : super(key: key);

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
            child: Image.asset('images/watermellon.jpg'),
          ),
          const Text(
            'Buah semangka sangat identik dengan buah musim panas atau musim kemarau di beberapa negara. Banyaknya kandungan air serta rasanya yang manis menjadikan semangka sangat segar bila disantap saat suhu udara sedang panas-panasnya. Tanaman semangka merupuakan tumbuhan wilayah tropis. Tanaman semangka dibudidayakan secara luas di seluruh dunia, terutama untuk tujuan konsumsi buahnya. Daging buah semangka umumnya berwarna merah dengan banyak biji kecil berwarna hitam di tengahnya. Namun jenis kultivar semangka modern mempunyai variasi lain, misalnya daging buah berwarna kuning atau semangka tanpa biji.',
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
