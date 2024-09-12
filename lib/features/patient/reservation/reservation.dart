import 'package:doctor_app/models/comment.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../widgets/comments_bottom_sheet.dart';
import '../../../widgets/comments_header.dart';
import '../../../widgets/comments_item.dart';
import '../../../widgets/patient_reservation_address.dart';
import '../../../widgets/patient_reservation_header.dart';
import '../../../widgets/patient_reservation_price.dart';
import '../../../widgets/rounded_button.dart';

class Reservation extends StatelessWidget {
  String userName;
  String id;

  Reservation(this.userName,this.id);

  final List<Comment> commentItems = [
    Comment( commentDate: 'دیروز',
        commentText: "ریزبینی، سوالات با جزئیات پزشک، تجربه یک مشاوره پزشکی خوب رو به شما میده و شما این حس رو پیدا نمی‌کنید که ایشون با یک نسخه دادن قصد دارن شمارو رو از سر خودشون باز کنن. حتما و قطعا رضایت کامل خواهید داشت بعد از مشاوره پزشکی. از آقای دکتر بابت تعهد و رفتار حرفه ای پزشکیشون تشکر میکنم. اگر به خودتون اهمیت می‌دین در انتخاب ایشون تردید نکنید.",
        starCount: 4),
    Comment( commentDate: '5 روز پیش',
        commentText: "بسیار آگاه و دلسوز هستند. همیشه احساس می‌کنم که به خوبی شنیده می‌شوم و مراقبت خوبی دریافت می‌کنم.",
        starCount: 4),
    Comment( commentDate: '17 خرداد 1403',
        commentText: "شدیدا توصیه می‌کنم! حرفه‌ای، دقیق و با دقت در هر مشاوره.",
        starCount: 4),
    Comment( commentDate: 'دیروز',
        commentText: "بسیار آگاه و دلسوز هستند. همیشه احساس می‌کنم که به خوبی شنیده می‌شوم و مراقبت خوبی دریافت می‌کنم.",
        starCount: 4),
    Comment( commentDate: '5 روز پیش',
        commentText: "ریزبینی، سوالات با جزئیات پزشک، تجربه یک مشاوره پزشکی خوب رو به شما میده و شما این حس رو پیدا نمی‌کنید که ایشون با یک نسخه دادن قصد دارن شمارو رو از سر خودشون باز کنن. حتما و قطعا رضایت کامل خواهید داشت بعد از مشاوره پزشکی. از آقای دکتر بابت تعهد و رفتار حرفه ای پزشکیشون تشکر میکنم. اگر به خودتون اهمیت می‌دین در انتخاب ایشون تردید نکنید.",
        starCount: 4),
    Comment( commentDate: 'دیروز',
        commentText: "بسیار آگاه و دلسوز هستند. همیشه احساس می‌کنم که به خوبی شنیده می‌شوم و مراقبت خوبی دریافت می‌کنم.",
        starCount: 4,)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Image(
              image: AssetImage(
                'assets/images/blue_background.png',
              ),
              width: double.infinity,
              // height: 320,
              fit: BoxFit.fill,
            ),
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TopBar(
                      text: this.id,
                      leftIcon: const Icon(
                        Icons.share_outlined,
                        size: 25,
                        color: Color(0xff3D3D3D),
                      ),
                      rightIcon: const Icon(
                        Icons.chevron_right,
                        size: 35,
                        color: Color(0xff3D3D3D),
                      ),
                      onClick1: () {},
                      onClick2: () {}),
                  PatientReservationHeader(userName),
                  PatientReservationAddress(),
                  CommentsHeader(),
                  CommentItem(activeStar: 3,commentDate: "دیروز",
                  commentText: 'ریزبینی، سوالات با جزئیات پزشک، تجربه یک مشاوره پزشکی خوب رو به شما میده و شما این حس رو پیدا نمی‌کنید که ایشون با یک نسخه دادن قصد دارن شمارو رو از سر خودشون باز کنن. حتما و قطعا رضایت کامل خواهید داشت بعد از مشاوره پزشکی. از آقای دکتر بابت تعهد و رفتار حرفه ای پزشکیشون تشکر میکنم. اگر به خودتون اهمیت می‌دین در انتخاب ایشون تردید نکنید.',
                  ),
                  CommentItem(activeStar: 5,commentDate: "5 روز پیش",
                    commentText: 'بسیار آگاه و دلسوز هستند. همیشه احساس می‌کنم که به خوبی شنیده می‌شوم و مراقبت خوبی دریافت می‌کنم.',
                  ),
                  CommentItem(activeStar: 2,commentDate: "17 خرداد 1403",
                    commentText: 'شدیدا توصیه می‌کنم! حرفه‌ای، دقیق و با دقت در هر مشاوره.',
                  ),
                  RoundedButton(
                    text: 'همه نظرات (24)',
                    backgroundColor: Colors.black,
                    onPressed: () {
                      bottomSheetComment(context,commentItems);
                    },
                    iconColor: Colors.white,
                    icon: Icons.arrow_back_ios_new_rounded,
                    isActive: true,
                    textColor: Colors.white,
                    inactiveBackgroundColor: Color(0xffF2F5F8),
                    inactiveTextColor: Color(0xffCACFD8),
                  ),
                  SizedBox(height: 70,)
                ],
              ),
            ),
            Positioned(
              bottom: 0, // Positioned at the bottom
              left: 0,
              right: 0,
              child: GestureDetector(
                onTap: () {
                  print("object");
                  context.goNamed("choose_date",
                      pathParameters: {"id": this.id, "name": this.userName});
                },
                child: PatientReservationPrice(buttonText: 'گرفتن نوبت مشاوره',
                  priceText: '550,000',
                  onClick1: () {},),
              ),
            ),
            // PatientReservationPrice(),
          ],
        ),
      ),
    );
  }
}
