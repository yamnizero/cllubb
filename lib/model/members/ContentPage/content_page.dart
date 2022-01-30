import 'package:cllubb/model/members/ContentPage/widget_card_contentpage.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {

  @override
  Widget build(BuildContext context)
  {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              width: width,
              height: height / 3.5,
              child: Image.asset(
                kImage,
                // widget.userFormMembersModel.imageUrl!,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            ),
            WidgetCardContents()
          ],
        )
      ),
    );
  }
}
