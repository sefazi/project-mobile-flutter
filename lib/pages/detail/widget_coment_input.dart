import 'package:flutter/material.dart';

class CommentInput extends StatefulWidget {
  @override
  _CommentInputState createState() => _CommentInputState();
}

class _CommentInputState extends State<CommentInput> {
  TextEditingController _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _commentController,
              decoration: InputDecoration(
                hintText: 'Tambahkan Komentar...',
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              String comment = _commentController.text;
              if (comment.isNotEmpty) {
                addComment(comment);
                _commentController.clear();
              }
            },
          ),
        ],
      ),
    );
  }

  void addComment(String comment) {
    // Simpan logika untuk menyimpan komentar ke data atau server
    setState(() {
      comments.add(comment);
    });
  }
}

List<String> comments = [
  'Ini adalah komentar pertama.',
  'Komentar kedua terlihat bagus!',
];
