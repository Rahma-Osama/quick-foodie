
abstract class AuthSates{}

class AuthInitialState extends AuthSates{}

class LogInLoadingState extends AuthSates{}
class LogInSuccessState extends AuthSates{}
class LogInFailedState extends AuthSates{
  String ?message;
  LogInFailedState({
    required this.message
  });
}

class SignUpLoadingState extends AuthSates{}
class SignUpSuccessState extends AuthSates{}
class SignUpFailedState extends AuthSates{
  String ?message;
  SignUpFailedState({
    required this.message
  });
}


