import 'package:flutter/material.dart';

class AssistanceScreen extends StatelessWidget {
  const AssistanceScreen({super.key});

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
        child: Column(
          children: [
            // Image and title section in a row
            Row(
              children: [
                Image.asset(
                  'assets/shoppingbag.png', // Replace with your image asset path
                  height: 100,
                  width: 100,
                ),
                const SizedBox(width: 8),
                const Text(
                  'Shopping',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Full-width beige bar
            Container(
              padding: const EdgeInsets.all(12),
              color: const Color(0xFFF5DEB3), // Beige color
              width: double.infinity, // Full width
              child: const Text(
                'Asking for Assistance',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),

            // Dialogues between two people
            Expanded(
              child: ListView(
                children: [
                  _buildDialogue(
                    context,
                    'Do you have size 28?',
                    '你有28号吗？',
                    'Nǐ yǒu 28 hào ma?',
                    isLeft: true,
                  ),
                  _buildDialogue(
                    context,
                    'We do have.',
                    '我们有。',
                    'Wǒmen yǒu.',
                    isLeft: false,
                  ),
                  _buildDialogue(
                    context,
                    'Thank you! Can I try it on?',
                    '谢谢！我可以试穿吗？',
                    'Xièxiè! Wǒ kěyǐ shì chuān ma?',
                    isLeft: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper widget to create dialogue bubbles
  Widget _buildDialogue(BuildContext context, String englishText, String chineseText, String pinyin, {required bool isLeft}) {
    return Row(
      mainAxisAlignment: isLeft ? MainAxisAlignment.start : MainAxisAlignment.end,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image avatar for each speaker
            CircleAvatar(
              backgroundImage: AssetImage(isLeft ? 'assets/user.jpg' : 'assets/person2.png'), // Replace with image paths
              radius: 24,
            ),
            const SizedBox(height: 4),

            // Dialogue bubble
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(vertical: 8),
              constraints: const BoxConstraints(maxWidth: 250),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    englishText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 4),

                  // GestureDetector for the Chinese character text
                  GestureDetector(
                    onTap: () => _showTranslationDialog(context, 'You', '你', 'Nǐ'),
                    child: Text(
                      chineseText,
                      style: const TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    pinyin,
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Function to show the translation dialog
  void _showTranslationDialog(BuildContext context, String english, String chinese, String pinyin) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                english,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                chinese,
                style: const TextStyle(fontSize: 18, color: Colors.blue),
              ),
              const SizedBox(height: 8),
              Text(
                pinyin,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }
}




