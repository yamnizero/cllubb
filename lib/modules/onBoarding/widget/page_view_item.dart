import 'package:cllubb/shared/components/size_config.dart';
import 'package:cllubb/shared/components/space_widget.dart';
import 'package:flutter/material.dart';


class PageViewItem extends StatelessWidget {
  const PageViewItem ({Key? key, this.title, this.subtitle, this.image}) : super(key: key);
  final String? title;
  final String? subtitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const VerticalSpace(20),
          SizedBox(
            height: SizeConfig.defaultSize! * 25,
              child: Image.asset(image!)),
          const VerticalSpace(3),
           Text(
            title!,
            style: const  TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
          const VerticalSpace(1.5),
           Text(
             subtitle!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
