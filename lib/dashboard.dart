import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 125,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green.shade300,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: const [
                      Text('Temperature'),
                      Text(
                        '29',
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 125,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green.shade300,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: const [
                      Text('Humidity'),
                      Text(
                        '14',
                        style: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                child: const SizedBox(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: Text(
                      'START',
                      style: TextStyle(
                        fontSize: 30
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
