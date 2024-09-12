part of 'search_bloc.dart';

sealed class SearchEvent extends Equatable {
  const SearchEvent();
}


final class SearchSearchEvent extends SearchEvent {
  const SearchSearchEvent(this.searchText);

  final String searchText;

  @override
  List<Object> get props => [searchText];
}