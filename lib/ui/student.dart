import 'package:flutter/material.dart';

class StudentPage extends StatelessWidget {
  const StudentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Algebra 12: Functions 4"),
        leading: Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.person),
          SizedBox(width: 8),
          Text("37.8k", style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://via.placeholder.com/200',
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Most shocking news most shocking news...more",
                style: TextStyle(fontSize: 16),
              ),
            ),
            TabBar(
              tabs: const [
                Tab(text: 'Chats'),
                Tab(text: 'Doubts'),
                Tab(text: 'Notes'),
                Tab(text: 'Rewards'),
              ],
              labelColor: Colors.purple,
              unselectedLabelColor: Colors.grey,
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage('https://via.placeholder.com/50'),
              ),
              title: Text("@Student Name"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How can the user click on different ads?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "I don't understand one thing in this topic...",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to question details
                    },
                    child: Text("2 Replies"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Ask Question page
                },
                child: Text("Ask a question"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
