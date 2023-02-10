import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:proyek_3/pages2/form_pemesanan.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "CAR Wash",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          Badge(
            showBadge: true,
            badgeStyle: BadgeStyle(badgeColor: Colors.white),
            badgeContent: Padding(
              padding: EdgeInsets.all(4),
            ),
            child: InkWell(
              onTap: () {},
              child: Icon(Icons.person),
            ),
          )
        ],
      ),
    );
  }
}
