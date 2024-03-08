import 'package:flutter/material.dart';

List<String> images = [
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
  " https://wallpaperaccess.com/full/2637581.jpg ",
];

class Carusel extends StatelessWidget {
  const Carusel({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        itemCount: 2,
        pageSnapping: true,
        itemBuilder: (context, pagePosition) {
          return Container(
              margin: const EdgeInsets.all(10),
              child: Image.network(images[pagePosition]));
        });
  }
}
