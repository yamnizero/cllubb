import 'package:cllubb/shared/colors/colors.dart';
import 'package:cllubb/shared/components/size_config.dart';
import 'package:cllubb/shared/components/space_widget.dart';
import 'package:flutter/material.dart';


class WidgetGeneralButton extends StatelessWidget {
  const WidgetGeneralButton({Key? key,
   required this.text,
    this.iconData,
    this.onTap,
    this.color}) : super(key: key);

  final String? text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap ,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration:  BoxDecoration(
          color: kClub ,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child:  Text(
            text!,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}

class WidgetButtonWithIcon extends StatelessWidget {
  const WidgetButtonWithIcon({Key? key,
   required this.text,
    this.iconData,
    this.onTap,
    this.color}) : super(key: key);

  final String text;
  final IconData? iconData;
  final VoidCallback? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidth,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: color,
            ),
            const HorizontalSpace(2),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                fontSize: 12,
                color: Colors.black,
              ),
              textAlign: TextAlign.left,
            )
          ],
        ),
      ),
    );
  }
}

