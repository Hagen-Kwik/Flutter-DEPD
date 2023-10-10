import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPage();
}

class _RoomPage extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Room Page"),
          centerTitle: true,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Flexible(
            child: Column(
              children: [
                Flexible(
                    flex: 2,
                    child: Container(
                        color: Colors.white,
                        width: double.infinity,
                        height: double.infinity,
                        margin: EdgeInsets.all(8),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(23),
                          child: Image.asset(
                            "images/background.jpg",
                            fit: BoxFit.cover,
                          ),
                        ))),
                Flexible(
                    flex: 3,
                    child: Row(children: [
                      Flexible(
                          flex: 3,
                          child: Container(
                              margin: EdgeInsets.all(8),
                              width: double.infinity,
                              height: double.infinity,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.vertical,
                                child: Text(
                                    "One of the best AC games I've seen. The story lacks characters One of the best AC games I've seen. The story lacks characteOne of the best AC games I've seen. The story lacks characteOne of the best AC games I've seen. The story lacks characteOne of the best AC games I've seen. The story lacks characteOne of the best AC games I've seen. The story lacks characteOne of the best AC games I've seen. The story lacks characteyou can empathize with, parkour is not as advanced as AC Unity, but the concept of what Assassin's Creed is all about is written all over the game. AC Mirage brings new players an understanding of what an Assassin is, why they do what they do, and why they are committed to the life of an Assassin. The city is huge and very much alive, people will see you kill and react to it resulting in being on wanted posters, You will see random N "),
                              ))),
                      Flexible(
                          flex: 1,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              children: [
                                Flexible(
                                    flex: 2,
                                    child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        margin: EdgeInsets.all(8),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(23),
                                          child: Image.asset(
                                            "images/background.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ))),
                                Flexible(
                                    flex: 2,
                                    child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        margin: EdgeInsets.all(8),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(23),
                                          child: Image.asset(
                                            "images/background.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ))),
                                Flexible(
                                    flex: 2,
                                    child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        margin: EdgeInsets.all(8),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(23),
                                          child: Image.asset(
                                            "images/background.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ))),
                                Flexible(
                                    flex: 2,
                                    child: Container(
                                        width: double.infinity,
                                        height: double.infinity,
                                        margin: EdgeInsets.all(8),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(23),
                                          child: Image.asset(
                                            "images/background.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ))),
                              ],
                            ),
                          ))
                    ])),
                Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.green,
                      width: double.infinity,
                      height: double.infinity,
                    ))
              ],
            ),
          ),
        ));
  }
}
