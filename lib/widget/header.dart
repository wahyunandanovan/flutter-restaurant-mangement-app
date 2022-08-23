import 'package:flutter/material.dart';

import 'package:food_app/utils/colors.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'What do you have a taste for?',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w700,
                        color: MyColor.blackColor),
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    '1240 Restaraunts available',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: MyColor.greyColor),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                    color: MyColor.primaryColor,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.message, color: MyColor.whiteColor),
                      Text(
                        ' 2',
                        style: TextStyle(
                            color: MyColor.whiteColor,
                            fontSize: 12,
                            decoration: TextDecoration.none),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
