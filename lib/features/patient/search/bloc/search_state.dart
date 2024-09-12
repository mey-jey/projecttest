part of 'search_bloc.dart';

sealed class SearchState extends Equatable {
  const SearchState();
}

final class SearchInitial extends SearchState {
  final List<dynamic> patients = [];

  @override
  List<Object> get props => [];
}

final class SearchLoading extends SearchState {
  @override
  List<Object> get props => [];
}

final class SearchLoaded extends SearchState {
  const SearchLoaded(this.doctors);

  final List<Doctor> doctors;

  @override
  List<Object> get props => [doctors];
}
