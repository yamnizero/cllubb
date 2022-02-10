import 'package:cllubb/model/Courses/Courses.dart';
import 'package:flutter/material.dart';

class ListViewCourses extends StatelessWidget {
  const ListViewCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 165,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) => const Courses(),
          separatorBuilder: (context,index) => const SizedBox(width:18,),
          itemCount: 5,
        ),
      ),
    );
  }
}
