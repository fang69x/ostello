import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4, // Number of tabs
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Top banner with image, back button, and user stats
            Stack(
              children: [
                Image.network(
                  'https://via.placeholder.com/600x200', // Replace with your image URL
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
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
                const Positioned(
                  bottom: 16,
                  right: 16,
                  child: Row(
                    children: [
                      Icon(Icons.person, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        "37.8k",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Title of the page
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "Algebra 12: Functions 4",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),

            // ButtonsTabBar with accurate design
            ButtonsTabBar(
              backgroundColor: const Color(0xFF6200EE), // Purple color
              unselectedBackgroundColor: Colors.white,
              labelStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              unselectedLabelStyle: const TextStyle(
                color: Color(0xFF6200EE),
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
              borderWidth: 1.5,
              unselectedBorderColor: const Color(0xFF6200EE),
              radius: 100,
              contentPadding: const EdgeInsets.symmetric(
                  horizontal: 20.0, vertical: 10.0), // Spacing inside tabs
              tabs: const [
                Tab(
                  text: "Chats",
                  icon: Icon(Icons.chat_bubble_outline),
                ),
                Tab(
                  text: "Doubts",
                  icon: Icon(Icons.help_outline),
                ),
                Tab(
                  text: "Notes",
                  icon: Icon(Icons.note_alt_outlined),
                ),
                Tab(
                  text: "Rewards",
                  icon: Icon(Icons.card_giftcard_outlined),
                ),
              ],
            ),

            // Tab content
            Expanded(
              child: TabBarView(
                children: [
                  // Tab 1: Chats
                  const Center(
                    child: Text(
                      "Chats will be displayed here",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),

                  // Tab 2: Doubts
                  ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      // Example text content
                      const Divider(thickness: 1),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color(0xFF6200EE), // Purple color
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () {
                            showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(16.0),
                                ),
                              ),
                              builder: (context) => const AskQuestionModal(),
                            );
                          },
                          child: const Text(
                            "Ask a question",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Tab 3: Notes
                  const Center(
                    child: Text(
                      "Notes will be displayed here",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),

                  // Tab 4: Rewards
                  const Center(
                    child: Text(
                      "Rewards will be displayed here",
                      style: TextStyle(fontSize: 16, color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AskQuestionModal extends StatelessWidget {
  const AskQuestionModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16.0,
        right: 16.0,
        top: 16.0,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Close Button
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(Icons.cancel),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: 16),

            // Selected topic title
            TextFormField(
              initialValue: "27. Algebra 12: Functions 4 Trigonometry",
              readOnly: true,
              decoration: const InputDecoration(
                labelText: "Topic",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Question Title
            TextFormField(
              decoration: const InputDecoration(
                labelText: "Question Title",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Question Details
            TextFormField(
              maxLines: 6,
              decoration: const InputDecoration(
                labelText: "Details",
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the modal on submit
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6200EE),
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
