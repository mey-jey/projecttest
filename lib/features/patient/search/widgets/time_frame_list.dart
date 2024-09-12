import 'package:doctor_app/models/radio_model.dart';
import 'package:doctor_app/widgets/checkbox_widget.dart';
import 'package:doctor_app/widgets/radio_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TimeFrameList extends StatefulWidget {
  final void Function(List<RadioModel>) onChange;

  TimeFrameList({required this.onChange});

  @override
  State<TimeFrameList> createState() => _TimeFrameList(onChange: onChange);
}

class _TimeFrameList extends State<TimeFrameList> {
  final void Function(List<RadioModel>) onChange;

  _TimeFrameList({required this.onChange});

  List<RadioModel> timeFrameList = [
    RadioModel(title: 'صبح زود', suntitle: '۶ الی ۱۰', id: '1'),
    RadioModel(title: 'صبح', suntitle: '۱۰ الی ۱۲', id: '2'),
    RadioModel(title: 'بعدازظهر', suntitle: '۱۲ الی ۱۷', id: '3'),
    RadioModel(title: 'شب', suntitle: '۱۷ الی ۲۲', id: '4'),
  ];
  List<RadioModel> timeFrameListSelect = [];


  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
          itemCount: timeFrameList.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            var timeFrame = timeFrameList[index];
            return CustomCheckBox(
              onChange: (p0) {
                setState(() {

                  if(p0){
                    timeFrameListSelect.add(timeFrame);
                  }else{
                    timeFrameListSelect.remove(timeFrame);
                  }
                },);
                onChange(timeFrameListSelect);



              },
              title: timeFrame.title,
              subtitle: timeFrame.suntitle,
              isCheck: timeFrameListSelect.any((element) => element.id == timeFrame.id,),
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
