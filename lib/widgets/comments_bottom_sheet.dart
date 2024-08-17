import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/comment.dart';
import 'comments_item.dart';
void bottomSheetComment(BuildContext context ,List<Comment> commentItems) {
  showModalBottomSheet<void>(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Column(
        children: [
          const SizedBox(height: 10),
          Text(
            'نظر 24 ',
            textAlign: TextAlign.right,
            style: TextStyle(
              color: Color(0xFF0D111B),
              fontSize: 16,
              fontFamily: 'Peyda',
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: commentItems.map((item) {
                return  CommentItem(
                  activeStar: item.starCount,
                  commentDate: item.commentDate,
                  commentText: item.commentText,
                );
              }).toList(),
                //   onPressed: () => Navigator.pop(context),
            ),
          ),
        ],
      );
    },
  );
}