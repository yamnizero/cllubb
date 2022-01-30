import 'package:cllubb/layout/shop_layout/cubit/states.dart';
import 'package:cllubb/modules/App/feed/feed_view.dart';
import 'package:cllubb/modules/App/group/group_view.dart';
import 'package:cllubb/modules/App/home/home_view.dart';
import 'package:cllubb/modules/App/members/members_view.dart';
import 'package:cllubb/modules/App/setting/setting_view.dart';
import 'package:cllubb/shared/local/cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CllubbCubit extends Cubit<CllubbStates>
{
  CllubbCubit() : super(ShopInitialState());
  static CllubbCubit get(context) =>BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> bottomScreen = [
    const HomeView(),
    const FeedView(),
    const MembersView(),
    const GroupView(),
    const SettingView(),
  ];
  void changeBottom(int index)
  {
    currentIndex = index;
    emit(ShopChangeBottomNavState());
  }

bool isDark = false;
  // ThemeMode appMode =ThemeMode.dark;
void changeAppMode({@required bool? modeDark})
{
  if(modeDark != null)
  {
    isDark = modeDark;
    emit(ShopChangeModeState());
  }
  else
    {
      isDark = !isDark;
      CacheHelper.putBoolean(key: 'isDark', value: isDark).then((value)
      {
        emit(ShopChangeModeState());
      });
    }


}

}