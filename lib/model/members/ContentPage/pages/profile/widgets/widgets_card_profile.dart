import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';

class WidgetCardProfile extends StatelessWidget {
  const WidgetCardProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Positioned(

      child: Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage(
                      kImage
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blueAccent,

                    ),
                    child: Center(
                        child: Text('Teacher', style: TextStyle(color: Colors.white),
                        ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text('Mohammed',
              style: Theme.of(context).textTheme.bodyText1
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('@nkname',
                  style:Theme.of(context).textTheme.bodyText2
                ),
                SizedBox(width: 5,),
                Text('-',
                  style: Theme.of(context).textTheme.subtitle2
                ),
                SizedBox(width: 5,),
                Text('Joined May 6,2020',
                  style: Theme.of(context).textTheme.headline1
                ),
              ],
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('1', style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 5,),
                      Text('Follower',
                        style:Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      Text('5',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      SizedBox(height: 5,),
                      Text('Following',
                        style:Theme.of(context).textTheme.bodyText2,
                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
