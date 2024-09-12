part of 'search_list_bloc.dart';

sealed class SearchListEvent extends Equatable {
  const SearchListEvent();
}


final class SearchListSearchEvent extends SearchListEvent {
  const SearchListSearchEvent(this.searchText);

  final String searchText;

  @override
  List<Object> get props => [searchText];
}