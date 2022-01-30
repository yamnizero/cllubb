import 'package:cllubb/model/members/ContentPage/widget_buttons_content.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';

class WidgetCardContents extends StatefulWidget {
  const WidgetCardContents({Key? key}) : super(key: key);

  @override
  _WidgetCardContentsState createState() => _WidgetCardContentsState();
}

class _WidgetCardContentsState extends State<WidgetCardContents> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
      child: Column(
        children: [
          SizedBox(
            height: height * 0.45,
            child: LayoutBuilder(
                builder: (context, constraints) {
              double innerHeight = constraints.maxHeight;
              double innerWidth = constraints.maxWidth;
              return Stack(
                fit: StackFit.expand,
                children: [
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        height: innerHeight * 0.72,
                        width: innerWidth,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Theme.of(context).cardTheme.color,
                        ),
                        child: Column(
                          children:  [
                             const  SizedBox(
                              height: 60,
                            ),
                            Text(
                              'Mohammed',
                              style: Theme.of(context).textTheme.bodyText1,
                            ),
                            const  SizedBox(
                              height: 5,
                            ),
                            Text(
                              'yamni',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                                padding: kPadding,
                              child: WidgetButtonsContent()
                            )
                          ],
                        ),
                      ),
                  ),
                  const Positioned(
                    top: 15,
                    left: 0,
                    right: 0,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 69,
                        child: CircleAvatar(
                          radius: 65,
                          backgroundImage: AssetImage(
                            kImage,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
