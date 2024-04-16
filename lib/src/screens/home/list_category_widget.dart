import 'package:flutter/material.dart';
import 'package:market_place/src/config/color_constants.dart';
import 'package:market_place/src/data/category.dart';
import 'package:market_place/src/model/category.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({super.key});

  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
  List<CategoryModel> lstCategory = [];

  @override
  void initState() {
    super.initState();
    lstCategory = categoryList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Khám phá danh mục",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        Container(
          // margin: const EdgeInsets.only(top: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          margin: const EdgeInsets.only(bottom: 10),
          height: 200,
          // color: ColorConstants.green_100,
          // alignment: Alignment.bottomCenter,
          child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1,
                crossAxisSpacing: 15,
                mainAxisSpacing: 15,
              ),
              itemCount: lstCategory.length,
              itemBuilder: (context, index) {
                if (index < lstCategory.length) {
                  return itemGridView(lstCategory[index]);
                } else {
                  return Container();
                }
              }),
        ),
      ],
    );
  }

  Widget itemGridView(CategoryModel category) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.grey.shade300; // Background color when pressed
          }
          return null; // Transparent background when not pressed
        }),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>((states) {
          return RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0), // Border radius
          );
        }),
      ),
      onPressed: () {},
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 5.0),
            child: Image.asset(
              category.imgCategory!,
              height: 32,
              width: 32,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.image),
            ),
          ),
          Text(
            category.nameCategory ?? '',
            style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ColorConstants.black),
            // textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
