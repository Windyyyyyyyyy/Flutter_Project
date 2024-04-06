import 'package:flutter/material.dart';

class ManagementWidget extends StatefulWidget {
  const ManagementWidget({super.key});

  @override
  State<ManagementWidget> createState() => _ManagementWidgetState();
}

class _ManagementWidgetState extends State<ManagementWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("1"),
      ),
    );
  }
}
