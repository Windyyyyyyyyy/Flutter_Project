import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      "assets/images/home/carousel/img_1.jpg",
      "assets/images/home/carousel/img_2.jpg",
      "assets/images/home/carousel/img_3.jpg",
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: CarouselSlider(
        options: CarouselOptions(
          height: 200.0,
          autoPlay: true,
          aspectRatio: 16 / 9,
          // viewportFraction: 0.8,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayInterval: const Duration(seconds: 3),
          // autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          // enlargeFactor: 0.3,
        ),
        items: imagePaths.map((imagePath) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.fitHeight,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
