
import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/components/at_world_comm/componets.dart';
import 'package:cllubb/shared/components/space_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  _SignUpViewState createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstN = TextEditingController();
  TextEditingController lostN = TextEditingController();
  TextEditingController nickname = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
        backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             const Padding(padding: kDefaultPadding,
              child: Text(
                'Create Account',
                style: TextStyle(color: Colors.white,fontSize: 18),
              ),
              ),
              const VerticalSpace(5),
              Padding(
                padding: kDefaultPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const VerticalSpace(2),
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
                          return null;
                        }
                    ),
                    const VerticalSpace(3),
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
                    const VerticalSpace(3),
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
                    const VerticalSpace(3),
                    defaultFormField(
                        controller: firstN,
                        label: 'First Name',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'First Name must not be empt';
                          }
                          return null;
                        }
                    ),
                    const VerticalSpace(3),
                    defaultFormField(
                        controller: lostN,
                        label: 'Last Name',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'Last Name must not be empt';
                          }
                          return null;
                        }
                    ),
                    const VerticalSpace(3),
                    defaultFormField(
                        controller: nickname,
                        label: 'Enter nickname',
                        prefix: Icons.email,
                        type: TextInputType.emailAddress,
                        validate: (String value)
                        {
                          if(value.isEmpty)
                          {
                            return 'Enter nickname must not be empt';
                          }
                          return null;
                        }
                    ),
                  ],
                ),
              ),
              const VerticalSpace(3),
              Padding(
                padding: kDefaultPadding,
                child:  defaultButton(
                  text: 'create account',
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
              ),
              const VerticalSpace(1.5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: (){}, child: const Text("Terms of Service")),
                  const HorizontalSpace(1),
                  const  Text('And',style: TextStyle(color: Colors.white,fontSize: 16),),
                  const HorizontalSpace(1),
                  TextButton(onPressed: (){}, child: const Text("Privacy Policy")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
