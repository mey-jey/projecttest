import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/theme.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    padding: const EdgeInsets.only(
                      top: 4.17,
                      left: 6,
                      right: 7.33,
                      bottom: 4.17,
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: SvgPicture.asset(
                      '/svgs/arrow_left.svg',
                      color: AppTheme.foregroundSoftColor,
                      width: 24,
                      height: 24,
                    ),
                  ),
                  Text(
                    'مشاهده همه',
                    style: TextStyle(
                      color: Color(0xFF335BFF),
                      fontSize: 14,
                      fontFamily: 'Peyda',
                      fontWeight: FontWeight.w500,
                      height: 0.10,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'نوبت‌های من',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF0D111B),
                fontSize: 14,
                fontFamily: 'Peyda',
                fontWeight: FontWeight.w500,
                height: 0.10,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
