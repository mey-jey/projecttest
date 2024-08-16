import 'package:equatable/equatable.dart';

abstract class ElectronicFileState extends Equatable {
  ElectronicFileState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}

class InitialState extends ElectronicFileState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}

class OpenEmailState extends ElectronicFileState {
  OpenEmailState(this.emailContent):super(emailContent);

  String emailContent;
  @override
  List<Object> get props => [emailContent];
}

class OpenPhoneState extends ElectronicFileState {
  OpenPhoneState(this.phoneNumberContent):super(phoneNumberContent);

  String phoneNumberContent;
  @override
  List<Object> get props => [phoneNumberContent];
}

class OpenWhatsAppState extends ElectronicFileState {
  OpenWhatsAppState(this.whatsAppContent):super(whatsAppContent);

  String whatsAppContent;
  @override
  List<Object> get props => [whatsAppContent];
}
