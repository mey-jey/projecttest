import 'package:doctor_app/features/patient/reservation/reservation_info/cubit/reservation_info_cubit.dart';
import 'package:doctor_app/features/patient/reservation/reservation_info/ui/reservation_info.dart';
import 'package:doctor_app/widgets/rect_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class StickyFooter extends StatelessWidget {
  const StickyFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationInfoCubit, ReservationInfoState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(top: BorderSide(color: Color(0xE1E1E1FF))),
            boxShadow: [
              BoxShadow(
                color: Color(0x190D111B),
                blurRadius: 32,
                offset: Offset(0, 12),
                spreadRadius: -12,
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Text(
                    '150,000',
                    style: TextStyle(
                      fontFamily: 'Peyda',
                      color: Color(0xFF0D111B),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Text(
                    'تومان',
                    style: TextStyle(
                      fontFamily: 'Peyda',
                      color: Color(0xFF707684),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              RectBlueButton(
                onPressed: () {
                  context
                      .read<ReservationInfoCubit>()
                      .sendDate(() => {
                        context.go("/payment_success_page")
                      });
                },
                label: "پرداخت بیعانه",
                isEnabled: true,
              ),
            ],
          ),
        );
      },
    );
  }
}
