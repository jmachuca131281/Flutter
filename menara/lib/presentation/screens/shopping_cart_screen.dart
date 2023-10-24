import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShoppingCartScreen extends StatelessWidget {
  final double subtotal = 100.0; // replace with your actual subtotal

  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => context.go('/home'),
        ),
      ),
      body: const Center(
        child: Text('Shopping Cart Screen'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Subtotal: \$${subtotal.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 20.0,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your buy action here
                },
                child: const Text(
                  'Buy',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                // color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
