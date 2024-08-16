import 'package:equatable/equatable.dart';

abstract class ProfileState extends Equatable {
  ProfileState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}

class InitialState extends ProfileState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}

class OpenEmailState extends ProfileState {
  OpenEmailState(this.emailContent):super(emailContent);

  String emailContent;
  @override
  List<Object> get props => [emailContent];
}

class OpenPhoneState extends ProfileState {
  OpenPhoneState(this.phoneNumberContent):super(phoneNumberContent);

  String phoneNumberContent;
  @override
  List<Object> get props => [phoneNumberContent];
}

class OpenWhatsAppState extends ProfileState {
  OpenWhatsAppState(this.whatsAppContent):super(whatsAppContent);

  String whatsAppContent;
  @override
  List<Object> get props => [whatsAppContent];
}
