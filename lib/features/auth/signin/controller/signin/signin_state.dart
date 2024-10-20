part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SigninLoading extends SigninState {}

final class SigninError extends SigninState {
  final String errorMessage;

  SigninError({required this.errorMessage});
}

final class SigninSuccess extends SigninState {}
