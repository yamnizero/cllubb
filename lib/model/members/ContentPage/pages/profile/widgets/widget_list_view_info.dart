import 'package:flutter/material.dart';

class WidgetListViewInfo extends StatelessWidget {
  const WidgetListViewInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Text('First Name',style: Theme.of(context).textTheme.bodyText1,),
              subtitle: Text('Mohammed',style: Theme.of(context).textTheme.bodyText2,
                  // generalInformationModel.firstName!
              ),
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
            ),
            ListTile(
              title: Text('Last Name',style: Theme.of(context).textTheme.bodyText1,),
              subtitle: Text('Gamal',style: Theme.of(context).textTheme.bodyText2,),
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
            ),
            ListTile(
              title: Text('NickName',style: Theme.of(context).textTheme.bodyText1,),
              subtitle: Text('yamni',style: Theme.of(context).textTheme.bodyText2,),
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
            ),
            ListTile(
              title: Text('Birth Date',style: Theme.of(context).textTheme.bodyText1,),
              subtitle: Text('13/9/1996',style: Theme.of(context).textTheme.bodyText2,),
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
            ),
            ListTile(
              title: Text('Gender',style: Theme.of(context).textTheme.bodyText1,),
              subtitle: Text('male',style: Theme.of(context).textTheme.bodyText2,),
            ),
            Divider(
              color: Theme.of(context).dividerTheme.color,
            ),
            ListTile(
              title: Text('Phone',style: Theme.of(context).textTheme.bodyText1,),
              subtitle: Text('+249907970206',style: TextStyle(color: Colors.blue),),
            ),
          ],
        ),
      ),
    );
  }
}
