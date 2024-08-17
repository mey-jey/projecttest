import 'package:doctor_app/features/patient/reservation/cubit/calendar_cubit.dart';
import 'package:doctor_app/features/patient/reservation/cubit/free_time_cubit.dart';
import 'package:doctor_app/models/free_time_model.dart';
import 'package:doctor_app/widgets/calendar_raw.dart';
import 'package:doctor_app/widgets/patient_reservation_stepper.dart';
import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:doctor_app/widgets/rounded_button.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseData extends StatelessWidget {
  const ChooseData({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CalendarCubit(),
        ),
        BlocProvider(
          create: (context) => FreeTimeCubit(),
        ),
      ],
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TopBar(text: 'انتخاب زمان مشاوره', onClick1: () {}, onClick2: () {},),
                        StepIndicator(currentStep: 1,),
                        const CalendarWidget(),
                        const _ListOfTimes(),
                      ],
                    ),
                  ),
                ),
              ),
              BlocBuilder<FreeTimeCubit, FreeTimeState>(
                builder: (context, state) {
                  return RectBlueButton(
                    label: 'تایید و ادامه',
                    isEnabled: state.selected != null, // or false for the disabled state
                    onPressed: () {
                      // Handle the button press action
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ListOfTimes extends StatelessWidget {
  const _ListOfTimes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(10, (index) {
        return _TimeItem(timeModel: FreeTimeModel(
            id: index,
            startTime: index.toString(),
            endTime: (index + 1).toString()
        ),);
      },),
    );
  }
}


class _TimeItem extends StatelessWidget {
  const _TimeItem({super.key, required this.timeModel});

  final FreeTimeModel timeModel;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FreeTimeCubit, FreeTimeState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.read<FreeTimeCubit>().setSelected(timeModel);
          },
          child: Container(
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(vertical: 23),
            margin: EdgeInsets.only(bottom: 8),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1,
                    color: state.selected?.id == timeModel.id ? const Color(0xFF0D111B) : const Color(0x3D999FAD)),
                borderRadius: BorderRadius.circular(12),
              ),
              shadows: [
                BoxShadow(
                  color: Color(0x070D111B),
                  blurRadius: 2,
                  offset: Offset(0, 1),
                  spreadRadius: 0,
                )
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  timeModel.startTime ?? "",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF0D111B),
                    fontSize: 14,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
                SizedBox(width: 4,),
                Text(
                  'تا',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF999FAD),
                    fontSize: 14,
                    fontFamily: 'Peyda',
                    fontWeight: FontWeight.w500,
                    height: 0.10,
                  ),
                ),
                SizedBox(width: 4,),
                Text(
                  timeModel.endTime ?? "",
                  textAlign: TextAlign.center,
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
          ),
        );
      },
    );
  }
}
