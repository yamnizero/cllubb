
import 'package:cllubb/model/login/login_model.dart';
import 'package:cllubb/modules/App/account/login/cubit/states.dart';
import 'package:cllubb/shared/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ClubLoginCubit extends Cubit<ClubLoginStates>
{
  ClubLoginCubit() : super(ClubLoginInitialState());

  static ClubLoginCubit get(context) => BlocProvider.of(context);
  late ClubLoginModel loginModel;

  void userLogin({
  required String email,
  required String password,
}) {

    emit(ClubLoginLoadingState());

    DioHelper.postData(
        url: 'logIn.php',
        data: {
          'mLmail':email,
          'mLpassword':password,
        },
    ).then((value) {
      print(value.data);
      loginModel = ClubLoginModel.fromJson(value.data);
      emit(ClubLoginSuccessState(loginModel));
      // emit(ClubLoginSuccessState());
    }).catchError((error){
      emit(ClubLoginErrorState(error.toString()));
    });
  }


 IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined :Icons.visibility_off_outlined;
    emit(ClubChangePasswordVisibilityState());

  }

}