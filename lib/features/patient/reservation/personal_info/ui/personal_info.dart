import 'package:doctor_app/features/patient/reservation/personal_info/cubit/personal_info_cubit.dart';
import 'package:doctor_app/features/patient/reservation/widgets/description_input.dart';
import 'package:doctor_app/widgets/patient_reservation_stepper.dart';
import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:doctor_app/widgets/rounded_button.dart';
import 'package:doctor_app/widgets/tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/info_list.dart';

class PersonalInfo extends StatelessWidget {
  var doctorId;
  var doctorName;

  PersonalInfo(this.doctorId, this.doctorName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocProvider(
          create: (context) => PersonalInfoCubit(),
          child: SingleChildScrollView(
            child: BlocBuilder<PersonalInfoCubit, PersonalInfoState>(
              builder: (context, state) {
                if (state is PersonalInfoInitial) {
                  return Column(children: [
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
                      currentStep: 2,
                    ),
                    InfoListWidget(
                      name: state.name,
                      bod: state.bod,
                      job: state.job,
                      edu: state.edu,
                      onName: (String name) {
                        context.read<PersonalInfoCubit>().onName(name);
                      },
                      onBod: (String bod) {
                        context.read<PersonalInfoCubit>().onBod(bod);
                      },
                      onJob: (String job) {
                        context.read<PersonalInfoCubit>().onJob(job);
                      },
                      onEdu: (String edu) {
                        context.read<PersonalInfoCubit>().onEdu(edu);
                      },
                    ),
                    DescriptionInputWidget(
                      isChecked: true,
                      onChanged: (value) {
                        context.read<PersonalInfoCubit>().onMedical(value);
                      },
                    ),
                    RectBlueButton(
                      label: 'تایید و ادامه',
                      isEnabled: true, // or false for the disabled state
                      onPressed: () {
                        context.read<PersonalInfoCubit>().sendData(() => {
                              context.goNamed("doctor_info_page", pathParameters: {
                                "id": this.doctorId,
                                "name": doctorName,
                              })
                            });
                      },
                    )
                  ]);
                }
                return SizedBox();
              },
            ),
          ),
        ),
      ),
    );
  }
}
