import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(
          children: <Widget>[
            SizedBox(
              height: 350.0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(30.0),
                  bottomLeft: Radius.circular(30.0),
                ),
                child: Image.asset('images/cover.jpg', fit: BoxFit.cover),
              ),
            ),
            SafeArea(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(Icons.share, color: Colors.white),
                    SizedBox(width: 10),
                    Icon(Icons.favorite_border_outlined, color: Colors.white)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 10,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Venice',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    Row(children: const [
                      Icon(Icons.place, color: Colors.white),
                      Text("Italy",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ))
                    ]),
                    const SizedBox(height: 7),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.star, color: Colors.white),
                          Icon(Icons.star, color: Colors.white),
                          Icon(Icons.star, color: Colors.white),
                          Icon(Icons.star, color: Colors.white),
                          Icon(Icons.star_border_outlined, color: Colors.white),
                          Text("4.9",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ]),
                  ]),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.wifi,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ),
                  const Text("Wifi",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.flatware,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ),
                  const Text("キッチン",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.beach_access,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ),
                  const Text("ビーチ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold))
                ],
              ),
              Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(7.0),
                    width: 45,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black54),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.more_horiz,
                      color: Colors.black54,
                      size: 30,
                    ),
                  ),
                  const Text("その他",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black54,
                          fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("詳細",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          Container(
              padding: const EdgeInsets.all(20.0),
              width: 380,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                  "イタリア共和国北東部に位置する都市で、その周辺地域を含む人口約250,000人の基礎自治体（コムーネ）。ヴェネト州の州都、ヴェネツィア県の県都である。中世にはヴェネツィア共和国の首都として栄えた都市で、「アドリア海の女王」「水の都」などの別名を持つ。英語では｢Venice」と呼ばれ、これに由来して日本でも、ヴェニス、ベニスと呼ばれることもある。",style: TextStyle(
                  fontSize: 15,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold))
          ),     ]),
          Container(
            padding:const EdgeInsets.all(30.0),
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              width:160,
              height:50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const StadiumBorder(),
                  shadowColor: Colors.black,
                  elevation: 5.0,

                ),
                child: const Text('ホテルを予約する',style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
              ),
            ),
          ),

      ]),
    ));
  }
}
