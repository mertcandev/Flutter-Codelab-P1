import 'package:flutter/material.dart';
import 'package:flutter_codelab_1/splash_page.dart';

class DetailsRatingBar extends StatelessWidget {
  var sampleRatingData = {
    "Rating": "4.6",
    "Price": "\$12",
    "Open": "24hrs",
  };

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          sampleRatingData.entries.length,
          (index) => Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.grey.withOpacity(0.2), width: 2),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Text(
                  sampleRatingData.entries.elementAt(index).key,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  sampleRatingData.entries.elementAt(index).value,
                  style: TextStyle(
                      color: mainColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
