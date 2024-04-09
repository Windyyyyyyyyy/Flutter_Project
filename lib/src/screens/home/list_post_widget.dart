import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:market_place/src/config/color_constants.dart';
import 'package:market_place/src/config/constants.dart';
import 'package:market_place/src/data/post.dart';
import 'package:market_place/src/model/post.dart';
import 'package:market_place/src/screens/post_detail/post_detail.dart';

class ListPost extends StatefulWidget {
  const ListPost({super.key});

  @override
  State<ListPost> createState() => _ListPostState();
}

class _ListPostState extends State<ListPost> {
  List<PostModel> lstPost = [];

  @override
  void initState() {
    super.initState();
    lstPost = listPost;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0.0),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Text(
                    "Tin đăng dành cho bạn",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(
              // padding: const EdgeInsets.all(10.0),
              padding: const EdgeInsets.only(top: 10.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of items per row
                crossAxisSpacing: 0.0, // Horizontal spacing between items
                mainAxisSpacing: 0.0, // Vertical spacing between items
              ),
              itemCount: lstPost.length, // Total number of items
              itemBuilder: (context, index) {
                if (index < lstPost.length) {
                  return itemGridView(lstPost[index]);
                } else {
                  return Container();
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget itemGridView(PostModel post) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PostDetail()));
      },
      child: Container(
        // color: Colors.white,
        constraints: const BoxConstraints(maxHeight: 400),
        // decoration: ,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: ColorConstants.grey,
            width: 0.5,
          ),
        ),

        child: Column(
          children: [
            Expanded(
              child: Image.asset(
                imgPostUrl + post.imgPost!,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.image),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  post.title ?? '',
                  textAlign: TextAlign.start,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  NumberFormat('###,###.###').format(post.price),
                  style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorConstants.red),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
