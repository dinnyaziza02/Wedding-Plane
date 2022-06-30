// import 'dart:html';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wedding_plane/profile.dart';
import 'package:wedding_plane/referensi.dart';
import 'cheklist.dart';
import 'halamanawal.dart';

class Haider extends StatefulWidget {
  @override
  _HaiderState createState() => _HaiderState();
}

class _HaiderState extends State<Haider> {
  int _currentIndex = 0;
  final tabs = [
    HomePage(),
    ListData(),
    Referensi(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        iconSize: 20,
        fixedColor: Color(0xffCF9766),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color(0xffCF9766)),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, color: Color(0xffCF9766)),
            label: 'cheklist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite, color: Color(0xffCF9766)),
            label: 'Inspiration',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Color(0xffCF9766)), label: 'Profile'),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
