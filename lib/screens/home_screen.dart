import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';
import 'package:food_app/widget/category.dart';
import 'package:food_app/widget/food_list.dart';
import 'package:food_app/widget/header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: MyColor.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            const CustomHeader(),
            const Category(),
            Flexible(child: FoodList()),
          ]),
        ),
      ),
    );
  }
}
