import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

class CommentItem extends StatelessWidget {
  String commentDate = 'دیروز';
  int activeStar = 3;
  String commentText = 'بسیار آگاه و دلسوز هستند. همیشه احساس می‌کنم که به خوبی شنیده می‌شوم و مراقبت خوبی دریافت می‌کنم.';

  CommentItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 140,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      commentDate,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF707684),
                        fontSize: 12,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 8),
                    SvgPicture.asset(
                        "assets/svgs/gray_circle.svg",
                        // colorFilter: const ColorFilter.mode(
                        //     DSColors.iconGrey, BlendMode.srcIn),
                        width: 10,
                        height: 10),

                    const SizedBox(width: 8),
                    Container(
                      child: StarRating(
                        rating: 4,
                        starCount: 5,
                        allowHalfRating: false,
                        onRatingChanged: (rating) {
                          // setState(() => this.rating = rating)
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: double.infinity,
                child: ReadMoreText(
                  commentText,
                  trimMode: TrimMode.Line,
                  trimLines: 2,
                  colorClickableText: Colors.blue,
                  trimCollapsedText: 'ادامه',
                  trimExpandedText: 'مشاهده کمتر',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF2B303A),
                    fontSize: 14,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w400,
                      height: 1.5
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Divider(
                  color:Colors.grey
              ),
            ],
          ),
        ),
      ],
    );
  }
}