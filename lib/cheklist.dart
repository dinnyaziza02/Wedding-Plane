import 'package:wedding_plane/halamanawal.dart';
import 'package:wedding_plane/home.dart';
import 'package:wedding_plane/slidepertama.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'formdata.dart';

class ListData extends StatefulWidget {
  const ListData({Key? key}) : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.arrow_back,
                  color: Colors.white), // set your color here
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return Haider();
                }));
              },
            ),
            backgroundColor: Color(0xffCF9766),
            title: Center(
              child: Text("Todolist"),
            )
          ),
        body: Container(
          child: ListView(
            children: [
              Card(
                color:Color(0xffCF9766) ,
                  child: ListTile(  
                    leading: IconButton(
                      icon: Icon(Icons.add,
                          color: Colors.white), // set your color here
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return FormData();
                        }));
                      },
                    ),
                  title: Text("Tambahkan daftar list anda",
                         style:TextStyle(color: Colors.white)),
                 )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
