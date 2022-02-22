// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/splash_page.dart';

class DetailsBottomActions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                child: Container(
                  padding: EdgeInsets.all(21),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: mainColor),
                  child: Text(
                    "Book Now",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                highlightColor: Colors.white.withOpacity(0.2),
                splashColor: Colors.white.withOpacity(0.2),
                onTap: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  border: Border.all(color: mainColor, width: 2)),
              child: Icon(Icons.turned_in_not, color: mainColor, size: 25),
            )
          ],
        ),
      ),
    );
  }
}
