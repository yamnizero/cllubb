import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:image_picker/image_picker.dart';
import 'widget_bottom_sheet_pupblic.dart';

class WidgetInputImages extends StatefulWidget {
  // String imagePath="";
  // // File? pickedFile;
  // final picker = ImagePicker();
  WidgetInputImages({Key? key}) : super(key: key);

  @override
  State<WidgetInputImages> createState() => _WidgetInputImagesState();
}

class _WidgetInputImagesState extends State<WidgetInputImages> {
  TextEditingController TextWithImage = TextEditingController();

  var formKey = GlobalKey<FormState>();
  File? _pickedImage;

  void _pickImageGallery() async {
    final picker = ImagePicker();
    final pickedImageFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedImageFile != null) {
      setState(() {
        _pickedImage = File(pickedImageFile.path);
      });
    }
  }

  void _pickImageCamera() async {
    final picker = ImagePicker();
    final pickedImageFile = await picker.pickImage(source: ImageSource.camera);
    if (pickedImageFile != null) {
      setState(() {
        _pickedImage = File(pickedImageFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: Text('Add New Photo ',
            style: Theme.of(context).textTheme.bodyText1),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
              onTap: () {
                //
              },
              child: TextButton(
                  style: ThemeData.fallback().textButtonTheme.style,
                  onPressed: () {},
                  child: Text('Upload',
                      style: Theme.of(context).textTheme.bodyText2)),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: TextField(
                      controller: TextWithImage,
                      decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          hintText: 'Write something about your photos,to be'
                              'shown on your timeline',
                          hintStyle: Theme.of(context).textTheme.bodyText2),
                      maxLines: 3,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Row(
                    children: [
                      Container(),
                      SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) => imagesPickers(context),
                          );
                        },
                        child: Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20.0)),
                            child: Icon(
                              MaterialIcons.add_a_photo,
                              color: Colors.blue,
                            )),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      bottomSheetPupbliPhoto(context);
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width / 3.5,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(color: Colors.black)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Icon(Ionicons.earth_outline),
                          Text('Public')
                        ],
                      ),
                    ),
                  ),
                ),
                _pickedImage != null
                    ? Container(
                        width: double.infinity,
                        height: 150,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Image.file(_pickedImage!),
                      )
                    : Container()
              ],
            ),
          ),
        ),
      ),
    );
  }

  imagesPickers(
    BuildContext context,
  ) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height * 0.2,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Text(
            'Choose Photo',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: _pickImageGallery,
                // onTap: () {
                //   // takePhoto(ImageSource.gallery);
                // },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.image),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Gallery',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 80,
              ),
              InkWell(
                onTap: _pickImageCamera,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.camera),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'camera',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
