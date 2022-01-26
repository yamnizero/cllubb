
import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';


Widget defaultButton({
  double width = double.infinity,
  Color background = kClub,
  double radius = 10.0,
  required Function()? function,
  required String? text,
}) =>
    Container(
      width: width,
      height: 40.0,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text!.toUpperCase(),
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),
    );

Widget dropButton({
  required Function()? function,
  required String? text,
}) => ElevatedButton(
        child: Row(
          children: [
            Text(text!),
            Icon(MaterialIcons.arrow_drop_down),
          ],
        ),
  onPressed: function,
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        onPrimary: Colors.black,
            shape: StadiumBorder()
         ),
);



//-----

Widget defaultFormField({
  required TextEditingController? controller,
  required TextInputType? type,
  required String? Function(String?)? validation,
  bool isPassword = false,
  required String? label,
  required IconData? prefix,
  IconData? suffix,
  Function()? suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      validator:validation,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        prefixIcon: Icon(
          prefix,
          color: kPrimaryColor,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(
                  suffix,
                  color: kPrimaryColor,
                ),
              )
            : null,
        labelText: label,
        labelStyle: TextStyle(color: kTextFielColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kClub),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: kClub),
        ),
      ),
    );


Widget? buttomSheetFollow(context) {
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                       children: [
                         CircleAvatar(
                           radius: 15.0,
                           backgroundImage:AssetImage('assets/images/me2.png'),
                         ),
                         SizedBox(width: 15,),
                         Center(child: Text('Mohammed',style: TextStyle(fontSize: 14),)),
                       ],
                     ),
                     Row(
                       children: [
                         GestureDetector(
                           onTap: () {
                             Navigator.pop(context);
                           },
                           child: Icon(
                             Icons.close,
                             size: 15.0,
                           ),
                         ),

                       ],
                     ),
                   ],
                 ),
                SizedBox(height: 5,),
                Divider(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                         Icon(Icons.close),
                          SizedBox(width: 15,),
                          Center(child: Text('Unfollow',style: TextStyle(fontSize: 14),)),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  );
}
void navigateTo(context, widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
);
void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(
    builder: (context) => widget,
  ),
      (Route<dynamic> route) => false,
);

Widget buildSeparator() => Container(
  height: 1.0,
  width: double.infinity,
  color: Colors.grey[300],
);
//
//
// void showToast() =>
//     Fluttertoast.showToast(
//     msg: 'Connection request sent',
//   toastLength: Toast.LENGTH_SHORT,
//   backgroundColor: Colors.grey.withOpacity(0.5),
//   textColor: Colors.black,
//   // gravity: ToastGravity.BOTTOM,
//   fontSize: 12,
// );
// void showToastCanel() => Fluttertoast.showToast(
//     msg: 'Connection request sent',
//   toastLength: Toast.LENGTH_SHORT,
//   backgroundColor: Colors.grey.withOpacity(0.5),
//   textColor: Colors.black,
//   // gravity: ToastGravity.BOTTOM,
//   fontSize: 12,
// );
//
// // ListTile(
// // leading: Icon(Icons.account_circle, size: 50),
// // title: Text('Title Text'),
// // subtitle: Text('Secondary Text'),
// // ),
// // Icon(Ionicons.ios_trash_sharp),
// // Icon(FontAwesome.glass),
// // Icon(MaterialIcons.forward),
// // Icon(MaterialIcons.),
// // // Icon(FontAwesome5.address_book),
// // Icon(FontAwesome5Solid.address_book),
//
