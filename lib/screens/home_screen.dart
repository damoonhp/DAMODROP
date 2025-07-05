
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ایردراپ‌ها')),
      body: Center(child: Text('لیست ایردراپ‌ها اینجا نمایش داده می‌شود')),
    );
  }
}
