import 'package:flutter/material.dart';
import 'package:market_place/src/config/color_constants.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key});

  @override
  State<PostDetail> createState() => _PostDetailState();
}

class _PostDetailState extends State<PostDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Post Detail"),
        backgroundColor: ColorConstants.green_500,
      ),
    );
  }
}
