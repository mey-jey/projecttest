import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PatientMainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.92, -0.40),
              end: Alignment(-0.92, 0.4),
              colors: [Colors.white, Color(0xFFF5F7F9)],
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 147,
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/doctor.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'به دنبال چه متخصصی هستی؟',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF0D111B),
                                  fontSize: 20,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w500,
                                  // height: 0.07,
                                ),
                              ),
                            ),
                            const SizedBox(height: 8),
                            SizedBox(
                              width: double.infinity,
                              child: Text(
                                'از بهترین‌های شهر خودت کمک بگیر',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: Color(0xFF707684),
                                  fontSize: 12,
                                  fontFamily: 'Peyda',
                                  fontWeight: FontWeight.w400,
                                  // height: 0.11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      // const SizedBox(height: 12),
                      ElevatedButton.icon(
                        iconAlignment: IconAlignment.end,
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        label: Text(
                          'جستجو کن',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontFamily: 'Peyda',
                            fontWeight: FontWeight.w500,
                            // height: 0.11,
                          ),
                        ),
                        onPressed: () {
                          // context.go("/search/search_list");
                          context.go("/Customsearch");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF335BFF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          minimumSize: const Size(130, 40),
                        ),
                      ),
                    ],
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
