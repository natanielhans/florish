import 'package:florish/content.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage('images/background.jpeg'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.grass,
                  color: Colors.white.withOpacity(0.8),
                  size: 100,
                ),
                const Text(
                  'Welcome to Florish',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 30.0),
                  child: Text(
                    'You just grew a green thumb™',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondAnimation) {
                            return const Content();
                          }
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Colors.green[800],
                    ),
                    child: const Text('Enter Florish'),
                  ),
                ),
                // SizedBox(
                //   width: MediaQuery.of(context).size.width,
                //   child: ElevatedButton(
                //     onPressed: () {},
                //     style: ElevatedButton.styleFrom(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(30.0),
                //       ),
                //       primary: Colors.green[800],
                //     ),
                //     child: const Text('Create an account'),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
