import 'package:doctor_app/features/login/pages/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'forgot_password_appbar_title'.tr,
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
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'patient_phone_textfield_hint'.tr,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  Get.off(() => const ResetPasswordPage());
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
