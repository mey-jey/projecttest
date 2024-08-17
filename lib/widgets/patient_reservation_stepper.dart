import 'package:doctor_app/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep;

  StepIndicator({required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: 360,
        height: 68,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildStep('تاریخ و زمان', 1),
            _buildConnector(0),
            _buildStep('اطلاعات شخصی', 2),
            _buildConnector(1),
            _buildStep('پرداخت', 3),
          ],
        ),
      ),
    );
  }

  Widget _buildStep(String label, int step) {
    bool isActive = step == currentStep;
    bool isCompleted = step < currentStep;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            color: isActive ? Color(0xFF335BFF) : isCompleted ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: isActive || isCompleted ? null : Border.all(color: Color(0x3D999FAD)),
            boxShadow: [
              BoxShadow(
                color: isActive || isCompleted ? Color(0xFFC1D6FF) : Color(0x070D111B),
                blurRadius: isActive || isCompleted ? 0 : 2,
                offset: Offset(0, isActive || isCompleted ? 0 : 1),
                spreadRadius: isActive || isCompleted ? 2 : 0,
              )
            ],
          ),
          child: isCompleted
              ? Icon(Icons.check, size: 12, color: Colors.white)
              : Center(
            child: SvgPicture.asset(
              'assets/svgs/sun.svg',
              colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
              width: 12,
              height: 12,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: isActive || isCompleted ? Color(0xFF0D111B) : Color(0xFF707684),
            fontSize: 10,
            fontFamily: 'Peyda',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }

  Widget _buildConnector(int step) {
    bool isCompleted = step < currentStep - 1;
    bool isActive = step == currentStep - 1;

    return Builder(builder: (context) {
      var child;
      if (isCompleted) {
        child =  Container(
          height: 1,
          color: Colors.green, // Completed connector color
        );
      } else if (isActive) {
        child = Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: Color(0xFF335BFF), // Active part color (blue)
              ),
            ),
            Expanded(
              child: Container(
                height: 1,
                color: Color(0x3D999FAD), // Inactive part color (gray)
              ),
            ),
          ],
        );
      } else {
        child =  Container(
          height: 1,
          color: Color(0x3D999FAD), // Inactive connector color
        );
      }

      return Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            child,
            SizedBox(height: 8),
            Text(
              "",
              style: TextStyle(
                color: isActive || isCompleted ? Color(0xFF0D111B) : Color(0xFF707684),
                fontSize: 10,
                fontFamily: 'Peyda',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      );
    },);
  }
}