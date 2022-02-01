
import 'package:cllubb/layout/shop_layout/home_layout.dart';
import 'package:cllubb/modules/App/account/signUp/sign_view.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/colors/compon.dart';
import 'package:cllubb/shared/components/compones.dart';
import 'package:cllubb/shared/local/cache_helper.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    final formKey = GlobalKey<FormState>();

    bool isPassword = true;
    return BlocProvider(
      create: (BuildContext context) =>ClubLoginCubit(),

      child: BlocConsumer<ClubLoginCubit,ClubLoginStates>(
        listener:(context,state) {
          if(state is ClubLoginSuccessState)
          {
            // print(state.loginModel.message);
            //print(state.loginModel.data!.token);
            CacheHelper.saveData(
              key: 'token',
              value: state.loginModel.token!,
            ).then((value)
            {
              token = state.loginModel.token!;
              navigateAndFinish(context, const HomeLayout());
            });
          }else
          {

            showToast(
              text: "Error",
              states: ToastStates.ERROR,
            );
          }
        },
        builder: (context,state) {
          return Scaffold(
            backgroundColor: Colors.black,
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: kDefaultPadding,
                  child: Form(
                    key: formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/clluup.png",
                          height: 90,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),

                        defaultFormField(
                            controller: email,
                            label: 'Email',
                            prefix: Icons.email,
                            type: TextInputType.emailAddress,

                            validation: (value)
                            {
                              if(value!.isEmpty)
                                {
                                  return 'email must not be empt';
                                }

                            }
                        ),
                         SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        defaultFormField(
                            controller: password,
                            label: 'Password',
                            prefix: Icons.lock,
                            suffix: ClubLoginCubit.get(context).suffix ,
                            isPassword: ClubLoginCubit.get(context).isPassword,
                            onSubmit :(value)
                            {
                              if(formKey.currentState!.validate())
                              {
                                ClubLoginCubit.get(context).userLogin(
                                    email: email.text,
                                    password: password.text
                                );
                                print(email.text);
                                print(password.text);
                              }
                            },
                            suffixPressed: ()
                            {
                              ClubLoginCubit.get(context).changePasswordVisibility();
                            },

                            type: TextInputType.visiblePassword,
                            validation: ( value)
                            {
                              if(value!.isEmpty)
                              {
                                return 'password is too short ';
                              }
                            }
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                        GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) => ResetPassword(),
                            //   ),
                            // );
                          },
                          child: const Text(
                            "Forgot password?",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              decoration: TextDecoration.underline,
                              decorationThickness: 1,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        ConditionalBuilder(
                          condition: state is! ClubLoginLoadingState,
                          builder: (context) => defaultButton(
                            text: 'login',
                            background: kClub,
                            function: ()
                            {

                              if(formKey.currentState!.validate())
                              {
                                ClubLoginCubit.get(context).userLogin(
                                    email: email.text,
                                    password: password.text
                                );
                                print(email.text);
                                print(password.text);
                              }

                            },
                            width: double.infinity,
                          ),
                          fallback: (context) => const Center(child: CircularProgressIndicator(),),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .02,
                        ),
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "Don\'t have account?",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Spacer(),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> const SignUpView(),
                                    duration: const Duration(milliseconds: 500),
                                );
                              },
                              child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: kClub,
                                    decoration:TextDecoration.underline,
                                  )
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
