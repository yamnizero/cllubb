import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

Widget? buttonSheetRecentlyActive(context) {
  showModalBottomSheet(context: context, builder: (BuildContext c)
  {
    return Wrap(
      children: [
        Container(
          color: Colors.grey.withOpacity(0.1),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Text(
                        'Sort By',
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: CircleAvatar(
                        radius: 15.0,
                        backgroundColor: Colors.grey.shade400,
                        child: Icon(
                          Icons.close,
                          size: 15.0,
                          color:Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(height: 10,thickness: 1,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    // color:Colors.grey.withOpacity(0.1),
                    width: MediaQuery.of(context).size.width,

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Recently Active',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Alphabetical',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                // Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Newest members',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                // Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Random',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                //Icon(MaterialIcons.check)
                              ],
                            ),
                          ),
                          Divider(height: 10,thickness: 1,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Popular',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                // Icon(MaterialIcons.check)
                              ],
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
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
