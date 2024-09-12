import 'package:doctor_app/models/radio_model.dart';
import 'package:doctor_app/widgets/radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SexList extends StatefulWidget {
  final void Function(RadioModel) onChange;

  SexList({required this.onChange});

  @override
  State<SexList> createState() => _SexList(onChange: onChange);
}

class _SexList extends State<SexList> {
  final void Function(RadioModel) onChange;

  _SexList({required this.onChange});

  List<RadioModel> cityList = [
    RadioModel(title: 'همه', suntitle: '۶۷ متخصص', id: '1'),
    RadioModel(title: 'فقط متخصص های زن', suntitle: '۲۱ متخصص', id: '2'),
    RadioModel(title: 'فقط متخصص های مرد', suntitle: '۴۶ متخصص', id: '3')
  ];
  String _selectedValue = '0';

  @override
  Widget build(BuildContext context) {
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
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
