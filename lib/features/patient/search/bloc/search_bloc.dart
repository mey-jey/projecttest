import 'package:bloc/bloc.dart';
import 'package:doctor_app/di/di.dart';
import 'package:doctor_app/models/SearchItem.dart';
import 'package:equatable/equatable.dart';

import '../data/search_data_source.dart';

part 'search_event.dart';

part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchDataSource _dataSource = locator.get();

  SearchBloc() : super(SearchInitial()) {
    on<SearchSearchEvent>((event, emit) async {
      var res = await _dataSource.searchDoctors(event.searchText);
      emit(SearchLoaded(res));
    });
  }
}
