import 'package:flutter/material.dart';
import 'package:flutter_application_2/AssistanceScreen.dart';
import 'AssistanceScreen.dart'; // Import the new screen

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({super.key});

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
          color: Color.fromARGB(255, 91, 163, 222), // Soft blue background
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildButton(
                context,
                'Asking for Assistance',
                const AssistanceScreen(), // Navigate to AssistanceScreen
              ),
              const SizedBox(height: 8),
              _buildButton(
                context,
                'Negotiating Price',
                const AssistanceScreen(), // Placeholder; replace with NegotiatingPriceScreen
              ),
              const SizedBox(height: 8),
              _buildButton(
                context,
                'Handling Payment Option',
                const AssistanceScreen(), // Placeholder; replace with PaymentOptionScreen
              ),
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



