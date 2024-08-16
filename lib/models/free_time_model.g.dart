// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'free_time_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreeTimeModelImpl _$$FreeTimeModelImplFromJson(Map<String, dynamic> json) =>
    _$FreeTimeModelImpl(
      doctorId: (json['doctor_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FreeTimeModelImplToJson(_$FreeTimeModelImpl instance) =>
    <String, dynamic>{
      'doctor_id': instance.doctorId,
      'date': instance.date,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'id': instance.id,
    };
