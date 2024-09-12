import 'package:doctor_app/core/utils/colors.dart';
import 'package:doctor_app/core/utils/extentions.dart';
import 'package:doctor_app/core/utils/utils.dart';
import 'package:doctor_app/features/patient/search/pages/custom_serach_cubit.dart';
import 'package:doctor_app/features/patient/search/pages/custom_serach_state.dart';
import 'package:doctor_app/models/radio_model.dart';
import 'package:doctor_app/models/doctor_model.dart';
import 'package:doctor_app/models/highly_specialties_model.dart';
import 'package:doctor_app/utils/assets.dart';
import 'package:doctor_app/widgets/template_image.dart';
import 'package:doctor_app/widgets/text_field_widget.dart';
import 'package:doctor_app/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:shamsi_date/shamsi_date.dart';

class CustomSearch extends StatefulWidget {
  @override
  State<CustomSearch> createState() => _SearchState();
}

class _SearchState extends State<CustomSearch> {
  List<String> historySearch = [];
  List<HighlySpecialtiesModel> highlySpecialtiesList = [];
  List<DoctorModel> doctorList = [];
  List<RadioModel> timeFrameSelectList = [];
  final TextEditingController _controller = TextEditingController();
  RadioModel? radioSelectCity;
  RadioModel? radioSelectSex;
  String? dateSelect;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomSearchCubit()..fetchHistorySearchList(),
      child: Scaffold(
        backgroundColor: DSColors.backgroundBaseColor,
        body: BlocBuilder<CustomSearchCubit, CustomSearchState>(
            builder: (context, state) {
          if (state is GetHighlySpecialtiesListLoaded) {
            highlySpecialtiesList = state.highlySpecialtiesList;
          } else if (state is GetDetailSearchLoaded) {
            historySearch = state.historySearch;
          } else if (state is GetDoctorListLoaded) {
            doctorList = state.doctorList;
          }

          return Directionality(
            textDirection: TextDirection.rtl,
            child: SafeArea(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                            color: DSColors.borderColor.withOpacity(0.3),
                            width: 2)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomTextField(
                          margin: const EdgeInsets.symmetric(horizontal: 3),
                          hint: 'جستجو تخصص،پزشک یا شهر',
                          lable: 'جستجو تخصص،پزشک یا شهر',
                          textEditingController: _controller,
                          focusBorderColor: Colors.black,
                          hintStyle: const TextStyle(
                              color: DSColors.textColor, fontSize: 14,fontFamily: "Peyda"),
                          onChange: (p0) {
                            if (p0.isEmpty) {
                              context
                                  .read<CustomSearchCubit>()
                                  .fetchHistorySearchList();
                            } else {
                              context
                                  .read<CustomSearchCubit>()
                                  .fetchDoctorList(p0);
                            }
                          },
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(7),
                            child: SvgPicture.asset(
                              SvgAssets.icSearch,
                              colorFilter: const ColorFilter.mode(
                                  DSColors.black, BlendMode.srcIn),
                            ),
                          ),
                          suffixIcon: _controller.text.isEmpty
                              ? const SizedBox()
                              : InkWell(
                                  onTap: () {
                                    _controller.clear();
                                    context
                                        .read<CustomSearchCubit>()
                                        .fetchHistorySearchList();
                                    setState(() {});
                                  },
                                  child: const Icon(Icons.close_rounded),
                                ),
                          autoFocus: false,
                          height: 35,
                        ),
                      ],
                    ),
                  ).marginSymmetric(horizontal: 15),
                  const SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    spacing: 5,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                              width: 1,
                              color: DSColors.borderColor.withOpacity(0.4),
                            ),
                            color: radioSelectCity != null
                                ? DSColors.textGrey.withOpacity(0.3)
                                : Colors.transparent),
                        child: InkWell(
                          onTap: () {
                            if (radioSelectCity != null) {
                              setState(() {
                                radioSelectCity = null;
                              });
                              context
                                  .read<CustomSearchCubit>()
                                  .fetchHistorySearchList();
                            } else {
                              Utils.showModalGetLocation(
                                context: context,
                                cancel: () {
                                  context.pop();
                                  Utils.showModalSelectCity(
                                    context: context,
                                    ok: (radioSelected) {
                                      setState(() {
                                        radioSelectCity = radioSelected;
                                      });
                                      context.pop();
                                      context
                                          .read<CustomSearchCubit>()
                                          .fetchDoctorList(
                                              radioSelectCity?.title ?? '');
                                    },
                                  );
                                },
                                ok: () {},
                              );
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(SvgAssets.icLocation),
                              const SizedBox(
                                width: 7,
                              ),
                              CustomText(radioSelectCity != null
                                  ? radioSelectCity?.title
                                  : 'شهر'),
                              radioSelectCity != null
                                  ? const Icon(
                                      Icons.close_rounded,
                                      size: 18,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (dateSelect != null) {
                            setState(() {
                              dateSelect = null;
                            });
                            context
                                .read<CustomSearchCubit>()
                                .fetchHistorySearchList();
                          } else {
                            Utils.showModalSelectDate(
                              context: context,
                              cancel: () {
                                context.pop();
                                setState(() {
                                  dateSelect = null;
                                });
                                context
                                    .read<CustomSearchCubit>()
                                    .fetchHistorySearchList();
                              },
                              ok: (gregorianDateStr) {
                                final DateTime gregorianDateTime =
                                    DateTime.parse(gregorianDateStr);
                                final Jalali shamsiDate =
                                    Jalali.fromDateTime(gregorianDateTime);
                                final String shamsiDateStr1 =
                                    shamsiDate.formatter.wN;
                                final String shamsiDateStr2 =
                                    shamsiDate.formatter.dd;
                                final String shamsiDateStr3 =
                                    shamsiDate.formatter.mm;
                                context.pop();
                                setState(() {
                                  dateSelect = '$shamsiDateStr1 '
                                      '$shamsiDateStr3/$shamsiDateStr2';
                                });
                              },
                            );
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 7),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: dateSelect != null
                                ? DSColors.textGrey.withOpacity(0.3)
                                : Colors.transparent,
                            border: Border.all(
                              width: 1,
                              color: DSColors.borderColor.withOpacity(0.4),
                            ),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(SvgAssets.icCalender),
                              const SizedBox(
                                width: 7,
                              ),
                              CustomText(dateSelect ?? 'تاریخ'),
                              dateSelect != null
                                  ? const Icon(
                                      Icons.close_rounded,
                                      size: 18,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 7),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: timeFrameSelectList.isNotEmpty
                              ? DSColors.textGrey.withOpacity(0.3)
                              : Colors.transparent,
                          border: Border.all(
                            width: 1,
                            color: DSColors.borderColor.withOpacity(0.4),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            if (timeFrameSelectList.isEmpty) {
                              Utils.showModalSelectTimeFrame(
                                context: context,
                                ok: (p0) {
                                  setState(() {
                                    timeFrameSelectList = p0;
                                  });
                                  context.pop();
                                },
                              );
                            } else {
                              setState(() {
                                timeFrameSelectList = [];
                              });
                            }
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(SvgAssets.icClock),
                              const SizedBox(
                                width: 7,
                              ),
                              CustomText(timeFrameSelectList.isNotEmpty
                                  ? timeFrameSelectList
                                      .map((timeFrame) => timeFrame.title)
                                      .join('،')
                                  : 'بازه ساعتی'),
                              timeFrameSelectList.isNotEmpty
                                  ? const Icon(
                                      Icons.close_rounded,
                                      size: 18,
                                    )
                                  : const SizedBox()
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (radioSelectSex != null) {
                            setState(() {
                              radioSelectSex = null;
                            });
                          } else {
                            Utils.showModalSelectSex(
                              context: context,
                              ok: (sexSelected) {
                                setState(() {
                                  radioSelectSex = sexSelected;
                                });
                                context.pop();
                              },
                            );
                          }
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 7),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: radioSelectSex != null
                                  ? DSColors.textGrey.withOpacity(0.3)
                                  : Colors.transparent,
                              border: Border.all(
                                width: 1,
                                color: DSColors.borderColor.withOpacity(0.4),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomText(radioSelectSex != null
                                    ? radioSelectSex?.title
                                    : 'جنسیت'),
                                radioSelectSex != null
                                    ? const Icon(
                                        Icons.close_rounded,
                                        size: 18,
                                      )
                                    : const SizedBox()
                              ],
                            )),
                      ),
                    ],
                  ).marginSymmetric(horizontal: 15),
                  state is GetDoctorListLoaded
                      ? const SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  SvgAssets.icTime,
                                  height: 20,
                                ),
                                const CustomText(
                                  'تاریخچه جستجو',
                                  padding: 10,
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  SvgAssets.icTrash,
                                  height: 20,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Wrap(
                                runSpacing: 5,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                spacing: 5,
                                children: historySearch.map(
                                  (itemHistory) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          width: 1,
                                          color: DSColors.borderColor
                                              .withOpacity(0.4),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomText(itemHistory),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          const Icon(
                                              Icons.keyboard_arrow_left_rounded)
                                        ],
                                      ),
                                    );
                                  },
                                ).toList()),
                            const SizedBox(
                              height: 5,
                            ),
                          ],
                        ).paddingSymmetric(horizontal: 25),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    height: 5,
                    color: DSColors.borderColor.withOpacity(0.3),
                  ),
                  state is GetDoctorListLoaded
                      ? const SizedBox()
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 5,
                            ),
                            const CustomText(
                              'تخصص های پر جستجو',
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Wrap(
                                runSpacing: 5,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                spacing: 5,
                                children: highlySpecialtiesList.map(
                                  (item) {
                                    return Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 7),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                          width: 1,
                                          color: DSColors.borderColor
                                              .withOpacity(0.4),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          SvgPicture.asset(item.icon),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          CustomText(item.title),
                                          const SizedBox(
                                            width: 7,
                                          ),
                                          const Icon(
                                              Icons.keyboard_arrow_left_rounded)
                                        ],
                                      ),
                                    );
                                  },
                                ).toList()),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ).paddingSymmetric(horizontal: 25),
                  state is GetDoctorListLoaded
                      ? state.doctorList.isEmpty
                          ? Center(
                              child: Column(
                                children: [
                                  TemplateImage(
                                      width: 200,
                                      height: 200,
                                      imageSvg: SvgAssets.icSearch),
                                  const CustomText('نتیجه ای پیدا نشد'),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  CustomText(
                                    'جستجو را با فیلتر ها یا با عبارت '
                                    'دیگری ادامه بده',
                                    size: 15,
                                    color: DSColors.textColor.withOpacity(0.7),
                                  )
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                CustomText(
                                  '${state.doctorList.length} متخصص',
                                  isMatchParent: true,
                                  size: 14,
                                  color: DSColors.textColor.withOpacity(0.5),
                                ).marginSymmetric(horizontal: 15),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 1,
                                  color: DSColors.textColor.withOpacity(0.1),
                                ),
                                ListView.builder(
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: state.doctorList.length,
                                  itemBuilder: (context, index) {
                                    var doctor = state.doctorList[index];
                                    return Column(
                                      children: [
                                        Column(
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 40,
                                                  height: 40,
                                                  decoration: ShapeDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                          doctor.image ?? ''),
                                                      fit: BoxFit.fill,
                                                    ),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              1024),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CustomText(
                                                              doctor.name),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 10,
                                                                    left: 5),
                                                            width: 5,
                                                            height: 5,
                                                            decoration: BoxDecoration(
                                                                color: DSColors
                                                                    .textColor
                                                                    .withOpacity(
                                                                        0.2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100)),
                                                          ),
                                                          CustomText(
                                                            doctor.expertise,
                                                            size: 14,
                                                            color: DSColors
                                                                .textColor
                                                                .withOpacity(
                                                                    0.5),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Wrap(
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .center,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        children: [
                                                          CustomText(
                                                            doctor.rate,
                                                            size: 12,
                                                            padding: 0,
                                                          ),
                                                          const Icon(
                                                            Icons
                                                                .star_rate_rounded,
                                                            size: 18,
                                                            color: DSColors
                                                                .yellowFill,
                                                          ),
                                                          CustomText(
                                                            'از ${doctor.voteNumber} رای',
                                                            size: 12,
                                                            color: DSColors
                                                                .textColor
                                                                .withOpacity(
                                                                    0.6),
                                                            padding: 0,
                                                          ),
                                                          Container(
                                                            margin:
                                                                const EdgeInsets
                                                                    .only(
                                                                    right: 10,
                                                                    left: 5),
                                                            width: 5,
                                                            height: 5,
                                                            decoration: BoxDecoration(
                                                                color: DSColors
                                                                    .textColor
                                                                    .withOpacity(
                                                                        0.2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            100)),
                                                          ),
                                                          CustomText(
                                                            doctor
                                                                .counselingNumber,
                                                            size: 12,
                                                          ),
                                                          CustomText(
                                                              size: 12,
                                                              color: DSColors
                                                                  .textColor
                                                                  .withOpacity(
                                                                      0.6),
                                                              'جلسه مشاوره')
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                Icon(
                                                  Icons
                                                      .keyboard_arrow_left_rounded,
                                                  color: DSColors.textColor
                                                      .withOpacity(0.5),
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  SvgAssets.icLocation,
                                                  height: 25,
                                                ),
                                                CustomText(
                                                  doctor.address,
                                                  size: 14,
                                                )
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                CustomText(
                                                  int.parse(
                                                          (doctor.price ?? ''))
                                                      .toCurrency(),
                                                  size: 25,
                                                ),
                                                const CustomText('تومان'),
                                              ],
                                            )
                                          ],
                                        ).paddingOnly(
                                            top: 10,
                                            bottom: 20,
                                            right: 20,
                                            left: 20),
                                        Container(
                                          height: 1,
                                          color: DSColors.textColor
                                              .withOpacity(0.1),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ],
                            )
                      : const SizedBox()
                ],
              ).paddingSymmetric(vertical: 15),
            ),
          );
        }),
      ),
    );
  }
}
