import 'package:flutter/material.dart';

class OrderFoodScreen extends StatelessWidget {
  const OrderFoodScreen({super.key});

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
              _buildButton(context, 'View Menu'),
              const SizedBox(height: 8),
              _buildButton(context, 'Place Order'),
              const SizedBox(height: 8),
              _buildButton(context, 'Ask for Bill'),
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


