import 'package:cllubb/shared/colors/colors.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class WidgetDotsIndicator extends StatelessWidget {
  const WidgetDotsIndicator({Key? key,@required this.dotsIndex}) : super(key: key);

  final double? dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: kClub,
        size: const Size.square(9.0),
        activeSize: const Size(18.0, 9.0),
        shape:RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color: kClub),
        ),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: const BorderSide(color:kClub),
        ),
      ),
      dotsCount: 3,
      position: dotsIndex!,
    );
  }
}
