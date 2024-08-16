import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_svg/svg.dart';

class CommentsHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 120,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'نظرات',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF0D111B),
                        fontSize: 16,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 6),
                    SvgPicture.asset("assets/svgs/comment.svg",
                        width: 25,
                        height: 25),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          StarRating(
                            rating: 4,
                            allowHalfRating: false,
                            onRatingChanged: (rating) {
                              // setState(() => this.rating = rating)
                            },
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'از مجموع 76 امتیاز ثبت‌شده',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                              color: Color(0xFF707684),
                              fontSize: 12,
                              fontFamily: 'Peyda',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      '4.6',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF0D111B),
                        fontSize: 32,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}