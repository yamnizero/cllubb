import 'package:flutter/material.dart';

class MembersScreenView extends StatelessWidget {
  const MembersScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text(
          'Members',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        centerTitle: true,
      ),
    );
  }
}
