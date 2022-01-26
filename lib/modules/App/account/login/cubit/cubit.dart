// import 'package:cllubb/modules/App/login/cubit/states.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
//
// class ShopLoginCubit extends Cubit<ShopLoginStates>
// {
//   ShopLoginCubit() : super(ShopLoginInitialState());
//
//   static ShopLoginCubit get(context) => BlocProvider.of(context);
//   //late ShopLoginModel loginModel;
//
//   void userLogin({
//   required String email,
//   required String password,
// }) {
//
//     emit(ShopLoginLoadingState());
//
//     DioHelper.postData(
//         url: LOGIN,
//         data: {
//           'email':email,
//           'password':password,
//         },
//     ).then((value) {
//       print(value.data);
//       //loginModel = ShopLoginModel.fromJson(value.data);
//       // emit(ShopLoginSuccessState(loginModel));
//       emit(ShopLoginSuccessState());
//     }).catchError((error){
//       emit(ShopLoginErrorState(error.toString()));
//     });
//   }
//
//
//  IconData suffix = Icons.visibility_outlined;
//   bool isPassword = true;
//   void changePasswordVisibility(){
//     isPassword = !isPassword;
//     suffix = isPassword ? Icons.visibility_outlined :Icons.visibility_off_outlined;
//     emit(ShopChangePasswordVisibilityState());
//
//   }
//
// }