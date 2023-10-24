import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:menara/models/product.dart';

class HomeScreen extends StatelessWidget {
  final List<HomeProduct> homeProducts = [
    HomeProduct(
      description: 'Product 1',
      generalDescription: 'Description 1',
      unit: 'kg',
      price: 10.0,
      itemNumber: 1,
      image: 'assets/images/Selection_001.png',
    ),
    HomeProduct(
      description: 'Product 2',
      generalDescription: 'Description 2',
      unit: 'pcs',
      price: 5.0,
      itemNumber: 2,
      image: 'assets/images/Selection_002.png',
    ),
    HomeProduct(
      description: 'Product 3',
      generalDescription: 'Description 3',
      unit: 'L',
      price: 8.0,
      itemNumber: 3,
      image: 'assets/images/Selection_003.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Products'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: ()=> context.go('/'),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () => context.go('/shopping'),
            ),
          )
        ],
      ),
      body: ListView.builder(
        itemCount: homeProducts.length,
        itemBuilder: (context, index) {
          final product = homeProducts[index];
          return Card(
            child: Column(
              children: <Widget>[
                Image.asset(product.image),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(product.description),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(product.generalDescription),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                      'Price: \$${product.price.toStringAsFixed(2)} per ${product.unit}'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Item Number: ${product.itemNumber}'),
                ),
                QuantityWidget(product: product),
              ],
            ),
          );
        },
      ),
      // const MyBottomNavigationBar(),
    );
  }
}

class QuantityWidget extends StatefulWidget {
  final HomeProduct product;

  QuantityWidget({required this.product});

  @override
  _QuantityWidgetState createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: () {
            setState(() {
              widget.product.decrementQuantity();
            });
          },
        ),
        Text(
          widget.product.quantity.toString(),
          style: TextStyle(fontSize: 18.0),
        ),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              widget.product.incrementQuantity();
            });
          },
        ),
      ],
    );
  }
}
