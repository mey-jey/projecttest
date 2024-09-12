import 'package:bloc/bloc.dart';
import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/models/SearchItem.dart';
import 'package:equatable/equatable.dart';

import '../data/search_list_data_source.dart';

part 'search_list_event.dart';

part 'search_list_state.dart';

class SearchListBloc extends Bloc<SearchListEvent, SearchListState> {
  final SearchListDataSource _dataSource = locator.get();

  SearchListBloc() : super(SearchListInitial()) {
    on<SearchListSearchEvent>((event, emit) async {
      var res = await _dataSource.searchDoctors(event.searchText);
      emit(SearchListLoaded(res));
    });
  }
}
