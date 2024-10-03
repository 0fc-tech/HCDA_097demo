part of 'logged_in_cubit.dart';

@immutable
sealed class LoggedInState {}

final class LoggedInInitial extends LoggedInState {}
final class LoggedInSuccessful extends LoggedInState {}
final class LoggedInDenied extends LoggedInState {}
