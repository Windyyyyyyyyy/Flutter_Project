import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class InfoProductWidget extends StatefulWidget {
  const InfoProductWidget({super.key});

  @override
  State<InfoProductWidget> createState() => _InfoProductWidgetState();
}

class _InfoProductWidgetState extends State<InfoProductWidget> {
  final List<String> imageUrls = [
    // Replace with your image URLs
    '../img/img_1.jpg',
    '../img/img_2.jpg',
    '../img/img_3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 16,
                ),
                CarouselSlider(
                  items: imageUrls.map((imageUrl) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Image.network(
                          imageUrl,
                          fit: BoxFit.contain,
                          width: MediaQuery.of(context).size.width,
                        );
                      },
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 300.0,
                    viewportFraction: 1,
                    enableInfiniteScroll: true,
                    autoPlay: true,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  color: Colors.white70,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Iphone 11 Pro Max',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  color: Colors.white70,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    '10.000.000',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  color: Colors.white70,
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Đây là mô tả sản phẩm Iphone 11 Pro Max',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 412,
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 206,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  },
                  child: Text(
                    'Gọi điện',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white, // Màu nền của nút 1
                    ),
                  ),
                ),
              ),
              Container(
                width: 206,
                height: 80,
                child: ElevatedButton(
                  onPressed: () {
                    // Xử lý sự kiện khi nút được nhấn
                  },
                  child: Text(
                    'Nhắn tin',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      EdgeInsets.zero,
                    ),
                    elevation: MaterialStateProperty.all<double>(0),
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green, // Màu nền của nút 2
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
