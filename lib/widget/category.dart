import 'package:flutter/material.dart';
import 'package:food_app/utils/colors.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  bool selectedBox = false;

  void selectBox() {
    selectedBox = !selectedBox;
    print(selectedBox);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyColor.whiteColor,
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            color: MyColor.whiteColor,
            child: Column(children: [
              TextField(
                decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.search),
                    suffixIconColor: MyColor.greyColor,
                    filled: true,
                    hintText: 'Search for a restaraunt',
                    hintStyle: const TextStyle(color: MyColor.greyColor),
                    contentPadding: const EdgeInsets.all(15),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    fillColor: MyColor.lightGreyColor),
                onChanged: (value) {},
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 150.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      color: Colors.transparent,
                      child: Center(
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 6, bottom: 8),
                            decoration: const BoxDecoration(
                                color: MyColor.secondaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(32),
                              child: Icon(
                                Icons.sunny,
                                color: MyColor.whiteColor,
                                size: 54.0,
                              ),
                            ),
                          ),
                          const Text(
                            "category 1",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: MyColor.greyColor),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      color: Colors.transparent,
                      child: Center(
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 6, bottom: 8),
                            decoration: const BoxDecoration(
                                color: MyColor.lightGreyColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(32),
                              child: Icon(
                                Icons.nightlight_outlined,
                                color: MyColor.greyColor,
                                size: 54.0,
                              ),
                            ),
                          ),
                          const Text(
                            "category 1",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: MyColor.greyColor),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      color: Colors.transparent,
                      child: Center(
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 6, bottom: 8),
                            decoration: const BoxDecoration(
                                color: MyColor.lightGreyColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(32),
                              child: Icon(
                                Icons.favorite,
                                color: MyColor.greyColor,
                                size: 54.0,
                              ),
                            ),
                          ),
                          const Text(
                            "category 1",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: MyColor.greyColor),
                          )
                        ]),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 20),
                      color: Colors.transparent,
                      child: Center(
                        child: Column(children: [
                          Container(
                            margin: const EdgeInsets.only(top: 6, bottom: 8),
                            decoration: const BoxDecoration(
                                color: MyColor.lightGreyColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const Padding(
                              padding: EdgeInsets.all(32),
                              child: Icon(
                                Icons.favorite,
                                color: MyColor.greyColor,
                                size: 54.0,
                              ),
                            ),
                          ),
                          const Text(
                            "category 1",
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w500,
                                color: MyColor.greyColor),
                          )
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
