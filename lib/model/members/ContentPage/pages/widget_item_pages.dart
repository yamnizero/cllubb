import 'package:flutter/material.dart';
//
// class WidgetItemPages extends StatelessWidget {
//
//     WidgetItemPages({Key? key,
//   required this.leadingIcon,
//   required this.title,
//    this.trailing,
//   required this.onTap,
//       this.num,
//   }) : super(key: key);
//   IconData leadingIcon;
//   String title;
//   Widget? trailing;
//   Function() onTap;
//     int? num;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Icon(
//         leadingIcon,
//         color: Theme.of(context).iconTheme.color,
//       ),
//       title: Text(title,style: Theme.of(context).textTheme.bodyText2,),
//       trailing: trailing ??= Icon(
//         Icons.arrow_forward_ios,
//         color: Theme.of(context).iconTheme.color,
//       ),
//       onTap: onTap,
//     );
//   }
// }

class WidgetItemPages extends StatelessWidget {


  WidgetItemPages({Key? key,
    required this.leadingIcon,
    required this.title,
    required this.onTap,
    required this.num
  }) : super(key: key);
  IconData leadingIcon;
  String title;
  Function() onTap;
   int num = 0;

  @override
  Widget build(BuildContext context) {
    return   Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap:onTap,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          leadingIcon,
                          color: Theme.of(context).iconTheme.color,
                        ),
                        const SizedBox(width: 15,),
                        Center(child: Text(title,style: Theme.of(context).textTheme.bodyText2,),),
                      ],
                    ),
                    Row(
                      children: [
                        (num > 0) ? CircleAvatar(
                          radius: 12.0,
                          backgroundColor: Colors.blue.shade100,
                          child: Text(
                          num.toString(),
                            style: const TextStyle(color: Colors.black,fontSize: 12)
                          ),
                        ) : const Text( ''),
                        const SizedBox(width: 5,),
                        const Icon(
                          Icons.arrow_forward_ios,
                          size: 15.0,
                        ),

                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
