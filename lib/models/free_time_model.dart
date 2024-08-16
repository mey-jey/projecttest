import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_time_model.freezed.dart';

part 'free_time_model.g.dart';

@freezed
class FreeTimeModel with _$FreeTimeModel {
  const factory FreeTimeModel({
    @JsonKey(name: 'doctor_id') int? doctorId,
    String? date,
    @JsonKey(name: 'start_time') String? startTime,
    @JsonKey(name: 'end_time') String? endTime,
    int? id,
  }) = _FreeTimeModel;

  factory FreeTimeModel.fromJson(Map<String, dynamic> json) => _$FreeTimeModelFromJson(json);
}
