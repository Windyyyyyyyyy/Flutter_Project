import 'package:flutter/material.dart';
import 'package:market_place/src/config/color_constants.dart';

class TopNavigation extends StatelessWidget {
  const TopNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return Container(
      // height: 70,
      color: ColorConstants.green_500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.5),
            child: SizedBox(
              width: 328,
              height: 45,
              child: SearchBar(
                controller: searchController,
                hintText: 'Search',
                elevation: const MaterialStatePropertyAll<double?>(0.0),
                trailing: const [Icon(Icons.search)],
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(horizontal: 10.0),
                ),
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
    );
  }
}
