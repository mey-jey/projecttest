import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PatientHomePage extends StatelessWidget {
  const PatientHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 12),
              child: Row(
                children: [
                  Text(
                    'up_comming_appointments'.trParams(
                      {'num': '3'},
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff3C3C43).withOpacity(0.6),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'view_all'.tr,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff007AFF),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 2),
            const Expanded(
              flex: 52,
              child: DoctorItemPageView(),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'find_local_doctors'.tr.toUpperCase(),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff3C3C43).withOpacity(0.6),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        size: 18,
                      ),
                      prefixIconColor: const Color(0xff3C3C43).withOpacity(0.3),
                      hintText: 'illness_textfield_hint'.tr,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.compass,
                        size: 18,
                      ),
                      prefixIconColor: const Color(0xff3C3C43).withOpacity(0.3),
                      hintText: 'near_me_textfield_hint'.tr,
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        CupertinoIcons.search,
                        size: 18,
                      ),
                      prefixIconColor: const Color(0xff3C3C43).withOpacity(0.3),
                      hintText: 'tommorow_textfield_hint'.tr,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  splashFactory: InkRipple.splashFactory,
                  shadowColor: Colors.transparent,
                  elevation: 0,
                  backgroundColor: const Color(0xff007AFF).withOpacity(0.15),
                  minimumSize: const Size(double.maxFinite, 55),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'find_care'.tr,
                      style: const TextStyle(
                        color: Color(0xff007AFF),
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      CupertinoIcons.wand_stars,
                      color: Color(0xff007AFF),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(
              flex: 48,
            ),
          ],
        ),
      ),
    );
  }
}

class DoctorItemPageView extends StatelessWidget {
  const DoctorItemPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: controller,
            children: [
              ...List.generate(
                3,
                (index) => Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff007AFF),
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.all(16),
                  margin: const EdgeInsets.symmetric(horizontal: 26),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius:
                                BorderRadius.all(Radius.circular(200)),
                            child: Image(
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                              image:
                                  AssetImage('assets/images/profile_image.png'),
                            ),
                          ),
                          SizedBox(width: 8),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Dr. Emily Walker',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.star_circle_fill,
                                    color: Colors.white,
                                    size: 16,
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    'General Doctor',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Divider(
                        thickness: 1,
                        height: 32,
                        color: Color(0xff0A84FF),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Row(
                          children: [
                            Icon(
                              CupertinoIcons.calendar,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 4),
                            Text(
                              'Sunday, 12 June',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Spacer(),
                            Icon(
                              CupertinoIcons.clock,
                              color: Colors.white,
                              size: 18,
                            ),
                            SizedBox(width: 4),
                            Text(
                              '11:00 - 12:00 AM',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: SmoothPageIndicator(
            controller: controller,
            effect: WormEffect(
              dotColor: const Color(0xff007AFF).withOpacity(0.3),
              activeDotColor: const Color(0xff007AFF),
              dotHeight: 8,
              dotWidth: 8,
            ),
            count: 3,
          ),
        ),
      ],
    );
  }
}
