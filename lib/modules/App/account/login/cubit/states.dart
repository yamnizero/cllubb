

abstract class CllubLoginStates {}

class CllubLoginInitialState extends CllubLoginStates {}

class CllubLoginLoadingState extends CllubLoginStates {}

class CllubLoginSuccessState extends CllubLoginStates {
 // final CllubLoginModel loginModel;

//  CllubLoginSuccessState(this.loginModel);
}

class CllubLoginErrorState extends CllubLoginStates
{
  final String error;

  CllubLoginErrorState(this.error);
}

class CllubChangePasswordVisibilityState extends CllubLoginStates {}
