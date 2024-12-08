import 'package:flutter/material.dart';
import 'package:ostello/ui/widgets/askquestion.dart';

class DoubtsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true, // Ensures the ListView takes only necessary space
      padding: const EdgeInsets.all(16),
      children: [
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Q&A',
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

        // Example Question 1 - Chat style
        _buildChatMessage(
          'John Doe',
          'assets/images/user1.jpg',
          'What is the formula for solving quadratic equations?',
          'Can you explain the steps in solving quadratic equations?',
          context,
        ),
        const SizedBox(height: 16),

        // Example Question 2 - Chat style
        _buildChatMessage(
          'Jane Smith',
          'assets/images/user2.jpg',
          'Can you explain the Pythagorean theorem?',
          'What does the theorem state, and how is it useful?',
          context,
        ),
        const SizedBox(height: 16),

        // Ask a Question Button
        Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 255, 254, 254), // Modern color
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: const BorderSide(
                      color: Colors.black,
                      width: 2.0), // Black border with width
                ),
              ),
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(16.0)),
                  ),
                  builder: (context) => const AskQuestionModal(),
                );
              },
              child: const Text(
                "Ask a question",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            )),
      ],
    );
  }

  // Method to build each question bubble like chat message
  Widget _buildChatMessage(String username, String userImage, String title,
      String description, BuildContext context) {
    bool isRepliesVisible = false; // Track if replies are visible

    // Simulating replies (replace this with real data)
    List<String> replies = [
      'Reply 1: This is an explanation of the solution.',
      'Reply 2: Another way to solve this is using the quadratic formula.',
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(userImage), // User's image
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Name
                Text(
                  username,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                // Question Title in Bubble Style
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color set to white
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
                        overflow: TextOverflow.ellipsis, // Truncate if overflow
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // View Replies Button
                TextButton(
                  onPressed: () {
                    // Toggle visibility of replies
                    isRepliesVisible = !isRepliesVisible;
                  },
                  child: Text(
                    isRepliesVisible ? 'Hide replies' : 'View replies',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 196, 68, 255)),
                  ),
                ),

                // Replies Section (conditionally visible)
                if (isRepliesVisible)
                  for (var reply in replies)
                    Padding(
                      padding: const EdgeInsets.only(left: 60.0, top: 8.0),
                      child: Text(
                        reply,
                        style: const TextStyle(
                            fontSize: 14, color: Colors.black54),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
