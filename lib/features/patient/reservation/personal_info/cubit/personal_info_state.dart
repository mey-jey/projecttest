part of 'personal_info_cubit.dart';

@immutable
sealed class PersonalInfoState {}

final class PersonalInfoInitial extends PersonalInfoState {
  String name;
  String bod;
  String job;
  String edu;
  String medical;

  PersonalInfoInitial(
      {this.name = "",
      this.bod = "",
      this.job = "",
      this.edu = "",
      this.medical = ""});
}
