import 'package:flutter/material.dart';

class GroceryShoppingScreen extends StatelessWidget {
  const GroceryShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => print("Asking for Directions in the Store clicked"),
              child: const Text('Asking for Directions in the Store'),
            ),
            ElevatedButton(
              onPressed: () => print("Checking Prices and Bargaining clicked"),
              child: const Text('Checking Prices and Bargaining'),
            ),
            ElevatedButton(
              onPressed: () => print("Paying and Asking for a Receipt clicked"),
              child: const Text('Paying and Asking for a Receipt'),
            ),
          ],
        ),
      ),
    );
  }
}
