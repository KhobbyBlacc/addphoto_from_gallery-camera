import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myhealthcop/constants/constants.dart';
import 'package:myhealthcop/widgets/element_container.dart';

import 'select_photo_options_screen.dart';

class HomeList extends StatefulWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  final ImagePicker _picker = ImagePicker();
  File? img;
  //image from cam
  Future getImage(ImageSource source) async {
    try {
      final XFile? image = await _picker.pickImage(source: source);
      if (image == null) return;
      File _img = File(image.path);
      setState(() {
        img = _img;
        Navigator.of(context).pop();
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.of(context).pop();
    }
  }

  //show bottomsheet select
  void _showSelectPhotoOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25.0),
        ),
      ),
      builder: (context) => DraggableScrollableSheet(
          initialChildSize: 0.28,
          maxChildSize: 0.4,
          minChildSize: 0.28,
          expand: false,
          builder: (context, scrollController) {
            return SingleChildScrollView(
              controller: scrollController,
              child: SelectPhotoOptionsScreen(
                onTap: getImage,
              ),
            );
          }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            height: 230,
            color: Colors.grey,
            child: Center(
              child: img == null
                  ? const Text('')
                  : ClipRRect(
                      child: Container(
                        width: double.infinity,
                        height: 230,
                          child: Image(
                        image: FileImage(img!),
                        fit: BoxFit.cover,
                      )),
                    ),
            )),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 39, 121, 214)),
                    child: IconButton(
                        onPressed: () {
                          _showSelectPhotoOptions(context);
                        },
                        icon: const Icon(
                          Icons.add_photo_alternate,
                          color: Colors.white,
                          size: 30,
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Yoga",
                    style: kTextHeading),
                  
                  const SizedBox(
                    height: 30,
                  ),
                  const Elements(),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Material(
                        color: Color.fromARGB(255, 155, 212, 242),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                // color: Color.fromRGBO(243, 175, 45, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: const Text("PREVIEW",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: blue,
                                    fontSize: 20)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Material(
                        color: Color.fromARGB(255, 83, 169, 240),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 20),
                            decoration: BoxDecoration(
                                // color: Color.fromRGBO(243, 175, 45, 1),
                                borderRadius: BorderRadius.circular(10)),
                            child: Text("PUBLISH CLASS",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                    fontSize: 20)),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}

class Source {}
