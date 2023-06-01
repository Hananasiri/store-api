import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/text_utils.dart';
import '../widget/card_items.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 15, top: 50),
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15, top: 30),
                child: TextUtils(
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  text: "Products",
                  underLine: TextDecoration.none,
                ),
              ),
            ),
            CardItems(),
          ],
        ),
      ),
    );
  }
}
