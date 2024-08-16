import 'package:doctor_app/features/login/pages/forgot_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'login_appbar_title'.tr,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
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
              const SizedBox(height: 24),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'patient_password_textfield_hint'.tr,
                ),
              ),
              const SizedBox(height: 28),
              Row(
                children: [
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(() => const ForgotPasswordPage());
                      },
                      child: Text(
                        'forgot_password'.tr,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff007AFF),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              ElevatedButton(
                onPressed:
                    () {}, // Replace with your desired onPressed function
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
                  'sign_in_button'.tr,
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
