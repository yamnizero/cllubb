
import 'package:cllubb/modules/App/account/login/cubit/states.dart';
import 'package:cllubb/shared/end_points.dart';
import 'package:cllubb/shared/remote/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CllubLoginCubit extends Cubit<CllubLoginStates>
{
  CllubLoginCubit() : super(CllubLoginInitialState());

  static CllubLoginCubit get(context) => BlocProvider.of(context);
  //late CllubLoginModel loginModel;

  void userLogin({
  required String email,
  required String password,
}) {

    emit(CllubLoginLoadingState());

    DioHelper.postData(
        url: LOGIN,
        data: {
          'mLmail':email,
          'mLpassword':password,
        },
    ).then((value) {
      print(value.data);
      //loginModel = CllubLoginModel.fromJson(value.data);
      // emit(CllubLoginSuccessState(loginModel));
      emit(CllubLoginSuccessState());
    }).catchError((error){
      emit(CllubLoginErrorState(error.toString()));
    });
  }


 IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;
  void changePasswordVisibility(){
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined :Icons.visibility_off_outlined;
    emit(CllubChangePasswordVisibilityState());

  }

}