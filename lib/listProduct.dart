import 'package:flutter/material.dart';

class ListProductWidget extends StatefulWidget {
  const ListProductWidget({Key? key});

  @override
  State<ListProductWidget> createState() => _ListProductWidgetState();
}

class _ListProductWidgetState extends State<ListProductWidget> {
  final List<Product> products = [
    Product(
      name: 'Product 1',
      price: 10000,
      imageUrl: '../img/img_1.jpg',
    ),
    Product(
      name: 'Product 2',
      price: 20000,
      imageUrl: '../img/img_2.jpg',
    ),
    Product(
      name: 'Product 3',
      price: 30000,
      imageUrl: '../img/img_3.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300], // Màu nền xám
      child: ListView.separated(
        padding: EdgeInsets.only(bottom: 15), // Khoảng cách 5px giữa các mục
        itemCount: products.length,
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(height: 5), // Khoảng cách 5px giữa các mục
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 88,
            width: 412,
            color: Colors.white, // Màu nền trắng cho mỗi mục sản phẩm
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Image.network(
                products[index].imageUrl,
                width: 52,
                height: 52,
                fit: BoxFit.contain, // Đảm bảo hình ảnh không bị cắt hoặc khuất
              ),
              title: Text(
                products[index].name,
                style: TextStyle(
                  fontSize: 16, // Kích thước chữ là 16
                ),
              ),
              subtitle: Text(
                '${products[index].price.toString()}\ đ',
                style: TextStyle(
                    fontSize: 16, color: Colors.red // Kích thước chữ là 16
                    ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class Product {
  final String name;
  final double price;
  final String imageUrl;

  Product({required this.name, required this.price, required this.imageUrl});
}
