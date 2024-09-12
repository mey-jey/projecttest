import 'package:doctor_app/features/patient/search/widgets/expertise_city'
    '/city_cubit.dart';
import 'package:doctor_app/features/patient/search/widgets/expertise_city/city_state'
    '.dart';
import 'package:doctor_app/models/radio_model.dart';
import 'package:doctor_app/widgets/radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class CityList extends StatefulWidget {
  final void Function(RadioModel) onChange;

  CityList({required this.onChange});

  @override
  State<CityList> createState() => _CityList(onChange: onChange);
}

class _CityList extends State<CityList> {
  final void Function(RadioModel) onChange;

  _CityList({required this.onChange});

  List<RadioModel> cityList = [];
  String _selectedValue = '0';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => CityCubit()..fetchCityList(),
        child: BlocBuilder<CityCubit, CityState>(builder: (context, state) {
          if (state is GetCityListLoaded) {
            cityList = state.cityList;
          }

          return Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
                itemCount: cityList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var city = cityList[index];
                  return CustomRadio(
                    title: city.title,
                    value: city.id,
                    onChange: (p0) {
                      onChange(cityList.firstWhere(
                        (element) => element.id == p0,
                      ));
                      setState(() {
                        _selectedValue = p0;
                      });
                    },
                    isSelected: city.id == _selectedValue,
                    subtitle: city.suntitle,
                  ).marginOnly(bottom: 20);
                }),
          );
        }));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
