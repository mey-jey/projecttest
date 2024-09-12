import 'package:doctor_app/features/patient/reservation/reservation_info/cubit/reservation_info_cubit.dart';
import 'package:doctor_app/widgets/show_on_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/base_card.dart';
import '../../widgets/custom_divider.dart';
import '../../widgets/icon_text_row.dart';
import '../../widgets/section_title.dart';

class ReservationInfo extends StatefulWidget {
  const ReservationInfo({super.key});

  @override
  State<ReservationInfo> createState() => _ReservationInfoState();
}

class _ReservationInfoState extends State<ReservationInfo> {

  @override
  void initState() {
    super.initState();
    context.read<ReservationInfoCubit>().loadData();
  }

  @override
  Widget build(BuildContext context) {
    return BaseCard(
      child: BlocBuilder<ReservationInfoCubit, ReservationInfoState>(
        builder: (context, state) {
          String time = (state as ReservationInfoInitial).time;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionTitle(title: 'جزئیات رزرو'),
              const SizedBox(height: 20),
              IconTextRow(
                label: 'زمان',
                value: time,
                icon: Icons.access_time,
              ),
              const CustomDivider(),
              const IconTextRow(
                label: 'آدرس',
                value: 'مشهد، وکیل‌آباد 17، معاد 8، ساختمان سینا',
                icon: Icons.location_on,
              ),
              const SizedBox(height: 32),
              ShowOnMap(),
            ],
          );
        },
      ),
    );
  }
}
