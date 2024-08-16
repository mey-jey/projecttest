import 'package:doctor_app/features/common/profile_avatar.dart';
import 'package:doctor_app/features/login/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:doctor_app/utils/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("signup_page_title".tr),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: ProfileAvatar(),
            ),
            const SizedBox(height: 10),
            Text(
              "signup_page_header_text".tr,
              style: const TextStyle(color: AppTheme.foregroundSoftColor),
            ),
            const SizedBox(height: 20),
            TextField(
                decoration: InputDecoration(
              labelText: "signup_page_textfield_placeholder".tr,
              border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SvgPicture.asset(
                  '/images/icon_id.svg',
                  color: AppTheme.foregroundSoftColor,
                  width: 24,
                  height: 24,
                ),
              ),
            )),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => PatientFilledPage()),
                // );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
              ),
              label: Text("signup_page_button".tr),
              icon: const Icon(Icons.check),
            ),
            const SizedBox(height: 20),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                  text: "signup_page_button_terms_span_1".tr,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.normal,
                    color: AppTheme.foregroundSoftColor,
                    letterSpacing: 0.7,
                  ),
                  children: [
                    TextSpan(
                        text: "signup_page_button_terms_span_2".tr,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.foregroundSoftColor,
                          letterSpacing: 0.7,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    TextSpan(
                      text: "signup_page_button_terms_span_3".tr,
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.normal,
                        color: AppTheme.foregroundSoftColor,
                        letterSpacing: 0.7,
                      ),
                    ),
                    TextSpan(
                        text: "signup_page_button_terms_span_4".tr,
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: AppTheme.foregroundSoftColor,
                          letterSpacing: 0.7,
                        ),
                        recognizer: TapGestureRecognizer()..onTap = () {}),
                    TextSpan(
                      text: "signup_page_button_terms_span_5".tr,
                      style: const TextStyle(
                        fontSize: 11.0,
                        fontWeight: FontWeight.normal,
                        color: AppTheme.foregroundSoftColor,
                        letterSpacing: 0.7,
                      ),
                    ),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
