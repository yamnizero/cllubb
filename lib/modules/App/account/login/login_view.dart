import 'package:cllubb/modules/App/account/login/cubit/states.dart';
import 'package:cllubb/modules/App/account/signUp/sign_view.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/colors/compon.dart';
import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'cubit/cubit.dart';


class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    final formKey = GlobalKey<FormState>();

    bool isPassword = true;
    return BlocProvider(
      create: (BuildContext context) =>CllubLoginCubit(),

      child: BlocConsumer<CllubLoginCubit,CllubLoginStates>(
        listener:(context,state) {},
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
                            suffix: CllubLoginCubit.get(context).suffix ,
                            isPassword: CllubLoginCubit.get(context).isPassword,
                            onSubmit :(value)
                            {
                              if(formKey.currentState!.validate())
                              {
                                CllubLoginCubit.get(context).userLogin(
                                    email: email.text,
                                    password: password.text
                                );
                                print(email.text);
                                print(password.text);
                              }
                            },
                            suffixPressed: ()
                            {
                              CllubLoginCubit.get(context).changePasswordVisibility();
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
                          condition: state is! CllubLoginLoadingState,
                          builder: (context) => defaultButton(
                            text: 'login',
                            background: kClub,
                            function: ()
                            {

                              if(formKey.currentState!.validate())
                              {
                                CllubLoginCubit.get(context).userLogin(
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
