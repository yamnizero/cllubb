import 'package:cllubb/modules/App/account/signUp/sign_view.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/components/at_world_comm/componets.dart';
import 'package:cllubb/shared/components/space_widget.dart';
import 'package:flutter/material.dart';


class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController email = TextEditingController();

  TextEditingController password = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
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
                  const VerticalSpace(5),
                  defaultFormField(
                      controller: email,
                      label: 'Email',
                      prefix: Icons.email,
                      type: TextInputType.emailAddress,
                      validate: (String value)
                      {
                        if(value.isEmpty)
                        {
                          return 'email must not be empt';
                        }
                      }
                  ),
                  const VerticalSpace(2),
                  defaultFormField(
                      controller: password,
                      label: 'Password',
                      prefix: Icons.lock,
                      suffix: isPassword ? Icons.visibility : Icons.visibility_off,
                      isPassword: isPassword,
                      suffixPressed: ()
                      {
                        setState(() {
                          isPassword =!isPassword;
                        });
                      },
                      type: TextInputType.visiblePassword,
                      validate: (String value)
                      {
                        if(value.isEmpty)
                        {
                          return 'password is too short ';
                        }
                        return null;
                      }
                  ),
                  const VerticalSpace(2),
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
                  const VerticalSpace(1.5),
                  defaultButton(
                    text: 'login',
                    background: kClub,
                    function: ()
                    {
                      if(formKey.currentState!.validate())
                      {
                        print(email.text);
                        print(password.text);
                      }

                    },
                    width: double.infinity,
                  ),
                  const VerticalSpace(1),
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
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpView(),
                            ),
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
  }
}
