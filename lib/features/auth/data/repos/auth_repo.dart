abstract class AuthRepo{

  signupWithEmailAndPassword({required String email , required String password,required String name});
  loginWithEmailAndPassword({required String email , required String password});
}