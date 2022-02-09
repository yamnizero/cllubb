import 'package:cllubb/shared/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class WidgetMembers extends StatelessWidget {
  const WidgetMembers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
    ListView.separated(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: AssetImage(kImage),
              ),
              SizedBox(width: 15,),
              //here want button => make posts page ------**
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Ahmed',
                      style:Theme.of(context).textTheme.bodyText2 ,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8,),
                    Text("Join 3 years ago",style: Theme.of(context).textTheme.caption),

                  ],
                ),
              ),
              Icon(MaterialIcons.more_horiz,
                  size: 30.0,
                  color:Theme.of(context).iconTheme.color
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context,  index) => const Text(''),
    );
  }
}
