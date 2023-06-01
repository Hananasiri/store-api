import 'package:api_store/category/view/screen/category_screen.dart';
import 'package:api_store/product/view/screen/screen/product_screen.dart';
import 'package:get/get.dart';


class MainController extends GetxController {
  var currentIndex = 0;

  final tabs = [
    ProductScreen(),
    CategoryScreen()
  ];

  updateIndex(int index) {
    currentIndex = index;
    update();
  }
}
