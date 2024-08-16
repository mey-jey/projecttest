import 'package:doctor_app/features/login/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'register_appbar_title'.tr,
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
              Text(
                'account_type'.tr,
                style: const TextStyle(
                  fontSize: 14,
                  color: Color.fromRGBO(60, 60, 67, 0.6),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Expanded(
                child: FormView(),
              ),
              const SizedBox(height: 32),
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
                  'create_account_button'.tr,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: double.maxFinite,
                child: GestureDetector(
                  onTap: () {
                    Get.to(const LoginPage());
                  },
                  child: const Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff007AFF),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 28),
            ],
          ),
        ),
      ),
    );
  }
}

class FormView extends StatefulWidget {
  const FormView({
    super.key,
  });

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends State<FormView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 28,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(118, 118, 118, 0.12),
              borderRadius: BorderRadius.all(Radius.circular(9)),
            ),
            child: TabBar(
              dividerHeight: 0,
              indicatorWeight: 0,
              indicatorSize: TabBarIndicatorSize.tab,
              splashFactory: NoSplash.splashFactory,
              indicatorPadding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 2),
              indicator: BoxDecoration(
                border: Border.all(
                  color: const Color.fromRGBO(0, 0, 0, 0.04),
                  width: 0.5,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.04),
                    offset: Offset(0, 3),
                    blurRadius: 1,
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.12),
                    offset: Offset(0, 3),
                    blurRadius: 8,
                    spreadRadius: 0,
                  ),
                ],
                borderRadius: const BorderRadius.all(Radius.circular(7)),
                color: Colors.white,
              ),
              tabs: const [
                Tab(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      'Patient',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      'Provider',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                Tab(
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      'Clinic',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: TabBarView(
              children: [
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'patient_fullname_textfield_hint'.tr,
                      ),
                    ),
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
                    const SizedBox(height: 24),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'patient_repeat_password_textfield_hint'.tr,
                      ),
                    ),
                    const SizedBox(height: 32),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black, // Default text color
                        ),
                        children: [
                          TextSpan(
                            text: 'By continuing, you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Colors
                                  .blue, // Blue color for "Terms & Conditions"
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Colors
                                  .blue, // Blue color for "Privacy Policy"
                            ),
                          ),
                          TextSpan(
                            text: '.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText:
                            'patient_certificate_number_textfield_hint'.tr,
                      ),
                    ),
                    const SizedBox(height: 24),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'patient_fullname_textfield_hint'.tr,
                      ),
                    ),
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
                    const SizedBox(height: 24),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'patient_repeat_password_textfield_hint'.tr,
                      ),
                    ),
                    const SizedBox(height: 32),
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black, // Default text color
                        ),
                        children: [
                          TextSpan(
                            text: 'By continuing, you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Colors
                                  .blue, // Blue color for "Terms & Conditions"
                            ),
                          ),
                          TextSpan(
                            text: ' and ',
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Colors
                                  .blue, // Blue color for "Privacy Policy"
                            ),
                          ),
                          TextSpan(
                            text: '.',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
