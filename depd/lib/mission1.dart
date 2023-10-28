// ignore_for_file: sized_box_for_whitespace, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:depd/mission2.dart';
import 'package:flutter/material.dart';

class Mission1Page extends StatefulWidget {
  const Mission1Page({super.key});

  @override
  State<Mission1Page> createState() => _Mission1PageState();
}

class _Mission1PageState extends State<Mission1Page> {
  bool isLiked = false;

  void toggleLike() {
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mission 1"),
        backgroundColor: Colors.blue,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.blue,
                  Colors.white
                ], // Adjust the colors as needed
              ),
            ),
          ),
          Container(
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
                        child: Image.asset(
                          "images/hotelBanner.jpeg",
                          fit: BoxFit.cover,
                        ),
                      )),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 2,
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(23),
                                  child: Image.asset(
                                    "images/hotel1.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ))),
                        Flexible(
                            flex: 2,
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(23),
                                  child: Image.asset(
                                    "images/hotel2.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ))),
                        Flexible(
                            flex: 2,
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(23),
                                  child: Image.asset(
                                    "images/hotel3.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ))),
                        Flexible(
                            flex: 2,
                            child: Container(
                                width: double.infinity,
                                height: double.infinity,
                                margin: const EdgeInsets.all(8),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(23),
                                  child: Image.asset(
                                    "images/hotel4.jpeg",
                                    fit: BoxFit.cover,
                                  ),
                                ))),
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 4,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Column(
                          children: [
                            Text("Welcome to Wakanda",
                                textAlign: TextAlign.center),
                            Expanded(
                              child: ListView(
                                children: [
                                  Text(
                                      "Wakanda Hotel, a luxurious paradise nestled within the heart of the fictional African nation of Wakanda, stands as a beacon of opulence and cultural richness. The hotel offers a unique fusion of cutting-edge technology and traditional African aesthetics, seamlessly blending the nation's advanced vibranium-powered infrastructure with its vibrant tribal heritage. Guests are welcomed with warm smiles and a deep appreciation for Wakanda's rich history and traditions, which are celebrated throughout the hotel."
                                      "\n\nEach room in Wakanda Hotel boasts panoramic views of the lush Wakandan landscape, from the sprawling savannahs to the shimmering Vibranium mines. The décor combines contemporary elegance with traditional African craftsmanship, showcasing intricate woodwork, handwoven textiles, and intricate beadwork. Guests can indulge in a diverse array of cuisine, from sumptuous traditional dishes prepared with locally sourced ingredients to global gastronomic delights. Wakanda Hotel offers an unforgettable experience where modernity harmonizes with tradition, inviting guests to explore the nation's heritage while enjoying the utmost comfort and luxury.")
                                ],
                              ),
                            ),
                          ],
                        ),
                      ))
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.all(16.0), // Adjust the padding as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Mission2Page();
                }));
              },
              child: Text("Book Now"), // Your button label
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 100.0), // Add top margin to the FAB
        child: ClipOval(
          child: FloatingActionButton(
            onPressed: toggleLike,
            backgroundColor: Colors.white,
            child: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              color: isLiked ? Colors.red : Colors.grey,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
