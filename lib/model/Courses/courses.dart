
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';



class CoursesModel{
  String? title;
  String? name;
  String? imageUrl;
  String? tag;

  CoursesModel({
   @required this.title,
    @required this.name,
    @required this.imageUrl,
    @required this.tag,
  });
}




class Courses extends StatelessWidget {
  // final CoursesModel coursesModel;
  final void Function()? onTap;
  const Courses(
      // this.coursesModel,
      {Key? key,this.onTap}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width/2,
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                  elevation: 6.0,
                  color: Colors.black,
                  child: Image.asset(
                    'assets/images/yamni.jpg',
                    // coursesModel.imageUrl!,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 11,
                  left: 4,
                  child: Container(
                    height: 20,
                    width: 70,
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(30),
                          bottomRight: Radius.circular(40),
                        ),
                        color: Colors.blue,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withOpacity(0.3)
                          )
                        ]
                    ),
                    child: const Center(
                      child: Text(
                        'Start',
                        // coursesModel.tag!,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 6,
                  bottom: 15,
                  child: Container(
                    child: LinearPercentIndicator(
                      width: 120,
                      lineHeight: 3,
                      percent: 40/100,
                      animation: true,
                      animationDuration: 1500,
                    ),
                  ),
                ),
                 Positioned(
                  bottom: 10,
                    right: 13,
                    child: Icon(
                      Icons.cloud_download_outlined,
                      color:  IconTheme.of(context).color,
                    )
                 ),
              ],
            ),
             Text(
              'How to build application application ',
             // coursesModel.title!,
               maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyText1,
            ),
             const SizedBox(height: 5,),
             Text(
              'yamni',
                // coursesModel.name!,
               style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
