import 'package:cllubb/model/members/ContentPage/pages/groups/details_page_groups/details_page_groups.dart';
import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'button_organizer.dart';

class WidgetItemGroup extends StatelessWidget {
  const WidgetItemGroup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(()=> const DetailsPageGroups(),
            duration: const Duration(milliseconds: 500),
            transition: Transition.rightToLeftWithFade
        );
      },
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: MediaQuery.of(context).size.width / 3.9,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    kImage,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Business Meet',
                              style:Theme.of(context).textTheme.bodyText1
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text('Public / meet -',
                                  style:Theme.of(context).textTheme.caption
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text('7 members',
                                  style: Theme.of(context).textTheme.caption),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          buttonOrganizer(
                            context,
                            function: () {
                              buttomSheetOrganizer(context);
                            },
                            width: MediaQuery.of(context).size.width / 3,
                            height: 50,
                            text: 'Organizer',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
