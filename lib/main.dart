import 'package:flutter/material.dart';

void main() {
  runApp(const ConteurPoint());
}

// ignore: must_be_immutable
class ConteurPoint extends StatefulWidget {
  const ConteurPoint({Key? key}) : super(key: key);

  @override
  State<ConteurPoint> createState() => _ConteurPointState();
}

class _ConteurPointState extends State<ConteurPoint> {
  int goupeAPoints = 0;

  int goupeBPoints = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('Conteur De Points'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Groupe A',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$goupeAPoints',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            goupeAPoints++;
                          });
                          // ignore: avoid_print
                          print(goupeAPoints);
                        },
                        child: const Text(
                          'Ajouter 1 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //const Spacer(
                      //flex: 1,
                      //),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            goupeAPoints += 2;
                          });
                        },
                        child: const Text(
                          'Ajouter 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //const Spacer(
                      //flex: 1,
                      //),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            goupeAPoints += 3;
                          });
                        },
                        child: const Text(
                          'Ajouter 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //const Spacer(
                      //flex: 12,
                      //),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 500,
                  child: VerticalDivider(
                    indent: 30,
                    endIndent: 30,
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                SizedBox(
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Groupe B',
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Text(
                        '$goupeBPoints',
                        style: const TextStyle(
                          fontSize: 150,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            goupeBPoints++;
                          });
                        },
                        child: const Text(
                          'Ajouter 1 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //const Spacer(
                      //flex: 1,
                      //),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            goupeBPoints += 2;
                          });
                        },
                        child: const Text(
                          'Ajouter 2 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //const Spacer(
                      //flex: 1,
                      //),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        onPressed: () {
                          setState(() {
                            goupeBPoints += 3;
                          });
                        },
                        child: const Text(
                          'Ajouter 3 point',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      //const Spacer(
                      //flex: 12,
                      //),
                    ],
                  ),
                ),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                minimumSize: const Size(150, 50),
              ),
              onPressed: () {
                setState(() {
                  goupeAPoints = 0;
                  goupeBPoints = 0;
                });
              },
              child: const Text(
                'Reset',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
