import 'package:doctor_app/features/patient/search/widgets/expertise_city/city_state'
    '.dart';
import 'package:doctor_app/models/radio_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CityCubit extends Cubit<CityState> {
  CityCubit() : super(InitialState(""));

  static CityCubit get(context) => BlocProvider.of(context);

  void fetchCityList() async {
    try {
      final List<RadioModel> listCity = [
        RadioModel(title: 'تهران', id: '1', suntitle: '۳۲ متخصص'),
        RadioModel(title: 'مشهد', id: '2', suntitle: '۲۰ متخصص'),
        RadioModel(title: 'اصفهان', id: '3', suntitle: '۱۳ متخصص'),
        RadioModel(title: 'کاشمر', id: '4', suntitle: '۲ متخصص'),
        // CityModel(name: 'یزد', id: '5', numExpertise: '۴۲ متخصص'),
        // CityModel(name: 'قزوین', id: '6', numExpertise: '۵۳ متخصص'),
        // CityModel(name: 'کرمان', id: '7', numExpertise: '۱۱ متخصص'),
      ];

      await Future.delayed(Duration(milliseconds: 200));
      emit(GetCityListLoaded(listCity));
    } catch (e) {
      emit(GeCityListError("Failed to fetch data"));
    }
  }
}
