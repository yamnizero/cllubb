import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/widget_input_image.dart';

class PhotoScreenView extends StatefulWidget {
  const PhotoScreenView({Key? key}) : super(key: key);

  @override
  State<PhotoScreenView> createState() => _PhotoScreenViewState();
}

class _PhotoScreenViewState extends State<PhotoScreenView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:AppBar(
          elevation: 0.0,
          title: Text(
            'Photos',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: InkWell(
                onTap: ()
                {
                  Get.to(()=>  WidgetInputImages(),
                      duration: const Duration(milliseconds: 500),
                      transition: Transition.rightToLeftWithFade
                  );
                },
                child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    radius: 15,
                    child: Icon(
                      Icons.add,
                      color:Theme.of(context).iconTheme.color,
                      size: 18,
                    )
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
              preferredSize: Size.fromHeight(56),
              child:Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  color: Colors.grey.shade200.withOpacity(0.5),
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Colors.white
                      ),
                      labelColor:Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: true,
                      tabs: [
                        Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              // color: Colors.grey.shade100,
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Tab(child: Text('Photos'),))),
                        Container(
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              //  color: Colors.grey.shade100,
                            ),
                            child: Align(
                                alignment: Alignment.center,
                                child: Tab(child: Text('Albums',),))),

                      ],
                    ),
                  ),
                ),
              )
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.search,size: 100,),
                Text('No Photos have been found')
              ],
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.search,size: 100,),
                Text('No Photos have been found')
              ],
            ),
          ],
        ),
      ),
    );
  }

}
