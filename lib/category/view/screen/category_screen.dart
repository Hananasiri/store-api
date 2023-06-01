import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/text_utils.dart';
import '../widget/category_widget.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

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
                  text: "Category",
                  underLine: TextDecoration.none,
                ),
              ),
            ),
            CategoryWidget(),
          ],
        ),
      ),
    );
  }
}
