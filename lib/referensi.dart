import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:wedding_plane/blog.dart';

class Referensi extends StatefulWidget {
  const Referensi({Key? key}) : super(key: key);

  @override
  _ReferensiState createState() => _ReferensiState();
}

class _ReferensiState extends State<Referensi>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffCF9766),
          title: Center(
            child: Text("Inspirasi Wedding"),
          ),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Container(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Blog();
                    }));
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/slided.png',
                      ),
                      const Text(
                        'Make your Dream Wedding',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/slided.png',
                    ),
                    const Text(
                      'Make your Dream Wedding',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Color(0xffCF9766),
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ],
          ),
        ));
  }
}
