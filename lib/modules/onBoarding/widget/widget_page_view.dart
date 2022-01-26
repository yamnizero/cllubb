import 'package:flutter/material.dart';

import 'page_view_item.dart';


class WidgetPageView extends StatelessWidget {
  const WidgetPageView({Key? key,@required this.pageController}) : super(key: key);
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
         PageViewItem(
          image: 'assets/images/clluup.png',
          title:'E Shopping' ,
          subtitle: 'Explore top organic fruits & grab them',
        ),
         PageViewItem(
          image: 'assets/images/atworld.png',
          title:'Delivery on the way' ,
          subtitle: 'Get your order by speed delivery',
        ),
         PageViewItem(
           image: 'assets/images/clluup.png',
          title:'Delivery Arrived' ,
          subtitle: 'Order is arrived your place  ',
        ),
      ],
    );
  }
}
