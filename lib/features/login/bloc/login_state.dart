sealed class LoginState {}

class LoginInitialState extends LoginState {}

class LoginSendingPhoneNumberState extends LoginState {}

class LoginEnterCodeState extends LoginState {}

class LoginCodeCheckingState extends LoginState {}
