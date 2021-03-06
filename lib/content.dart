import 'package:flutter/material.dart';
import 'package:florish/dashboard.dart';
import 'package:florish/my_plants.dart';
import 'package:florish/learn.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    index = 0;

    widgets = [];
    widgets.add(const Dashboard());
    widgets.add(const MyPlants());
    widgets.add(const Learn());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgets[index],
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
          });
        },
      ),
    );
  }
}
