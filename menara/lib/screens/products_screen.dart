import 'package:flutter/material.dart';
import 'package:menara/widgets/images_list_view.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: ImagesListView(),
    );
  }
}
