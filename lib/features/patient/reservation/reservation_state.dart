import 'package:equatable/equatable.dart';

abstract class ReservationState extends Equatable {
  ReservationState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}

class InitialState extends ReservationState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}

class OpenEmailState extends ReservationState {
  OpenEmailState(this.emailContent):super(emailContent);

  String emailContent;
  @override
  List<Object> get props => [emailContent];
}

class OpenPhoneState extends ReservationState {
  OpenPhoneState(this.phoneNumberContent):super(phoneNumberContent);

  String phoneNumberContent;
  @override
  List<Object> get props => [phoneNumberContent];
}

class OpenWhatsAppState extends ReservationState {
  OpenWhatsAppState(this.whatsAppContent):super(whatsAppContent);

  String whatsAppContent;
  @override
  List<Object> get props => [whatsAppContent];
}
