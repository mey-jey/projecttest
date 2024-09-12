part of 'search_list_bloc.dart';

sealed class SearchListState extends Equatable {
  const SearchListState();
}

final class SearchListInitial extends SearchListState {
  final List<dynamic> patients = [];

  @override
  List<Object> get props => [];
}

final class SearchListLoading extends SearchListState {
  @override
  List<Object> get props => [];
}

final class SearchListLoaded extends SearchListState {
  const SearchListLoaded(this.doctors);

  final List<Doctor> doctors;

  @override
  List<Object> get props => [doctors];
}
