
import 'package:cllubb/shared/components/compones.dart';
import 'package:flutter/material.dart';

class WidgetHeader extends StatelessWidget {
  final String title;
  final void Function() onTap;
  const WidgetHeader({Key? key,required this.title,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          title,
          style: Theme.of(context).textTheme.headline6,
         ),
        GestureDetector(
          onTap: () {
            onTap;
          },
          child: Text(
            "See all",
            style: textSee.copyWith(
                decoration: TextDecoration.underline,
                decorationThickness: 1),
          ),
        ),
      ],
    );
  }
}



class WidgetHeaderProgress extends StatelessWidget {
  const WidgetHeaderProgress({Key? key,required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    );
  }
}
