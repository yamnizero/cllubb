import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';

import 'widgets/splash_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kClub,
      body: SplashViewBody(),
    );
  }
}
 