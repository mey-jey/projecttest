import 'package:doctor_app/features/login/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingPage extends StatelessWidget {
  const BoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = PageController();

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Expanded(
              flex: 70,
              child: PageView.builder(
                controller: controller,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Expanded(
                          child: Image(
                            image: AssetImage(
                                'assets/images/page${index + 1}.png'),
                          ),
                        ),
                        const SizedBox(height: 50),
                        Container(
                            margin: const EdgeInsets.only(top: 20),
                            decoration: const BoxDecoration(
                              color: Color(0xFFF2F5F8),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                'onboarding_${index}_title'.tr,
                                style:
                                    const TextStyle(color: Color(0xFF717784)),
                              ),
                            )),
                        SizedBox(
                            width: double.maxFinite,
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'onboarding_${index}_description'.tr,
                                  style: const TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.center,
                                ))),
                      ],
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: SlideEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        dotColor: const Color(0xff007AFF).withOpacity(0.3),
                        activeDotColor: const Color(0xff007AFF),
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Get.off(() => const RegisterPage());
                      }, // Replace with your desired onPressed function
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff007AFF),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        minimumSize: const Size(double.infinity, 54.0),
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(60, 60, 67, 0.3),
                        ),
                        elevation: 0, // Remove shadow
                        disabledBackgroundColor:
                            const Color.fromRGBO(118, 118, 128, 0.12),
                      ),
                      child: Text(
                        'get_started_button'.tr,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
