import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_maps/views/map_adder.dart';
import 'package:flutter_maps/views/map_view.dart';

import '../essentials.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: BottomAppBar(
        //   // color: Colors.red,
        //   child: Container(
        //     color: Colors.redAccent,
        //     width: MediaQuery.of(context).size.width,
        //     height: 100,
        //   ),
        //   elevation: 0,
        // ),
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/background1.jpg"),
                  fit: BoxFit.cover,
                  scale: 2.0),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Column(
                children: [
                  SizedBox(height: proH(10)),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      height: proH(200),
                      child: Card(
                        child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/qwerty.png"),
                                fit: BoxFit.cover,
                                scale: 2.0),
                          ),
                        ),
                        color: Colors.grey.shade200.withOpacity(0.15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(proW(15.0))),
                        margin: EdgeInsets.all(proW(5)),
                      )),
                  SizedBox(
                    height: proH(160),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                            // color: Colors.grey.shade200.withOpacity(0.15),
                            width: MediaQuery.of(context).size.width / 3,
                            height: proH(140),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Maper_View()),
                                );
                              },
                              child: Card(
                                  color: Colors.grey.shade200.withOpacity(0.15),
                                  child: Center(
                                      child: Column(
                                    children: [
                                      SizedBox(
                                        height: proH(20),
                                      ),
                                      Icon(
                                        Icons.place,
                                        color: Colors.white,
                                        size: proW(50),
                                      ),
                                      SizedBox(
                                        height: proH(20),
                                      ),
                                      Text(
                                        "Check for Pothole",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(proW(10.0))),
                                  margin: EdgeInsets.all(proW(3))),
                            )),
                      ),
                      SizedBox(width: proW(20)),
                      Expanded(
                        flex: 1,
                        child: Container(
                            // color: Colors.grey.shade200.withOpacity(0.15),
                            width: MediaQuery.of(context).size.width / 3,
                            height: proH(140),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MapAdder()),
                                );
                              },
                              child: Card(
                                color: Colors.grey.shade200.withOpacity(0.15),
                                child: Center(
                                    child: Column(
                                  children: [
                                    SizedBox(
                                      height: proH(20),
                                    ),
                                    Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.white,
                                      size: proW(50),
                                    ),
                                    SizedBox(
                                      height: proH(20),
                                    ),
                                    Text(
                                      "Mark a Pothole",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )),
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(proW(10.0))),
                                margin: EdgeInsets.all(proW(3)),
                              ),
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: proH(138),
                  ),
                  Container(
                    color: Colors.grey.shade200.withOpacity(0.15),
                    width: MediaQuery.of(context).size.width,
                    height: proH(100),
                    child: Center(
                        child: Column(
                      children: [
                        SizedBox(
                          height: proH(20),
                        ),
                        Text(
                          "Unseen Abyss",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: proW(20),
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "\"See Through Unseen & Be Safe\"",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: proW(15),
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
