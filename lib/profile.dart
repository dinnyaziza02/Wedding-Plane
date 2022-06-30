// import 'dart:html';
import 'package:flutter/material.dart';
import 'package:wedding_plane/home.dart';
import 'package:wedding_plane/profile_widget.dart';

class Profile extends StatefulWidget {
  const Profile ({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{
  @override
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffCF9766),
        title: Center(
        child: Text("Profile"),
          ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          height: size.height,
          width: size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Container(
              width: 150,
              child: const CircleAvatar(
                radius: 60,
                backgroundColor: Colors.transparent,
                backgroundImage: ExactAssetImage('assets/images/profile.jpeg'),
              ),
               decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xffCF9766),
                  width: 5.0,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: size.width * .3,
              child: Row(
                children: [
                  Text(
                    'Titis Aziza',
                    style: TextStyle(
                      color: Color(0xffCF9766),
                      fontSize: 19,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    child: Image.asset("assets/icons/verified.png")
                  ),
                ],
              ),
            ),
            Text(
              'titisnuraziza@gmail.com',
              style: TextStyle(
                color: Color(0xffCF9766),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: size.height * .7,
              width: size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileWidget(icon: Icons.person,title: 'My Profile'),
                  ProfileWidget(icon: Icons.settings,title: 'Settings',),
                  ProfileWidget(icon: Icons.notifications,title: 'Notifications',),
                  ProfileWidget(icon: Icons.chat,title: 'FAQs',),
                  ProfileWidget(icon: Icons.share,title: 'Share',),
                  ProfileWidget(icon: Icons.logout,title: 'Log Out'),
                ],
                
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}

// class ProfileWidget extends StatelessWidget {
//   const ProfileWidget({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 18),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Row(
//             children: [
//               Icon(Icons.settings, color: Colors.grey, size: 24,),
//               const SizedBox(
//                 width: 16,
//               ),
//               Text('Setting', 
//                 style:TextStyle(
//                   color: Colors.pink, fontSize: 18, fontWeight: FontWeight.w600) ,)
//             ],
//           ),
//           Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 24,),
              
//         ],
//       ),
//     );
//   }
// }

