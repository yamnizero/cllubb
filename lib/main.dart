import 'package:cllubb/layout/shop_layout/cubit/states.dart';
import 'package:cllubb/shared/local/cache_helper.dart';
import 'package:cllubb/shared/observer.dart';
import 'package:cllubb/shared/remote/dio_helper.dart';
import 'package:cllubb/shared/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'layout/shop_layout/cubit/cubit.dart';
import 'layout/shop_layout/home_layout.dart';
import 'modules/App/account/login/login_view.dart';
import 'modules/onBoarding/on_boarding_view.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  DioHelper.init();
  await CacheHelper.init();

  Widget widget;
  bool isDark = CacheHelper.getData(key: 'isDark');
  bool? onBoarding = CacheHelper.getData(key: 'onBoarding');
  String? token = CacheHelper.getData(key: 'token');
  print("here=>>>>>>>>>$token");

  if(onBoarding != null)
  {
    if( token != null) {
      widget =  const  HomeLayout();
    } else {
      widget =  const LoginView();
    }
  } else
  {
    widget = const OnBoardScreen();
  }

  BlocOverrides.runZoned(
        () {
      runApp(

          MyApp(
            startWidget: widget,
            isDark: isDark,
      )
      );
    },
    blocObserver: MyBlocObserver(),
  );
}



class MyApp extends StatelessWidget {
  final bool? isDark;
  final Widget startWidget;
  MyApp({Key? key,required this.startWidget, this.isDark}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (BuildContext context) => CllubbCubit()
        ..changeAppMode(
          modeDark: isDark!,
        ),

      child: BlocConsumer<CllubbCubit,CllubbStates> (
        listener: (context,state){},
        builder: (context,state){
          return  GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme:lightTheme,
            darkTheme: darkTheme,
            themeMode: CllubbCubit.get(context).isDark ? ThemeMode.dark : ThemeMode.light,
            home: const HomeLayout(),
          );

        },
      ),
    );
  }
 }