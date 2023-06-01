import 'package:api_store/mainscreen/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final controller = Get.put(MainController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(builder: (controller) {
      return Scaffold(
          bottomNavigationBar:BottomNavigationBar(
            currentIndex: controller.currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  label: "product".tr,
                  activeIcon: const Icon(Icons.production_quantity_limits_sharp),
                  icon:const Icon(Icons.production_quantity_limits_rounded)),

              BottomNavigationBarItem(
                activeIcon: const Icon(Icons.category),
                icon:const Icon(Icons.category_outlined),
                label: 'category'.tr,
              ),
            ],
            onTap: (index) {
              controller.updateIndex(index);
            },
          ),
          body: IndexedStack(
            index: controller.currentIndex,
            children: controller.tabs,
          ));
    });
  }
}
