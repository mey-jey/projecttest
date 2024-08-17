import 'package:easy_stepper/easy_stepper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../core/utils/colors.dart';

class PatientReservationStepper extends StatefulWidget {
  int activeStep=0;
  PatientReservationStepper(this.activeStep,{super.key});
  @override
  State<PatientReservationStepper> createState() => _PatientReservationStepperState();
}

class _PatientReservationStepperState extends State<PatientReservationStepper> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: EasyStepper(
        activeStep: widget.activeStep,
        // lineLength: 50,
        lineStyle: LineStyle(
          lineLength: 10,
          activeLineColor: Colors.green,
          defaultLineColor: Colors.blue
        ),
        stepShape: StepShape.rRectangle,
        stepBorderRadius: 15,
        borderThickness: 2,
        padding: EdgeInsets.zero,
        stepRadius: 28,
        // finishedStepBorderColor: Colors.deepOrange,
        finishedStepTextColor: Colors.deepOrange,
        finishedStepBackgroundColor: Colors.deepOrange,
        activeStepIconColor: Colors.deepOrange,
        showLoadingAnimation: false,
        steps: [
          EasyStep(
            customStep: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Opacity(
                opacity: widget.activeStep >= 0 ? 1 : 0.3,
                child: widget.activeStep >= 0 ?ActiveState():CompletedState(),
              ),
            ),
            customTitle: const Text(
              'پرداخت',
              textAlign: TextAlign.center,
            ),
          ),
          EasyStep(
            customStep: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Opacity(
                opacity: widget.activeStep >= 1 ? 1 : 0.3,
                child: widget.activeStep >= 1 ?ActiveState():CompletedState(),
              ),
            ),
            customTitle: const Text(
              'اطلاعات شخصی',
              textAlign: TextAlign.center,
            ),
          ),
          EasyStep(
            customStep: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Opacity(
                opacity: widget.activeStep >= 2 ? 1 : 0.3,
                child: widget.activeStep >= 2 ?ActiveState():CompletedState(),
              ),
            ),
            customTitle: const Text(
              'تاریخ و زمان',
              textAlign: TextAlign.center,
            ),
          ),

        ],
        onStepReached: (index) => setState(() => widget.activeStep = index),
      ),
    );
  }
}

class ActiveState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF335BFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0xFFC1D6FF),
            blurRadius: 0,
            offset: Offset(0, 0),
            spreadRadius: 2,
          )
        ],
      ),
      child: Center(
        child: Container(
          width: 12,
          height: 12,
          padding: const EdgeInsets.all(1),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: SvgPicture.asset(
            '/images/svgs/sun.svg',
            colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
class CompletedState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 24,
      height: 24,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF335BFF),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadows: [
          BoxShadow(
            color: Color(0xFFC1D6FF),
            blurRadius: 0,
            offset: Offset(0, 0),
            spreadRadius: 2,
          )
        ],
      ),
      child: Center(
        child: Container(
          width: 12,
          height: 12,
          padding: const EdgeInsets.all(1),
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(),
          child: SvgPicture.asset(
            '/images/svgs/sun.svg',
            colorFilter: const ColorFilter.mode(DSColors.white, BlendMode.srcIn),
            width: 12,
            height: 12,
          ),
        ),
      ),
    );
  }
}
