import 'dart:developer';

import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../../../core/core_export.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  static LoginCubit get(context) => BlocProvider.of(context);
  // todo(3): create method called signInWithGoogle
  Future<GoogleSignInAccount?> signInWithGoogle() async {
    final googleSignIn = GoogleSignIn();  
    return await googleSignIn.signIn();
  }

  // todo(4): create method called signInWithFacebook
  Future<void> signInWithFacebook() async {
// Create an instance of FacebookLogin
    final fb = FacebookLogin();

// Log in
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);

// Check result status
    switch (res.status) {
      case FacebookLoginStatus.success:
        // Logged in

        // Send access token to server for validation and auth
        final FacebookAccessToken? accessToken = res.accessToken;
        log('Access token: ${accessToken!.token}');

        // Get profile data
        final profile = await fb.getUserProfile();
        log('Hello, ${profile!.name}! You ID: ${profile!.userId}');

        // Get user profile image url
        final imageUrl = await fb.getProfileImageUrl(width: 100);
        log('Your profile image: $imageUrl');

        // Get email (since we request email permission)
        final email = await fb.getUserEmail();
        // But user can decline permission
        if (email != null) log('And your email is $email');

        break;
      case FacebookLoginStatus.cancel:
        // User cancel log in
        break;
      case FacebookLoginStatus.error:
        // Log in failed
        log('Error while log in: ${res.error}');
        break;
    }
  }
  // todo(5): create method called onSuccess
  // in case of success go to preparing page
  // todo(6): create method called onFails
}
