
import 'package:cllubb/modules/App/feed/feed_view.dart';
import 'package:cllubb/modules/App/group/group_view.dart';
import 'package:cllubb/modules/App/home/home_view.dart';
import 'package:cllubb/modules/App/members/members_view.dart';
import 'package:cllubb/modules/App/setting/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeLayout extends StatefulWidget {

  const HomeLayout({Key? key}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {

  int currentIndex = 0;

  List<Widget> screen =
  [
    const HomeView(),
    const FeedView(),
    const MembersView(),
    const GroupView(),
    const SettingView(),
  ];

  List<String> titles =
  [
    'Home',
    'News Feed',
    'Members',
    'Groups',
    'More',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      // CustomScrollView(
      //   slivers: [
      //      SliverAppBar(
      //
      //       backgroundColor: Colors.white,
      //       expandedHeight: 100,
      //       floating: true,
      //       pinned: true,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: Text(titles[currentIndex],style: TextStyle(color: black),),
      //       ),
      //     ),
      //     SliverFillRemaining(
      //         child: screen[currentIndex]
      //     )
      //   ],
      //
      //
      // ),
      bottomNavigationBar: BottomNavigationBar(

        selectedItemColor: Colors.deepOrange,
      iconSize: 20.0,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      onTap: (index)
      {
        setState(() {
          currentIndex = index;

        });
      },
      items:
      [
        BottomNavigationBarItem(
            icon: Icon(
              MaterialIcons.home,
            ),
            label: 'Home'
        ),
        BottomNavigationBarItem(
            icon: Icon(
                Ionicons.ios_logo_electron

            ),
            label: 'News Feed'
        ),
        BottomNavigationBarItem(
            icon: FaIcon(
                FontAwesomeIcons.userFriends
            ),
            label: 'Members'
        ),

        BottomNavigationBarItem(
            icon: FaIcon(
                FontAwesomeIcons.users
            ),
            label: 'Groups'
        ),
        BottomNavigationBarItem(
            icon: FaIcon(
                FontAwesomeIcons.bars
            ),
            label: 'more'
        ),
      ],
    ),

    );
      // CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       expandedHeight: 25,
      //       floating: true,
      //       pinned: true,
      //       backgroundColor: Colors.white70,
      //       title: Text(titles[currentIndex],style: TextStyle(
      //           fontSize: 20,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.black
      //       ),
      //       ),
      //     ),
      //     SliverFillRemaining(
      //       child:  screen[currentIndex]),
      //   ],
      //     ),

  }

}


