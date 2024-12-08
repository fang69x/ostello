import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:ostello/ui/widgets/doubts_tab.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set the background color to white
      body: DefaultTabController(
        length: 4, // Number of tabs
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Top banner with image, back button, and live viewer count at the top-right
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
                const Positioned(
                  top: 40,
                  right: 16, // Move to the top-right corner
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

            // Rest of the content below the image (scrollable)
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Title of the page with spacing
                    const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Algebra 12: Functions 4",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Most shocking news most shocking news .... more',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // ButtonsTabBar with accurate design
                    ButtonsTabBar(
                      backgroundColor: const Color.fromARGB(
                          255, 223, 204, 246), // Purple color
                      unselectedBackgroundColor:
                          const Color.fromARGB(255, 233, 233, 233),
                      labelStyle: const TextStyle(
                        color: Color.fromARGB(255, 166, 0, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        color: Color.fromARGB(255, 116, 116, 116),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      radius: 100,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 10.0), // Spacing inside tabs
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
                    SizedBox(
                      height: 800, // Tab view content area
                      child: TabBarView(
                        children: [
                          const Center(
                            child: Text(
                              "Chats will be displayed here",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          Expanded(
                              child:
                                  DoubtsTab()), // This is the "Doubts" Tab (Ask Question)
                          const Center(
                            child: Text(
                              "Notes will be displayed here",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                          const Center(
                            child: Text(
                              "Rewards will be displayed here",
                              style: TextStyle(
                                  fontSize: 16, color: Colors.black54),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
