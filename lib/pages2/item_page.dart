import 'package:flutter/material.dart';
import 'package:proyek_3/pages2/form_pemesanan.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 1; i < 9; i++)
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return FormPemesanan();
              }));
            },
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          color: Color(0xFF4C53A5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.checklist,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.all(10),
                      child: Image.asset(
                        "images/5.jpg",
                        height: 100,
                        width: 400,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Cuci mobil",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF4C53A5),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    child: Text(
                      "Lihat selengkapnya tentang paket pencucian mobil",
                      style: TextStyle(
                        color: Color(0xFF4C53A5),
                      ),
                      maxLines: 2,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                ],
              ),
            ),
          ),
        //       Container(
        //         padding: EdgeInsets.only(left: 15, right: 15, top: 10),
        //         margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        //         decoration: BoxDecoration(
        //             color: Colors.white, borderRadius: BorderRadius.circular(20)),
        //         child: Column(
        //           children: [
        //             Row(
        //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //               children: [
        //                 Container(
        //                   padding: EdgeInsets.all(2),
        //                   decoration: BoxDecoration(
        //                     color: Color(0xFF4C53A5),
        //                     borderRadius: BorderRadius.circular(20),
        //                   ),
        //                   child: Icon(
        //                     Icons.checklist,
        //                     color: Colors.white,
        //                   ),
        //                 )
        //               ],
        //             ),
        //       //       InkWell(
        //       //         onTap: () {},
        //       //         child: Container(
        //       //           margin: EdgeInsets.all(10),
        //       //           child: Image.asset(
        //       //             "images/5.jpg",
        //       //             height: 100,
        //       //             width: 400,
        //       //           ),
        //       //         ),
        //       //       ),
        //       //       Container(
        //       //         padding: EdgeInsets.only(bottom: 8),
        //       //         alignment: Alignment.centerLeft,
        //       //         child: Text(
        //       //           "Cuci mobil",
        //       //           style: TextStyle(
        //       //               fontSize: 18,
        //       //               color: Color(0xFF4C53A5),
        //       //               fontWeight: FontWeight.bold),
        //       //         ),
        //       //       ),
        //       //       Container(
        //       //         child: Text(
        //       //           "Lihat selengkapnya tentang paket pencucian mobil",
        //       //           style: TextStyle(
        //       //             color: Color(0xFF4C53A5),
        //       //           ),
        //       //           maxLines: 2,
        //       //         ),
        //       //         alignment: Alignment.centerLeft,
        //       //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
