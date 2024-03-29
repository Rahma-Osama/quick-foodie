import 'package:bloc/bloc.dart';
import 'package:quick_foodie/features/auth/data/repos/auth_repo.dart';
import 'package:quick_foodie/features/auth/presentation/manager/auth%20cubit/auth_states.dart';

class AuthCubit extends Cubit<AuthSates> {
  final AuthRepo authRepo;

  AuthCubit(this.authRepo) : super(AuthInitialState());

  late String email;
  late String password;
  late String name;

  signupWithEmailAndPassword()async{
    emit(SignUpLoadingState());
    var response= await authRepo.signupWithEmailAndPassword(email: email, password: password, name: name);
    emit(SignUpSuccessState());
  }

  loginWithEmailAndPassword()async{
    emit(LogInLoadingState());
    var response= await authRepo.loginWithEmailAndPassword(email: email, password: password);
    emit(LogInSuccessState());
  }


}