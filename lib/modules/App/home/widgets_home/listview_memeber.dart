import 'package:cllubb/model/members/ContentPage/content_page.dart';
import 'package:cllubb/shared/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../model/members/user_form_members.dart';

class ListViewMember extends StatelessWidget {
  const ListViewMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (MediaQuery.of(context).size.height) / 9.5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) =>  UserFormMembers(
          onTap: ()
          {
            Get.to(()=> const ContentPage(),
                duration: const Duration(milliseconds: 500),
                transition: Transition.rightToLeft
            );
          },
        ),
        separatorBuilder: (context,index) => const SizedBox(width: 15,),
        itemCount: 15,
      ),
    );
  }
}
