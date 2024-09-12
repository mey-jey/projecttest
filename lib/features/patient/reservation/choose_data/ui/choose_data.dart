import 'package:doctor_app/features/patient/reservation/choose_data/bloc/choose_data_bloc.dart';
import 'package:doctor_app/features/patient/reservation/cubit/calendar_cubit.dart';
import 'package:doctor_app/features/patient/reservation/cubit/free_time_cubit.dart';
import 'package:doctor_app/widgets/calendar_raw.dart';
import 'package:doctor_app/widgets/patient_reservation_stepper.dart';
import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ChooseData extends StatelessWidget {
  String doctorId;
  String doctorName;

  ChooseData({super.key, required this.doctorId, required this.doctorName});

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
        BlocProvider(
          create: (context) => ChooseDataBloc(),
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
                        TopBar(
                            text: 'انتخاب زمان مشاوره',
                            rightIcon: const Icon(
                              Icons.chevron_right,
                              size: 35,
                              color: Color(0xff3D3D3D),
                            ),
                            onClick1: () {},
                            onClick2: () {
                              context.pop();
                            }),
                        StepIndicator(
                          currentStep: 1,
                        ),
                        DateAndTime(
                          doctorId: this.doctorId,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              BlocBuilder<ChooseDataBloc, ChooseDataState>(
                builder: (context, state) {
                  if (state is ChooseDataLoaded) {
                    return RectBlueButton(
                      label: 'تایید و ادامه',
                      isEnabled: state.selectedStartTime.isNotEmpty,
                      onPressed: () async {
                        context
                            .read<ChooseDataBloc>()
                            .add(ChooseDataSaveDateTimeInfoEvent(doctorName));
                        context.goNamed("personal_info", pathParameters: {
                          "id": this.doctorId,
                          "name": this.doctorName,
                        });
                      },
                    );
                  } else
                    return SizedBox();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DateAndTime extends StatefulWidget {
  final String doctorId;

  const DateAndTime({
    super.key,
    required this.doctorId,
  });

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  @override
  void initState() {
    super.initState();
    context
        .read<ChooseDataBloc>()
        .add(ChooseDataGetFreeTimesEvent(widget.doctorId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChooseDataBloc, ChooseDataState>(
        builder: (context, state) {
      if (state is ChooseDataLoading) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else if (state is ChooseDataLoaded) {
        return Column(
          children: [
            CalendarWidget(
              onDaySelected: (a) => {
                context.read<ChooseDataBloc>().add(ChooseDataSelectDateEvent(a))
              },
              enabledDays: state.data.keys.toList(),
              currentSelectedDay: state.seletedDate,
            ),
            _ListOfTimes(
              times: state.dateAppointments
                  .map((e) => {
                        'start_time': e.startTime,
                        'end_time': e.endTime,
                      })
                  .toList(),
              activeItemStartTime: state.selectedStartTime,
              onItemSelected: (startTime,endTime) => {
                context
                    .read<ChooseDataBloc>()
                    .add(ChooseDataSelectTimeEvent(startTime,endTime))
              },
            ),
          ],
        );
      } else
        return SizedBox();
    });
  }
}

class _ListOfTimes extends StatelessWidget {
  Function(String,String) onItemSelected;
  List<Map<String, String>> times;
  String activeItemStartTime;

  _ListOfTimes(
      {super.key,
      required this.onItemSelected,
      required this.times,
      required this.activeItemStartTime});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        times.length,
        (index) {
          return _TimeItem(
            onItemSelected: onItemSelected,
            startTime: times[index]['start_time']!,
            endTime: times[index]['end_time']!,
            isSelected: times[index]['start_time'] == activeItemStartTime,
          );
        },
      ),
    );
  }
}

class _TimeItem extends StatelessWidget {
  bool isSelected;
  String startTime;
  String endTime;
  Function(String,String) onItemSelected;

  _TimeItem(
      {super.key,
      required this.isSelected,
      required this.startTime,
      required this.endTime,
      required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onItemSelected(this.startTime,this.endTime);
      },
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(vertical: 23),
        margin: EdgeInsets.only(bottom: 8),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1,
                color: isSelected
                    ? const Color(0xFF0D111B)
                    : const Color(0x3D999FAD)),
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
              startTime,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFF0D111B),
                fontSize: 14,
                fontFamily: 'Peyda',
                fontWeight: FontWeight.w500,
                height: 0.10,
              ),
            ),
            SizedBox(
              width: 4,
            ),
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
            SizedBox(
              width: 4,
            ),
            Text(
              endTime,
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
  }
}
