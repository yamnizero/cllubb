

import 'package:cllubb/model/login/login_model.dart';

abstract class ClubLoginStates {}

class ClubLoginInitialState extends ClubLoginStates {}

class ClubLoginLoadingState extends ClubLoginStates {}

class ClubLoginSuccessState extends ClubLoginStates {
 final ClubLoginModel loginModel;

 ClubLoginSuccessState(this.loginModel);
}

class ClubLoginErrorState extends ClubLoginStates
{
  final String error;

  ClubLoginErrorState(this.error);
}

class ClubChangePasswordVisibilityState extends ClubLoginStates {}
