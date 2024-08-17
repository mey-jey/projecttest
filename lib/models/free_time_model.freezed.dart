// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreeTimeModel _$FreeTimeModelFromJson(Map<String, dynamic> json) {
  return _FreeTimeModel.fromJson(json);
}

/// @nodoc
mixin _$FreeTimeModel {
  @JsonKey(name: 'doctor_id')
  int? get doctorId => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_time')
  String? get startTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_time')
  String? get endTime => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreeTimeModelCopyWith<FreeTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeTimeModelCopyWith<$Res> {
  factory $FreeTimeModelCopyWith(
          FreeTimeModel value, $Res Function(FreeTimeModel) then) =
      _$FreeTimeModelCopyWithImpl<$Res, FreeTimeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'doctor_id') int? doctorId,
      String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      int? id});
}

/// @nodoc
class _$FreeTimeModelCopyWithImpl<$Res, $Val extends FreeTimeModel>
    implements $FreeTimeModelCopyWith<$Res> {
  _$FreeTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FreeTimeModelImplCopyWith<$Res>
    implements $FreeTimeModelCopyWith<$Res> {
  factory _$$FreeTimeModelImplCopyWith(
          _$FreeTimeModelImpl value, $Res Function(_$FreeTimeModelImpl) then) =
      __$$FreeTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'doctor_id') int? doctorId,
      String? date,
      @JsonKey(name: 'start_time') String? startTime,
      @JsonKey(name: 'end_time') String? endTime,
      int? id});
}

/// @nodoc
class __$$FreeTimeModelImplCopyWithImpl<$Res>
    extends _$FreeTimeModelCopyWithImpl<$Res, _$FreeTimeModelImpl>
    implements _$$FreeTimeModelImplCopyWith<$Res> {
  __$$FreeTimeModelImplCopyWithImpl(
      _$FreeTimeModelImpl _value, $Res Function(_$FreeTimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doctorId = freezed,
    Object? date = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? id = freezed,
  }) {
    return _then(_$FreeTimeModelImpl(
      doctorId: freezed == doctorId
          ? _value.doctorId
          : doctorId // ignore: cast_nullable_to_non_nullable
              as int?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as String?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeTimeModelImpl implements _FreeTimeModel {
  const _$FreeTimeModelImpl(
      {@JsonKey(name: 'doctor_id') this.doctorId,
      this.date,
      @JsonKey(name: 'start_time') this.startTime,
      @JsonKey(name: 'end_time') this.endTime,
      this.id});

  factory _$FreeTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeTimeModelImplFromJson(json);

  @override
  @JsonKey(name: 'doctor_id')
  final int? doctorId;
  @override
  final String? date;
  @override
  @JsonKey(name: 'start_time')
  final String? startTime;
  @override
  @JsonKey(name: 'end_time')
  final String? endTime;
  @override
  final int? id;

  @override
  String toString() {
    return 'FreeTimeModel(doctorId: $doctorId, date: $date, startTime: $startTime, endTime: $endTime, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeTimeModelImpl &&
            (identical(other.doctorId, doctorId) ||
                other.doctorId == doctorId) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, doctorId, date, startTime, endTime, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeTimeModelImplCopyWith<_$FreeTimeModelImpl> get copyWith =>
      __$$FreeTimeModelImplCopyWithImpl<_$FreeTimeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeTimeModelImplToJson(
      this,
    );
  }
}

abstract class _FreeTimeModel implements FreeTimeModel {
  const factory _FreeTimeModel(
      {@JsonKey(name: 'doctor_id') final int? doctorId,
      final String? date,
      @JsonKey(name: 'start_time') final String? startTime,
      @JsonKey(name: 'end_time') final String? endTime,
      final int? id}) = _$FreeTimeModelImpl;

  factory _FreeTimeModel.fromJson(Map<String, dynamic> json) =
      _$FreeTimeModelImpl.fromJson;

  @override
  @JsonKey(name: 'doctor_id')
  int? get doctorId;
  @override
  String? get date;
  @override
  @JsonKey(name: 'start_time')
  String? get startTime;
  @override
  @JsonKey(name: 'end_time')
  String? get endTime;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$FreeTimeModelImplCopyWith<_$FreeTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
