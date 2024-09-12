import 'package:doctor_app/models/radio_model.dart';
import 'package:doctor_app/models/doctor_model.dart';
import 'package:doctor_app/models/highly_specialties_model.dart';
import 'package:equatable/equatable.dart';

abstract class CustomSearchState extends Equatable {
  CustomSearchState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}




class GetDetailSearchLoaded extends CustomSearchState {
  final List<String> historySearch;
  GetDetailSearchLoaded(this.historySearch) : super('');
}

class GetDetailSearchError extends CustomSearchState {
  final String message;

  GetDetailSearchError(this.message) : super('');
}




class GetHighlySpecialtiesListLoaded extends CustomSearchState {
  final List<HighlySpecialtiesModel> highlySpecialtiesList;
  GetHighlySpecialtiesListLoaded(this.highlySpecialtiesList) : super('');
}

class GetHighlySpecialtiesListError extends CustomSearchState {
  final String message;

  GetHighlySpecialtiesListError(this.message) : super('');
}


class GetDoctorListLoaded extends CustomSearchState {
   List<DoctorModel> doctorList;
  GetDoctorListLoaded(this.doctorList) : super('');
}

class GetDoctorListError extends CustomSearchState {
  final String message;

  GetDoctorListError(this.message) : super('');
}





class InitialState extends CustomSearchState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}



