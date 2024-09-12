import 'package:doctor_app/features/patient/search/pages/custom_serach_state.dart';
import 'package:doctor_app/models/doctor_model.dart';
import 'package:doctor_app/models/highly_specialties_model.dart';
import 'package:doctor_app/utils/assets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:doctor_app/di/di.dart';
import 'dart:convert';

class CustomSearchCubit extends Cubit<CustomSearchState> {
  CustomSearchCubit() : super(InitialState(""));

  static CustomSearchCubit get(context) => BlocProvider.of(context);

  void fetchHistorySearchList() async {
    try {
      final List<String> strings = [
        'کلیه و مجاری ادراری',
        'علوم تغذیه',
        'پوست و مو',
        'علی فدوی',
        'روان شناس و مشاور',
      ];

      emit(GetDetailSearchLoaded(strings));
      await Future.delayed(Duration(milliseconds: 500));
      _fetchHighlySpecialtiesList();
    } catch (e) {
      emit(GetDetailSearchError("Failed to fetch data"));
    }
  }

  void _fetchHighlySpecialtiesList() async {
    try {
      final List<HighlySpecialtiesModel> list = [
        HighlySpecialtiesModel(title: 'جنسی', icon: SvgAssets.icSexual),
        HighlySpecialtiesModel(
            title: 'توان‌بحشی', icon: SvgAssets.icEmpowerMan),
        HighlySpecialtiesModel(title: 'افسردگی', icon: SvgAssets.icDepress),
        HighlySpecialtiesModel(title: 'شغلی و تحصیلی', icon: SvgAssets.icJob),
        HighlySpecialtiesModel(title: 'ازدواج', icon: SvgAssets.icMarrid),
      ];

      emit(GetHighlySpecialtiesListLoaded(list));
    } catch (e) {
      emit(GetHighlySpecialtiesListError("Failed to fetch data"));
    }
  }

  void fetchDoctorList(String str) async {
    try {
      final List<DoctorModel> list = [
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۳',
            price: '600000',
            name: 'فاطمه ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان شناس',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۳',
            price: '600000',
            name: 'علی ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'پزشک عمومی',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۴',
            price: '600000',
            name: 'فاطمه مهدوی',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'مهدی ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'مهدی راد',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'کاوه مدیری',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'اصفهان،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'لیلا زارع',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'مهدی ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'مهدی ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'مهدی ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
        DoctorModel(
            address: 'مشهد،وکیل آباد ۱۷،معاد۸،ساختمان۱۵',
            price: '600000',
            name: 'مهدی ظفرپور',
            image: 'assets/images/avatar_image.png',
            counselingNumber: '298',
            expertise: 'روان درمانگر',
            rate: '4.8',
            voteNumber: '391'),
      ];
    //   final http.Client _client = locator.get();
    //   final response = await _client.get(Uri.parse(
    //       'https://karshenasi-app.darkube.app/api/auth/doctors?skip=0&limit=10'));
    //  final List<DoctorModel> list = (jsonDecode(response.body) as List<dynamic>)
    //       .map((json) => DoctorModel.fromJson(json))
    //       .toList();

      List<DoctorModel> listFilter = [];

      for (var item in list) {
        if (item.name!.contains(str)) {
          listFilter.add(item);
        } else if (item.address!.contains(str)) {
          listFilter.add(item);
        } else if (item.expertise!.contains(str)) {
          listFilter.add(item);
        }
      }

      emit(GetDoctorListLoaded(listFilter));
    } catch (e) {
      emit(GetDoctorListError("Failed to fetch data"));
    }
  }
}
