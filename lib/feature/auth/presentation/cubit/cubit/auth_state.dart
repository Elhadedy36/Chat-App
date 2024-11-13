part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class SignInLoading extends AuthState {}
final class SignInSuccess extends AuthState {}
final class SignInError extends AuthState 
{
  final String error;
  SignInError(this.error);
}
final class SignUpLoading extends AuthState {}
final class SignUpSuccess extends AuthState {}
final class SignUpError extends AuthState 
{
  final String error;
  SignUpError(this.error);
}
