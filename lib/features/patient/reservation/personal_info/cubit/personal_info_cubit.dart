import 'package:bloc/bloc.dart';
import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/features/patient/reservation/personal_info/data/send_user_info_data_source.dart';
import 'package:doctor_app/models/patient.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'personal_info_state.dart';

class PersonalInfoCubit extends Cubit<PersonalInfoState> {
  SendUserInfoDataSource sendUserInfoDataSource = locator.get();

  PersonalInfoCubit() : super(PersonalInfoInitial());

  void onName(String name) {
    emit(PersonalInfoInitial(
        name: name,
        bod: (state as PersonalInfoInitial).bod,
        job: (state as PersonalInfoInitial).job,
        edu: (state as PersonalInfoInitial).edu,
        medical: (state as PersonalInfoInitial).medical));
  }

  void onBod(String bod) {
    emit(PersonalInfoInitial(
        name: (state as PersonalInfoInitial).name,
        bod: bod,
        job: (state as PersonalInfoInitial).job,
        edu: (state as PersonalInfoInitial).edu,
        medical: (state as PersonalInfoInitial).medical));
  }

  void onJob(String job) {
    emit(PersonalInfoInitial(
        name: (state as PersonalInfoInitial).name,
        bod: (state as PersonalInfoInitial).bod,
        job: job,
        edu: (state as PersonalInfoInitial).edu,
        medical: (state as PersonalInfoInitial).medical));
  }

  void onEdu(String edu) {
    emit(PersonalInfoInitial(
        name: (state as PersonalInfoInitial).name,
        bod: (state as PersonalInfoInitial).bod,
        job: (state as PersonalInfoInitial).job,
        edu: edu,
        medical: (state as PersonalInfoInitial).medical));
  }

  void onMedical(String value) {
    emit(PersonalInfoInitial(
        name: (state as PersonalInfoInitial).name,
        bod: (state as PersonalInfoInitial).bod,
        job: (state as PersonalInfoInitial).job,
        edu: (state as PersonalInfoInitial).edu,
        medical: value));
  }

  void sendData(Function onSendCompleted) async {
    var stateFinal = state as PersonalInfoInitial;
    var patient = await sendUserInfoDataSource.invoke(Patient(
        name: stateFinal.name,
        dob: stateFinal.bod,
        contactInfo: stateFinal.job + stateFinal.edu,
        medicalHistory: stateFinal.medical,
        id: 0));
    var sharedPref = await SharedPreferences.getInstance();
    await sharedPref.setInt("patient_id", patient.id);
    onSendCompleted();
  }
}
