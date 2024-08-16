import 'package:doctor_app/features/patient/reservation/cubit/calendar_cubit.dart';
import 'package:doctor_app/widgets/calendar_raw.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseData extends StatelessWidget {
  const ChooseData({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalendarCubit(),
      child:Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TopBar(text:'انتخاب زمان مشاوره',onClick1: () {}, onClick2: () {},),
                  const CalendarWidget(),
                  const _ListOfTimes()
                ],
              ),
            ),
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
      return _TimeItem(start: index.toString(),end: (index+1).toString(),);
    },),
    );
  }
}



class _TimeItem extends StatelessWidget {
  const _TimeItem({super.key, this.start, this.end});
  final String? start;
  final String? end;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 23),
      margin: EdgeInsets.only(bottom: 8),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0x3D999FAD)),
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
            start??"",
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
            end??"",
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
    );
  }
}
