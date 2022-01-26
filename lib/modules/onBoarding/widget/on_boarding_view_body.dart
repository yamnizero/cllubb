// import 'package:cllubb/modules/App/account/login/login_view.dart';
// import 'package:cllubb/modules/onBoarding/widget/widget_dots_indicator.dart';
// import 'package:cllubb/modules/onBoarding/widget/widget_page_view.dart';
// import 'package:cllubb/shared/components/size_config.dart';
// import 'package:cllubb/shared/components/widget_buttons.dart';
// import 'package:flutter/material.dart';
//
// class OnBoardingViewBody extends StatefulWidget {
//   const OnBoardingViewBody({Key? key}) : super(key: key);
//
//   @override
//   State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
// }
//
// class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
//   PageController? pageController;
//   @override
//   void initState() {
//     pageController = PageController(
//       initialPage: 0,
//     )..addListener(()
//     {
//       setState(() {
//       });
//     });
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           WidgetPageView(
//             pageController: pageController!,
//           ),
//           Positioned(
//             left: 0,
//             right: 0,
//             bottom: SizeConfig.defaultSize! * 22,
//             child:  WidgetDotsIndicator(
//               dotsIndex: pageController!.hasClients ? pageController?.page : 0,
//             ),
//           ),
//           Visibility(
//             visible:pageController!.hasClients ? (pageController?.page == 2 ? false : true): true,
//             child: Positioned(
//               top: SizeConfig.defaultSize! * 10,
//               right: 32,
//               child: const  Text(
//                 'Skip',
//                 style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.bold,
//                   fontSize: 14,
//                   color: Colors.grey,
//                 ),
//                 textAlign: TextAlign.left,
//               ),
//             ),
//           ),
//           Positioned(
//             left: SizeConfig.defaultSize! * 10,
//             right: SizeConfig.defaultSize! * 10,
//             bottom: SizeConfig.defaultSize! * 10,
//             child:  WidgetGeneralButton(
//               onTap: ()
//               {
//                 if(pageController!.page! < 2) {
//                   pageController?.nextPage(
//                     duration: const Duration(milliseconds: 500),
//                     curve: Curves.easeIn,
//                   );
//                 }else{
//                   Get.to(()=> const LoginView(),
//                     transition: Transition.rightToLeft,
//                     duration: const Duration(milliseconds: 500),
//                   );
//                 }
//               },
//               text: pageController!.hasClients ? (pageController?.page == 2 ? 'Get started' : 'Next') : 'Next' ,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
