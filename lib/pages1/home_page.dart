// import 'package:flutter/material.dart';
// import '../pages2/form_pemesanan.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: Icon(Icons.home),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                 return FormPemesanan();
//               }));
//             },
//             child: Container(
//               margin: EdgeInsets.all(16),
//               height: 200,
//               width: MediaQuery.of(context).size.height,
//               decoration: BoxDecoration(
//                   // borderRadius: BorderRadius.only(
//                   //     topLeft: Radius.circular(12),
//                   //     bottomRight: Radius.circular(12)),
//                   // color: Colors.green
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.green,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 4,
//                       spreadRadius: 1,
//                     )
//                   ]),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(
//                   "images/6.jpeg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
//                 return FormPemesanan();
//               }));
//             },
//             child: Container(
//               margin: EdgeInsets.all(16),
//               height: 200,
//               width: MediaQuery.of(context).size.height,
//               decoration: BoxDecoration(
//                   // borderRadius: BorderRadius.only(
//                   //     topLeft: Radius.circular(12),
//                   //     bottomRight: Radius.circular(12)),
//                   // color: Colors.green
//                   borderRadius: BorderRadius.circular(12),
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey,
//                       blurRadius: 4,
//                       spreadRadius: 1,
//                     )
//                   ]),
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset(
//                   "images/5.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:proyek_3/pages2/item_page.dart';
import '../pages1/home_appbar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQueryHeigt = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(children: [
        HomeAppBar(),
        Container(
          width: mediaQueryHeigt * 0.5,
          height: mediaQueryHeigt * 1.6,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color: Color(0xFFEDECF2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), topRight: Radius.circular(35)),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here ......",
                        ),
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.camera_alt,
                      size: 25,
                      color: Color(0xFF4C53A5),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Category jenis kendaraan",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
              ),
              ItemPage(),
            ],
          ),
        ),
      ]),
    );
  }
}
