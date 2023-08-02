import 'package:flutter/material.dart';

class BalasPage extends StatefulWidget {
  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<BalasPage> {
  List<String> comments = [];

  void addComment(String comment) {
    setState(() {
      comments.add(comment);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(comments[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CommentForm(addComment),
          ),
        ],
      ),
    );
  }
}

class CommentForm extends StatefulWidget {
  final Function(String) onCommentAdded;

  CommentForm(this.onCommentAdded);

  @override
  _CommentFormState createState() => _CommentFormState();
}

class _CommentFormState extends State<CommentForm> {
  final TextEditingController _commentController = TextEditingController();

  void _submitComment() {
    final String comment = _commentController.text.trim();
    if (comment.isNotEmpty) {
      widget.onCommentAdded(comment);
      _commentController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _commentController,
            decoration: InputDecoration(
              hintText: 'Enter your comment',
            ),
          ),
        ),
        SizedBox(width: 8.0),
        // RaisedButton(
        //   onPressed: _submitComment,
        //   child: Text('Add Comment'),
        // ),
      ],
    );
  }

  @override
  void dispose() {
    _commentController.dispose();
    super.dispose();
  }
}