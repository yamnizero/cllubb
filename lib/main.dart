import 'package:cllubb/shared/observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'modules/splash/UI/splash_view.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Widget widget;
  // //bool isDark = CacheHelper.getData(key: 'isDark');
  // bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  // String? token = CacheHelper.getData(key: 'token');
  // print(token);

  // if(onBoarding != null)
  // {
  //   if( token != null) {
  //     widget =  const  HomeLayout();
  //   } else {
  //     widget =  const LoginView();
  //   }
  // } else
  // {
  //   widget = const OnBoardingView();
  // }

  BlocOverrides.runZoned(
        () {
      runApp(

          MyApp(
      )
      );
    },
    blocObserver: MyBlocObserver(),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData(fontFamily: 'assets/fonts/Poppins-Regular.ttf'),
      debugShowCheckedModeBanner: false,
      home: const SplashView()
    );
  }
}


//
// class MyApp extends StatelessWidget {
//   //final bool isDark;
//   final Widget startWidget;
//   MyApp({Key? key,required this.startWidget}) : super(key: key);
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//
//     return BlocProvider(
//       create: (BuildContext context) => ShopCubit()
//         ..getHomeData()
//         ..getCategories()
//         ..getFavorites()..getUserDataSetting(),
//
//       child: BlocConsumer<ShopCubit,ShopStates> (
//         listener: (context,state){},
//         builder: (context,state){
//           return  MaterialApp(
//             debugShowCheckedModeBanner: false,
//             theme:lightTheme,
//             //darkTheme: darkTheme,
//             home: startWidget,
//           );
//
//         },
//       ),
//     );
//   }
// }