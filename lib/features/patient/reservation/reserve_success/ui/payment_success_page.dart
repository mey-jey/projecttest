import 'package:doctor_app/features/patient/reservation/reserve_success/cubit/reserve_success_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/action_buttons.dart';
import '../../widgets/appointment_details_card.dart';
import '../../widgets/payment_details_card.dart';
import '../../widgets/payment_status_page.dart';

class PaymentSuccessPage extends StatefulWidget {
  const PaymentSuccessPage({super.key});

  @override
  State<PaymentSuccessPage> createState() => _PaymentSuccessPageState();
}

class _PaymentSuccessPageState extends State<PaymentSuccessPage> {




  @override
  void initState() {
    context.read<ReserveSuccessCubit>().loadData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ReserveSuccessCubit, ReserveSuccessState>(
        builder: (context, state) {
          var latestState = state as ReserveSuccessInitial;
          return PaymentStatusPage(
            status: PaymentStatus.success,
            message: 'رزرو با موفقیت ثبت شد',
            imagePath: 'assets/images/Illustration-Success.png',
            appointmentDetails:   AppointmentDetails(
              doctorName: latestState.doctorName,
              doctorAvatarUrl: 'https://via.placeholder.com/20x20',
              date: latestState.date,
              time: latestState.time,
            ),
            paymentDetails: const PaymentDetails(
              deposit: '150,000',
              remaining: '400,000',
              transactionId: '16018519419173012',
              paymentDateTime: '1403/03/17، 09:41:08',
            ),
            actionButtons: ActionButtons(onPrimaryActionPressed: () {
              print("ddedddd");
              context.go("/reservation");
            }, onSecondaryActionPressed: () {

            },), // Specify success buttons
          );
        },
      ),
    );
  }
}
