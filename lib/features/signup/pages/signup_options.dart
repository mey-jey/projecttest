import 'package:doctor_app/features/login/pages/register_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:doctor_app/utils/theme.dart';

class SignUpOptionsPage extends StatelessWidget {
  const SignUpOptionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              child: Image.asset("/images/signup_options.png"),
            ),
            const SizedBox(height: 20),
            Text(
              "signup_options_page_title".tr,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "signup_options_page_subtitle".tr,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: AppTheme.foregroundSoftColor),
              textAlign: TextAlign.center,
            ),
            // VISITOR
            GestureDetector(
              onTap: () => {},
              child: Container(
                  margin: const EdgeInsetsDirectional.symmetric(vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppTheme.dividerBaseColor,
                          width: 1,
                          style: BorderStyle.solid)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset('/images/icon_visitor.png'),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "signup_options_visitor_title".tr,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "signup_options_visitor_description".tr,
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        )
                      ]),
                      const Icon(
                        Icons.chevron_right,
                        color: AppTheme.foregroundWeakColor,
                      )
                    ],
                  )),
            ),

            // Specialist
            GestureDetector(
                onTap: () => {},
                child: Container(
                    margin: const EdgeInsetsDirectional.symmetric(vertical: 5),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppTheme.dividerBaseColor,
                            width: 1,
                            style: BorderStyle.solid)),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset('/images/icon_specialist.png'),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "signup_options_specialist_title".tr,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "signup_options_specialist_description".tr,
                                  textAlign: TextAlign.justify,
                                )
                              ],
                            ),
                          )
                        ]),
                        const Icon(
                          Icons.chevron_right,
                          color: AppTheme.foregroundWeakColor,
                        )
                      ],
                    ))),

            // CLINIC
            GestureDetector(
              onTap: () => {},
              child: Container(
                  margin: const EdgeInsetsDirectional.symmetric(vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                          color: AppTheme.dividerBaseColor,
                          width: 1,
                          style: BorderStyle.solid)),
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image.asset('/images/icon_clinic.png'),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "signup_options_clinic_title".tr,
                                textAlign: TextAlign.justify,
                                style: const TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "signup_options_clinic_description".tr,
                                textAlign: TextAlign.justify,
                              )
                            ],
                          ),
                        )
                      ]),
                      const Icon(
                        Icons.chevron_right,
                        color: AppTheme.foregroundWeakColor,
                      )
                    ],
                  )),
            ),

            const SizedBox(height: 10),

            const Spacer(),
          ],
        ),
      ),
    );
  }
}
