import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  // void addOnePoint(){print(teamAPoints+=1);}
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text(
            "Points Counter",
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const Text(
                      "team A",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$teamAPoints",
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamAPoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
                const SizedBox(
                  height: 420,
                  child: VerticalDivider(
                    width: 5,
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Column(
                  children: [
                    const Text(
                      "team B",
                      style:
                          TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "$teamBPoints",
                      style: const TextStyle(
                        fontSize: 150,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 1;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 1 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 2;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 2 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                    const SizedBox(
                      height: 15,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            teamBPoints += 3;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          minimumSize: const Size(150, 50),
                        ),
                        child: const Text(
                          "Add 3 Point",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        )),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamAPoints = 0;
                    teamBPoints = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade400,
                  minimumSize: const Size(150, 50),
                ),
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
