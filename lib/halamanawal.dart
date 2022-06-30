// import 'dart:html';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

final List<String> imgList = [
  'assets/images/slidea.png',
  'assets/images/slideb.png',
  'assets/images/slidec.png',
  'assets/images/slided.png',
  'assets/images/slidee.png',
  'assets/images/slidef.png',
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCF9766),
          title: Text("Weding Plane"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'keranjang',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              tooltip: 'Notifikasi',
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat),
              tooltip: 'Pesan',
              onPressed: () {},
            ),
          ],
        ),

        body: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 250,
                  ),
                  items: imgList
                      .map((item) => Container(
                            decoration: BoxDecoration(
                                image:
                                    DecorationImage(image: AssetImage(item))),
                          ))
                      .toList(),
                ),
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.all(10.0)),
                      Text(
                        'Our Vendor',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xffCF9766),
                            fontSize: 30),
                      ),
                    ],
                  ),
                  Container(
                      child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Slidable(
                          key: const ValueKey(1),
                          endActionPane:
                              ActionPane(motion: ScrollMotion(), children: [
                            ButtonBar(
                              buttonPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 10),
                              children: [
                                RaisedButton(
                                  child: Text("Photography"),
                                  textColor: Colors.white,
                                  color: Color(0xffCF9766),
                                  onPressed: () {},
                                ),
                              ],
                            )
                          ]),
                          child: ButtonBar(
                            alignment: MainAxisAlignment.start,
                            buttonPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            children: [
                              RaisedButton(
                                child: Text("Dekorasi"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                child: Text("Undangan"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                child: Text("Vanue"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                child: Text("Dress"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                child: Text("Rias"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                child: Text("Guest star"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                              RaisedButton(
                                child: Text("Catering"),
                                textColor: Colors.white,
                                color: Color(0xffCF9766),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 150,
                              child: Text(
                                'CHEKLIST',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffCF9766),
                                  fontSize: 17,
                                ),
                              ),
                              margin: EdgeInsets.all(10),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/icons/aa.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    Text(
                                      '0',
                                      style: const TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Text('all tasks',
                                      style: TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10))
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/icons/ab.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    Text(
                                      '0',
                                      style: const TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Text('Complete tasks',
                                     style: TextStyle(
                                      color: Color(0xffCF9766),
                                     ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          print('object');
                        },
                        child: Column(
                          children: [
                            Container(
                              width: 250,
                              child: Text(
                                'BUDGET',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffCF9766),
                                  fontSize: 17,
                                ),
                              ),
                              margin: EdgeInsets.all(10),
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/icons/ac.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    Text('Not defined',
                                     style: const TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Text('total',
                                     style: const TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10))
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      'assets/icons/ad.png',
                                      width: 100,
                                      height: 100,
                                    ),
                                    Text('Not defined',
                                     style: const TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Text('total',
                                     style: const TextStyle(
                                       color: Color(0xffCF9766),
                                      ),
                                    ),
                                    Padding(padding: EdgeInsets.all(10))
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                InkWell(
                                  onTap: () {
                                    print('object');
                                  },
                                  child: Column(
                                    children: [
                                      Container(
                                        width: 250,
                                        child: Text(
                                          'VENDOR',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Color(0xffCF9766),
                                            fontSize: 17,
                                          ),
                                        ),
                                        margin: EdgeInsets.all(10),
                                      ),
                                      Row(
                                        children: [
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/icons/ae.png',
                                                width: 100,
                                                height: 100,
                                              ),
                                              Text(
                                                '16',
                                                style: const TextStyle(
                                                 color: Color(0xffCF9766),
                                                ),
                                              ),
                                              Text('all guests',
                                               style: const TextStyle(
                                                color: Color(0xffCF9766),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.all(10))
                                            ],
                                          ),
                                          SizedBox(
                                            width: 30,
                                          ),
                                          Column(
                                            children: [
                                              Image.asset(
                                                'assets/icons/af.png',
                                                width: 100,
                                                height: 100,
                                              ),
                                              Text('3',
                                               style: const TextStyle(
                                                color: Color(0xffCF9766),
                                                ),
                                              ),
                                              Text('all events',
                                               style: const TextStyle(
                                                color: Color(0xffCF9766),
                                                ),
                                              ),
                                              Padding(
                                                  padding: EdgeInsets.all(10))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ])),
          ],
        ),
      ),
    );
  }
}
