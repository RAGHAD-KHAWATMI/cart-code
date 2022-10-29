// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:developer';
import 'dart:html';

import 'package:cart/ckeckout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class cart extends StatefulWidget {
  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  List img = [
    "alexander-rotker-l8p1aWZqHvE-unsplash.jpg",
    "behnam-norouzi-F4rWoM3cYjI-unsplash.jpg",
    "hipkicks-HcqA34-uWo4-unsplash.jpg",
    "imani-bahati-LxVxPA1LOVM-unsplash.jpg",
    "manik-roy-1ObeMBhLi0k-unsplash.jpg",
    "nikita-kachanovsky-ad_0wMHtvlU-unsplash.jpg",
  ];
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                "My cart",
                style: GoogleFonts.inter(color: Colors.black, fontSize: 25),
              ),
              SizedBox(height: 5),
              Text(
                "6 items",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
             SizedBox(height: 5),
            
            ],
          ),
        ),
        backgroundColor: Color.fromRGBO(246,246,246,1),
      ),
      body: SizedBox(
        height: 900,
        child: Column(
          children: [
            Expanded(
              child: (ListView.separated(
                itemCount: 6,
                itemBuilder: (ctx, index) {
                  return Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    height: 140,
                    width: 200,
                    child: Row(children: [
                      Container(
                        padding: EdgeInsets.all(15),
                        width: 140,
                        child: Image.asset("/img/" + img[index],
                            fit: BoxFit.fill),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "some random product",
                              style: GoogleFonts.inter(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 83, 82, 82)),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "99.9 USD",
                              style: GoogleFonts.inter(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color.fromARGB(255, 236, 230, 230),
                              ),
                              width: 100,
                              height: 30,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        count++;
                                      });
                                    },
                                    icon: (Icon(Icons.add)),
                                    iconSize: 19,
                                  ),
                                  SizedBox(width: 5),
                                  Text(count.toString()),
                                  SizedBox(width: 5),
                                  IconButton(
                                    onPressed: () {
                                      setState(() {
                                        count--;
                                      });
                                    },
                                    icon: (Icon(Icons.remove)),
                                    iconSize: 19,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ]),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    color: Color.fromARGB(255, 3, 3, 3),
                    height: 15,
                    thickness: 0.1,
                    indent: 25,
                    endIndent: 25,
                  );
                },
              )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total 9900 USD",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const checkout()),
                      );
                    },
                    // ignore: sort_child_properties_last
                    child: Text("CHECKOUT",
                        style: TextStyle(
                          fontSize: 18,
                        )),
                    textColor: Colors.white,
                    color: Colors.black,
                    height: 50,
                    minWidth: 500,
                    elevation: 0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
