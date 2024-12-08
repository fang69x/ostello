import 'package:flutter/material.dart';

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
                child: const Text(
                  "Submit",
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
