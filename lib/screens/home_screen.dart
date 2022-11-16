import 'package:flutter/material.dart';
import 'package:myhealthcop/widgets/custom_app_bar.dart';
import 'package:myhealthcop/widgets/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          Align(
            alignment: Alignment.bottomCenter,
            child: HomeList(),
          ),
          CustomAppBar(),
        ],
      ),
    );
  }
}
