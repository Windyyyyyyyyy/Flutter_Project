import 'package:flutter/material.dart';
import 'package:market_place/src/screens/home/Carousel_widget.dart';
import 'package:market_place/src/screens/home/list_category_widget.dart';
import 'package:market_place/src/screens/home/list_post_widget.dart';
import 'package:market_place/src/screens/home/top_navigation_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TopNavigation(),
            Carousel(),
            ListCategory(),
            ListPost(),
          ],
        ),
      ),
    );
  }
}
