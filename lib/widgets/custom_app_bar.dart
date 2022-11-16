import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Padding(
        padding: const EdgeInsets.only(
          left: 10,
          top: 20 * 2,
          right: 10,
        ),
      child: Container(
          height: size.height * 0.20,
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const[
            Icon(Icons.arrow_back, color: Colors.white,),
             Spacer(),
            Text("New Class",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
               color: Colors.white,
            ),),
             Spacer(),
            Icon(Icons.more_vert,color: Colors.white,)
          ],
        ),
      ),
    );
  }
}
