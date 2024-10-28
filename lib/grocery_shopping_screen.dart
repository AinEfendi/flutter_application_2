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
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 91, 163, 222), // Same soft blue background
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildButton(context, 'Asking for Directions in the Store'),
              const SizedBox(height: 8),
              _buildButton(context, 'Checking Prices and Bargaining'),
              const SizedBox(height: 8),
              _buildButton(context, 'Paying and Asking for a Receipt'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text) {
    return ElevatedButton(
      onPressed: () {
        print('$text clicked');
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF5DEB3), // Match button color
        minimumSize: const Size(double.infinity, 50), // Set minimum size
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}

