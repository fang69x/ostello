import 'package:flutter/material.dart';
import 'package:ostello/ui/widgets/buildchat_teacher.dart';

class TeacherPage extends StatelessWidget {
  const TeacherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Top banner with image, back button (without viewer count)
          Stack(
            children: [
              Image.asset(
                'assets/images/background.jpg', // Replace with your image path
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover, // Adjust image scaling
              ),
              Positioned(
                top: 40,
                left: 16,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),

          // Title and Cancel button
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Questions",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.cancel_outlined, color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context); // Close or cancel action
                  },
                ),
              ],
            ),
          ),

          // Live Chat content area (This part would display messages)
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  // Example Doubt 1 - Chat style
                  buildChatMessage(
                    'John Doe',
                    'assets/images/user1.jpg',
                    'What is the formula for solving quadratic equations?',
                    'Can you explain the steps in solving quadratic equations?',
                    '2024-12-08 10:00 AM', // Date of the doubt
                    'assets/images/teacher.jpg', // Teacher image
                    'Teacher Name', // Teacher name
                    context,
                  ),
                  const SizedBox(height: 16),

                  // Example Doubt 2 - Chat style
                  buildChatMessage(
                    'Jane Smith',
                    'assets/images/user2.jpg',
                    'Can you explain the Pythagorean theorem?',
                    'What does the theorem state, and how is it useful?',
                    '2024-12-08 10:15 AM', // Date of the doubt
                    'assets/images/teacher.jpg', // Teacher image
                    'Teacher Name', // Teacher name
                    context,
                  ),
                ],
              ),
            ),
          ),

          // Reply TextField with Send button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type your reply...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.blue),
                  onPressed: () {
                    // Send message logic here
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
