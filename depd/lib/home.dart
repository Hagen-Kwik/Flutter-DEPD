import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        centerTitle: true,
      ),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.center,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Hello World 0!",
                style: TextStyle(fontSize: 48, color: Colors.blue),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Hello World 1!",
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      ),
                      Text(
                        "Hello World 2!",
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Hello World 3!",
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      ),
                      Text(
                        "Hello World 4!",
                        style: TextStyle(fontSize: 24, color: Colors.blue),
                      ),
                    ],
                  ),
                ],
              ),
              Text(
                "Hello World 0!",
                style: TextStyle(fontSize: 48, color: Colors.blue),
              ),
            ],
          )),
    );
  }
}
