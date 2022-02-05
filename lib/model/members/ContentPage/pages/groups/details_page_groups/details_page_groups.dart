import 'package:flutter/material.dart';

import 'widgets/widget_info_groups.dart';
import 'widgets/widget_item_page_details.dart';

class DetailsPageGroups extends StatelessWidget {
  const DetailsPageGroups({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            WidgetInfoGroups(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: WidgetItemPageDetails(),
            )
          ],
        ),
      ),
    );
  }
}
