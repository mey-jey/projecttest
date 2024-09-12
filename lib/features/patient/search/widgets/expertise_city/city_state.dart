import 'package:doctor_app/models/radio_model.dart';
import 'package:equatable/equatable.dart';

abstract class CityState extends Equatable {
  CityState(this.copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];

}



class GetCityListLoaded extends CityState {
  List<RadioModel> cityList;
  GetCityListLoaded(this.cityList) : super('');
}

class GeCityListError extends CityState {
  final String message;

  GeCityListError(this.message) : super('');
}


class InitialState extends CityState {
  InitialState(this.copyContent):super(copyContent);

  String copyContent;
  @override
  List<Object> get props => [copyContent];
}



