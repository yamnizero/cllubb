import 'package:cllubb/shared/components/compones.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class WidgetButtonsContent extends StatefulWidget {
  const WidgetButtonsContent({Key? key}) : super(key: key);

  @override
  _WidgetButtonsContentState createState() => _WidgetButtonsContentState();
}

class _WidgetButtonsContentState extends State<WidgetButtonsContent> {
  bool connection = true;
  bool follow = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          style: TextButton.styleFrom(
            primary: ThemeData.fallback().primaryColor,
          ),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 22,
                  // isPassword ? Icons.visibility : Icons.visibility_off,
                  child: Icon(
                    connection ? AntDesign.user : Icons.close,
                    color: Theme.of(context).iconTheme.color,
                    size: 22,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Connect',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          onPressed: () {
            setState(() {
              connection = !connection;
              showToast(
                  text:  connection
                      ? 'Connection request cancel'
                      : 'Connection request sent',
                states: ToastStates.SUCCESS,
              );
            });
          },
        ),
        TextButton(
          style: TextButton.styleFrom(
            primary: ThemeData.fallback().primaryColor,
          ),
          child: Column(
            children: [
              CircleAvatar(
                  radius: 22,
                  backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.4),
                  child: Icon(
                    AntDesign.upcircleo,
                    color: Colors.black.withOpacity(0.6),
                    size: 22,
                  ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                follow ? 'Following' : 'Follow',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
          onPressed: () {
            setState(() {
              follow = !follow;
              follow ? showToast(
                  text:  connection
                  ? 'Connection request cancel'
                      : 'Connection request sent',
                  states: ToastStates.SUCCESS,
              ) : buttonSheetFollow(context);
            });

          },
        ),
        GestureDetector(
          onTap: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) =>
            //         ChatDetailPage(),
            //   ),
            // );
          },
          child: Column(
            children: [
              CircleAvatar(
                  radius: 22,
                  backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.4),

                  child: Icon(
                    AntDesign.message1,
                    color: Colors.black.withOpacity(0.6),
                    size: 22,
                  )),
              const SizedBox(
                height: 10,
              ),
               Text(
                'Message',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              CircleAvatar(
                  radius: 22,
                  backgroundColor: Theme.of(context).backgroundColor.withOpacity(0.4),

                  child: Icon(
                    AntDesign.eye,
                    color: Colors.black.withOpacity(0.6),
                    size: 22,
                  )),
              const SizedBox(
                height: 10,
              ),
              Text(
                'View As',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
