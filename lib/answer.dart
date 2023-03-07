import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(
    this.selectHandler,
    this.answerText,
  );
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 50.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              // width: MediaQuery.of(context).size.width,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              // decoration: BoxDecoration(
              //   color: Colors.amber,
              //   borderRadius: BorderRadius.circular(0.0),
              // ),
              alignment: Alignment.center,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.amber,
                    // alignment: Alignment.center,
                  ),
                  child: Text(answerText),
                  onPressed: selectHandler),
            );
          },
        );
      }).toList(),
    );
  }
}
//hello