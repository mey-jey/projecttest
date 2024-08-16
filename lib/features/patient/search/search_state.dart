import 'package:equatable/equatable.dart';

abstract class SearchState extends Equatable {
  SearchState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}

class InitialState extends SearchState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}

class OpenEmailState extends SearchState {
  OpenEmailState(this.emailContent):super(emailContent);

  String emailContent;
  @override
  List<Object> get props => [emailContent];
}

class OpenPhoneState extends SearchState {
  OpenPhoneState(this.phoneNumberContent):super(phoneNumberContent);

  String phoneNumberContent;
  @override
  List<Object> get props => [phoneNumberContent];
}

class OpenWhatsAppState extends SearchState {
  OpenWhatsAppState(this.whatsAppContent):super(whatsAppContent);

  String whatsAppContent;
  @override
  List<Object> get props => [whatsAppContent];
}
