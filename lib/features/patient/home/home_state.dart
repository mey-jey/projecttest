import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable {
  HomeState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}

class InitialState extends HomeState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}

class OpenEmailState extends HomeState {
  OpenEmailState(this.emailContent):super(emailContent);

  String emailContent;
  @override
  List<Object> get props => [emailContent];
}

class OpenPhoneState extends HomeState {
  OpenPhoneState(this.phoneNumberContent):super(phoneNumberContent);

  String phoneNumberContent;
  @override
  List<Object> get props => [phoneNumberContent];
}

class OpenWhatsAppState extends HomeState {
  OpenWhatsAppState(this.whatsAppContent):super(whatsAppContent);

  String whatsAppContent;
  @override
  List<Object> get props => [whatsAppContent];
}
