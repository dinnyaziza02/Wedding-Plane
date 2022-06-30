import 'package:flutter/material.dart';
import 'cheklist.dart';

class FormData extends StatefulWidget {
  @override
  _FormDataState createState() => _FormDataState();
}

class _FormDataState extends State<FormData> {
  final _formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final tanggal = TextEditingController();
  final keterangan = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              Icon(Icons.arrow_back, color: Colors.white), // set your color here
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ListData();
            }));
          },
        ),
        backgroundColor: Color(0xffCF9766),
        title: Text("List Data"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                controller: name,
                decoration: InputDecoration(
                  hintText: "ketik nama anda",
                  labelText: "Nama Lengkap",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: tanggal,
                decoration: InputDecoration(
                  labelText: "TANGGAL",
                  icon: Icon(Icons.calendar_month),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'tanggal tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                controller: keterangan,
                decoration: InputDecoration(
                  labelText: "KETERANGAN",
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'keterangan tidak boleh kosong';
                  }
                  return null;
                },
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
