import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'cubit/cubit.dart';
import 'cubit/states.dart';


class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CllubbCubit, CllubbStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = CllubbCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            title: const Text('Clluub'),
          ),
          body: cubit.bottomScreen[cubit.currentIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    MaterialIcons.home,
                  ), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                      Ionicons.ios_logo_electron
                  ), label: 'News Feed'),
              BottomNavigationBarItem(
                  icon: FaIcon(
                      FontAwesomeIcons.userFriends
                  ), label: 'Members'),
              BottomNavigationBarItem(
                  icon: FaIcon(
                      FontAwesomeIcons.users
                  ), label: 'Groups'),
              BottomNavigationBarItem(
                  icon: FaIcon(
                      FontAwesomeIcons.bars
                  ), label: 'more'),
            ],
          ),
        );
      },
    );
  }
}
