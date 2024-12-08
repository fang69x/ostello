// Method to build each doubt message like a chat message
import 'package:flutter/material.dart';

Widget buildChatMessage(
  String username,
  String userImage,
  String title,
  String description,
  String date,
  String teacherImage,
  String teacherName,
  BuildContext context,
) {
  // Simulating teacher replies (replace this with actual data)
  List<Map<String, String>> replies = [
    {
      'name': teacherName,
      'image': teacherImage,
      'message': 'The formula for solving quadratic equations is...',
      'date': '2024-12-08 10:30 AM',
    },
    {
      'name': teacherName,
      'image': teacherImage,
      'message': 'The Pythagorean theorem states that...',
      'date': '2024-12-08 10:45 AM',
    },
  ];

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Column(
      children: [
        // Student's message
        Row(
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

                  // Student's Name and Date below the message content
                  Text(
                    '$username - $date',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 16),

        // Teacher's replies (in the same format as student)
        for (var reply in replies)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(reply['image']!),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Teacher's Reply Message
                      Container(
                        padding: const EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          reply['message']!,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black87),
                        ),
                      ),
                      const SizedBox(height: 8),

                      // Teacher's Name and Date below the reply content
                      Text(
                        '${reply['name']} - ${reply['date']}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    ),
  );
}
