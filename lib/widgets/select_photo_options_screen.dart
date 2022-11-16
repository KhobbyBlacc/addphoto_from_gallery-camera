import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SelectPhotoOptionsScreen extends StatelessWidget {
  final Function(ImageSource source) onTap;
  const SelectPhotoOptionsScreen({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey.shade300,
      padding: const EdgeInsets.all(20),
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -35,
            child: Container(
              width: 50,
              height: 6,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.5),
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Material(
               color: Colors.grey[200],
             borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () => onTap(ImageSource.camera),
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      // color: Color.fromRGBO(243, 175, 45, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.camera,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Take a picture',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
               padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Text(
                'OR',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Material(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
              child: InkWell(
                onTap: () => onTap(ImageSource.gallery),
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  decoration: BoxDecoration(
                      // color: Color.fromRGBO(243, 175, 45, 1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.photo,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 14,
                      ),
                      Text(
                        'Select from gallery',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ])
        ],
      ),
    );
  }
}
