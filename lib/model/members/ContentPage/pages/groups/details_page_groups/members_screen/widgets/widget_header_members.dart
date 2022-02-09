import 'package:flutter/material.dart';

class WidgetHeaderMembers extends StatelessWidget {
  final String title;
  const WidgetHeaderMembers({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
           Spacer(),
          ],
        ),
        Divider(
          color: Theme.of(context).dividerTheme.color,
        ),
      ],
    );
  }
}