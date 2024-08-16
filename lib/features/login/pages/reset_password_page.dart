import 'package:doctor_app/features/patient/pages/patient_main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'reset_password_appbar_title'.tr,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 14),
            decoration: BoxDecoration(
              color: const Color(0xff7F7F7F).withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: const Icon(
              Icons.close,
              size: 18,
              color: Color(0xff3D3D3D),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'new_password_textfield_hint'.tr,
                ),
              ),
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'new_password_repeat_textfield_hint'.tr,
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'reset_password_hint1'.tr,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3C3C43).withOpacity(0.6),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'reset_password_hint2'.tr,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff3C3C43).withOpacity(0.6),
                  ),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Get.to(() => const PatientMainPage());
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
                  'confirm_button'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 14),
            ],
          ),
        ),
      ),
    );
  }
}
