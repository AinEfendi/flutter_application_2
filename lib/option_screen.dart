import 'package:flutter/material.dart';
import 'grocery_shopping_screen.dart';
import 'order_food_screen.dart';
import 'shopping.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 91, 163, 222),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildButton(context, "Grocery Shopping", const GroceryShoppingScreen()),
              const SizedBox(height: 8),
              _buildButton(context, "Order Food at Restaurant", const OrderFoodScreen()),
              const SizedBox(height: 8),
              _buildButton(context, "Shopping", const ShoppingScreen()),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, String text, Widget destination) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFF5DEB3),
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




