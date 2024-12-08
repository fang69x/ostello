import 'package:flutter/material.dart';

class TeacherDoubtsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(16),
      children: [
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Doubts',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            Text(
              'See All',
              style:
                  TextStyle(color: Colors.purple, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Example Doubt 1 - Chat style
        _buildChatMessage(
          'John Doe',
          'assets/images/user1.jpg',
          'What is the formula for solving quadratic equations?',
          'Can you explain the steps in solving quadratic equations?',
          '2024-12-08 10:00 AM', // Date of the doubt
          context,
        ),
        const SizedBox(height: 16),

        // Example Doubt 2 - Chat style
        _buildChatMessage(
          'Jane Smith',
          'assets/images/user2.jpg',
          'Can you explain the Pythagorean theorem?',
          'What does the theorem state, and how is it useful?',
          '2024-12-08 10:15 AM', // Date of the doubt
          context,
        ),
      ],
    );
  }

  // Method to build each doubt message like a chat message
  Widget _buildChatMessage(String username, String userImage, String title,
      String description, String date, BuildContext context) {
    // Simulating teacher replies (replace this with actual data)
    List<String> replies = [
      'Teacher: The formula for solving quadratic equations is: x = [-b ± √(b² - 4ac)] / 2a.',
      'Teacher: The Pythagorean theorem states that in a right triangle, the square of the hypotenuse is equal to the sum of the squares of the other two sides. It can be expressed as a² + b² = c².',
      'Teacher: The quadratic formula is useful for solving any quadratic equation, even if factoring is difficult.',
      'Teacher: The Pythagorean theorem is fundamental in geometry and is used in many real-life applications like construction, navigation, and physics.',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(userImage),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Student's Name and Date
                Row(
                  children: [
                    Text(
                      '$username - $date',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),

                // Doubt Title and Description
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color.fromARGB(255, 0, 1, 3),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        description,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black87),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // Teacher's Replies
                for (var reply in replies)
                  Padding(
                    padding: const EdgeInsets.only(left: 60.0, top: 8.0),
                    child: Text(
                      reply,
                      style:
                          const TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ),
                const SizedBox(height: 8),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
