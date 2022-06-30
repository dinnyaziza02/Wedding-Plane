import 'package:flutter/material.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
       backgroundColor: Color(0xffCF9766),
            title: Center(
              child: Text("Inspirasi Wedding"),
            ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15),
            child: Text('MAKE YOUR DREAM WEDDING BECOME TRUE',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Wrap(
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              CircleAvatar(
                radius: 16,
                backgroundImage: AssetImage('assets/images/bl.jpeg'),
              ),
              const SizedBox(
                width: 6,
              ),
              Text('Titis Nur Azizah', 
                style: TextStyle(color: Color(0xffCF9766))
              ),
              Padding(padding: EdgeInsets.all(3)),
              Text('Minggu, 12 Juni, 2020', 
                style: TextStyle(
                  color: Colors.grey, fontStyle: FontStyle.italic
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/slided.png'),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            RichText(
               text: TextSpan(
                children: [
                  TextSpan(
                    text: 'P',
                    style: TextStyle(
                      color: Colors.black, fontSize: 32
                    ),
                  ),
                  TextSpan(
                    text: 'erlu menentukan tema pernikahan lebih dulu sebelum menemukan inspirasi dekorasi akad nikah di rumah yang tepat. Bahkan kini inspirasi dekorasi akad nikah di rumah juga bisa memiliki tampilan seperti digelar di gedung.Ads by Andbeyond.mediaBaca artikel wolipop, "8 Inspirasi Dekorasi Akad Nikah di Rumah yang Kekinian" selengkapnya https://wolipop.detik.com/wedding-inspiration/d-5998603/8-inspirasi-dekorasi-akad-nikah-di-rumah-yang-kekinian.Download Apps Detikcom Sekarang https://apps.detik.com/detik/. Jika ingin menerapkan konsep mewah mungkin bisa melihat inspirasi dekorasi akad nikah di rumah dari Royal Design. Konsep bunga warna lavender yang menghiasi rumah dengan kain putih menciptakan siluet mewah dan cantik. Belum lagi karpet rumput sintesis yang dibentangkan seolah berada di area outdoor padahal didekor dalam ruangan.Baca artikel wolipop, "8 Inspirasi Dekorasi Akad Nikah di Rumah yang Kekinian" selengkapnya https://wolipop.detik.com/wedding-inspiration/d-5998603/8-inspirasi-dekorasi-akad-nikah-di-rumah-yang-kekinian.Download Apps Detikcom Sekarang https://apps.detik.com/detik/',
                    style: TextStyle(
                      color: Colors.black, fontSize: 18, height: 1.7, 
                    ),
                  ),
                ],
               ),
              ),
            ],
          ),
        ]
      ),
    );
  }
}
