import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  // todo(3): create method called signInWithGoogle
  Future<void> signInWithGoogle() async {
    // final GoogleSignInAccount? account = await _googleSignIn.signIn();
  }
  // todo(4): create method called signInWithFacebook
  // todo(5): create method called onSuccess
  // in case of success go to preparing page
  // todo(6): create method called onFails
}
