import 'package:doctor_app/core/utils/colors.dart';
import 'package:doctor_app/features/patient/reservation/cubit/calendar_cubit.dart';
import 'package:doctor_app/features/patient/search/widgets/expertise_city/city.dart';
import 'package:doctor_app/features/patient/search/widgets/sex_list.dart';
import 'package:doctor_app/features/patient/search/widgets/time_frame_list.dart';
import 'package:doctor_app/models/radio_model.dart';
import 'package:doctor_app/utils/assets.dart';
import 'package:doctor_app/widgets/button_widget.dart';
import 'package:doctor_app/widgets/calendar_raw.dart';
import 'package:doctor_app/widgets/calendar_widget.dart';
import 'package:doctor_app/widgets/template_image.dart';
import 'package:doctor_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class Utils {
  static void showModalGetLocation(
      {required BuildContext context,
      required VoidCallback cancel,
      required VoidCallback ok}) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TemplateImage(
                    width: 200, height: 200, imageSvg: SvgAssets.icLocation),
                const CustomText(
                  'دسترسی به موقعیت مکانی',
                  size: 20,
                ),
                const SizedBox(
                  height: 20,
                ),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: CustomText(
                      color: DSColors.textColor.withOpacity(0.8),
                      textAlign: TextAlign.center,
                      'برای نمایش پزشک های شهر خودت،به موقعیت مکانی '
                      'تلفن همراهت نیاز داریم.ما به حریم خصوصی تو احترام میزاریم '
                      'و این اطلاعات فقط به همین منظور استفاده می شه.'),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomButton(
                      onTap: cancel,
                      height: 50,
                      bgColor: const [Colors.white, Colors.white],
                      borderWidth: 1,
                      borderColor: DSColors.textColor.withOpacity(0.2),
                      borderRadios: 15,
                      textColor: DSColors.textColor,
                      title: 'الآن نه',
                    )),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: CustomButton(
                        onTap: ok,
                        height: 50,
                        borderRadios: 15,
                        bgColor: const [Colors.blueAccent, Colors.blueAccent],
                        title: 'فعال سازی موقعیت',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void showModalSelectCity(
      {required BuildContext context, required Function(RadioModel) ok}) {
    RadioModel? citySelect;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.close_rounded)),
                    const CustomText(
                      'شهر',
                      size: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CityList(
                  onChange: (citySelected) {
                    citySelect = citySelected;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          if (citySelect != null) {
                            ok(citySelect!);
                          }
                        },
                        height: 50,
                        borderRadios: 15,
                        bgColor: const [Colors.blueAccent, Colors.blueAccent],
                        title: 'اعمال',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void showModalSelectSex(
      {required BuildContext context, required Function(RadioModel) ok}) {
    RadioModel? sexSelect;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.close_rounded)),
                    const CustomText(
                      'جنسیت',
                      size: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SexList(
                  onChange: (sexSelected) {
                    sexSelect = sexSelected;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          if (sexSelect != null) {
                            ok(sexSelect!);
                          }
                        },
                        height: 50,
                        borderRadios: 15,
                        bgColor: const [Colors.blueAccent, Colors.blueAccent],
                        title: 'اعمال',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void showModalSelectTimeFrame(
      {required BuildContext context, required Function(List<RadioModel>) ok}) {
    List<RadioModel>? timeFrameSelectList;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(Icons.close_rounded)),
                    const CustomText(
                      'بازه ساعتی',
                      size: 25,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TimeFrameList(
                  onChange: (timeFrameSelected) {
                    timeFrameSelectList = timeFrameSelected;
                  },
                ),
                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () {
                          if (timeFrameSelectList != null) {
                            ok(timeFrameSelectList!);
                          }
                        },
                        height: 50,
                        borderRadios: 15,
                        bgColor: const [Colors.blueAccent, Colors.blueAccent],
                        title: 'اعمال',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  static void showModalSelectDate(
      {required BuildContext context,
      required VoidCallback cancel,
      required Function(String) ok}) {
    String? dateSelect = '';

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      builder: (context) {
        return Container(
          padding: const EdgeInsets.all(16),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(10))),
          width: double.infinity,
          child: SingleChildScrollView(
            child: BlocProvider(
                create: (context) => CalendarCubit(),
                child: BlocBuilder<CalendarCubit, CalendarState>(
                    builder: (context, state) {
                  dateSelect = state.focusedDay.toString();

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                              onPressed: () {
                                context.pop();
                              },
                              icon: const Icon(Icons.close_rounded)),
                          const CustomText(
                            'تاریخ',
                            size: 25,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomCalendarWidget(
                        backgroundColor: Colors.white,
                        margin: 0,
                        firstDay: 0,
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: CustomButton(
                            onTap: cancel,
                            height: 50,
                            bgColor: const [Colors.white, Colors.white],
                            borderWidth: 1,
                            borderColor: DSColors.textColor.withOpacity(0.2),
                            borderRadios: 15,
                            textColor: DSColors.textColor,
                            title: 'حذف فیلتر',
                          )),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: CustomButton(
                              onTap: () {
                                ok(dateSelect ?? '');
                              },
                              height: 50,
                              borderRadios: 15,
                              bgColor: const [
                                Colors.blueAccent,
                                Colors.blueAccent
                              ],
                              title: 'اعمال',
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                })),
          ),
        );
      },
    );
  }
}
