import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:market_place/src/config/color_constants.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  final List<String> imagePaths = [
    "assets/images/home/post/65z2_1.png",
    "assets/images/home/post/bunbo_1.jpg",
    "assets/images/home/post/65z2_2.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorConstants.green_600,
          // statusBarIconBrightness: Brightness.light,
        ),
        title: const Text(
          "Post Detail",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
        ),
        backgroundColor: ColorConstants.green_500,
        foregroundColor: ColorConstants.white,
        // centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.chat_outlined),
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Card(
        // color: ColorConstants.green_100,
        elevation: 0.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: ColorConstants.green_500,
                child: Text(
                  "P",
                  style: TextStyle(color: ColorConstants.white_100),
                ),
              ),
              title: Text("Nguyeen Van Phong"),
              trailing: Icon(Icons.more_vert),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: CarouselSlider(
                items: imagePaths.map((image) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        margin: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10.0)),
                          child: Image.asset(
                            image,
                            fit: BoxFit.cover,
                            width: MediaQuery.of(context).size.width,
                            // height: ,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
                options: CarouselOptions(
                  // height: 300.0,
                  aspectRatio: 15 / 9,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 3),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 80,
            width: (MediaQuery.of(context).size.width) / 2,
            child: FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {},
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              elevation: 0,
              backgroundColor: ColorConstants.white_100,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: Icon(
                      Icons.phone_in_talk,
                      color: ColorConstants.green_700,
                    ),
                  ),
                  Text(
                    "Gọi điện",
                    style: TextStyle(
                        color: ColorConstants.green_700,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            width: (MediaQuery.of(context).size.width) / 2,
            child: FloatingActionButton(
              heroTag: "btn2",
              onPressed: () {},
              shape:
                  const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              elevation: 0,
              backgroundColor: ColorConstants.green_700,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.0, top: 5.0),
                    child: Icon(
                      Icons.chat_outlined,
                      color: ColorConstants.white,
                    ),
                  ),
                  Text(
                    "Nhắn tin",
                    style: TextStyle(
                        color: ColorConstants.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
