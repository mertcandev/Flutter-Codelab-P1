// ignore_for_file: prefer_const_declarations, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/landing_page.dart';

final Color mainColor = Color(0xFFFF5656);

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => MountsApp()));
    });

    return Container(
      color: mainColor,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Icon(
              Icons.terrain,
              color: Colors.white,
              size: 90,
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 80),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
