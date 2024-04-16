import 'package:flutter/material.dart';
import 'package:market_place/src/config/color_constants.dart';
import 'package:market_place/src/screens/home/Carousel_widget.dart';
import 'package:market_place/src/screens/home/list_category_widget.dart';
import 'package:market_place/src/screens/home/list_post_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.green_500,
        toolbarHeight: 70.0,
        centerTitle: true,
        title: Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: 328,
                height: 45,
                child: SearchBar(
                  controller: searchController,
                  hintText: 'Search',
                  elevation: const MaterialStatePropertyAll<double?>(0.0),
                  trailing: const [Icon(Icons.search)],
                  padding: const MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 16.0),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.chat_outlined),
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Carousel(),
            ListCategory(),
            ListPost(),
          ],
        ),
      ),
    );
  }
}
