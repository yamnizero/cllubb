import 'package:cllubb/modules/onBoarding/on_boarding_view.dart';
import 'package:cllubb/shared/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double >? fadingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    fadingAnimation =
        Tween<double>(begin: .2,end: 1).animate(animationController!);
    animationController?.repeat(reverse: true);

    goToNextView();
  }
  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        const Spacer(),
        FadeTransition(
          opacity: fadingAnimation!,
          child: const Text(
            'At world',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 51,
                color: Color(0xffffffff)),
          ),
        ),
        Image.asset('assets/images/clluup.png'),
      ],
    );
  }

   void goToNextView()
   {
     Future.delayed(const Duration(seconds: 3),()
     {
       Get.to(()=> const OnBoardScreen(),transition: Transition.fade);
     });
   }
}
