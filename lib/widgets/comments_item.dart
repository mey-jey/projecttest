import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class CommentItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 360,
          height: 148,
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
                      'دیروز',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF707684),
                        fontSize: 12,
                        fontFamily: 'Peyda',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      width: 4,
                      height: 4,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1024),
                        ),
                      ),

                    ),
                    const SizedBox(width: 8),
                    Container(
                      child: StarRating(
                        rating: 4,
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
                child: Text(
                  'ریزبینی، سوالات با جزئیات پزشک، تجربه یک مشاوره پزشکی خوب رو به شما میده و شما این حس رو پیدا نمی‌کنید که ایشون با یک نسخه دادن قصد دارن شمارو رو از سر خودشون باز کنن. حتما و قطعا رضایت کامل خواهید داشت بعد از مشاوره پزشکی. از آقای دکتر بابت تعهد و رفتار حرفه ای پزشکیشون تشکر میکنم. اگر به خودتون اهمیت می‌دین در انتخاب ایشون تردید نکنید.',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF2B303A),
                    fontSize: 14,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),

            ],
          ),
        ),
      ],
    );
  }
}