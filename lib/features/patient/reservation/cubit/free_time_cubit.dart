import 'package:bloc/bloc.dart';
import 'package:doctor_app/models/free_time_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'free_time_state.dart';
part 'free_time_cubit.freezed.dart';

class FreeTimeCubit extends Cubit<FreeTimeState> {
  FreeTimeCubit() : super(const FreeTimeState.initial(null));
  int? currentSelected;

  setSelected(FreeTimeModel model){
    /// TODO correct this part with Api connection later
    emit(FreeTimeState.initial(model));
  }



}
