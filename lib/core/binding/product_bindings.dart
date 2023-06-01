import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import '../../category/logic/controller/category_controller.dart';
import '../../mainscreen/controller/main_controller.dart';
import '../../product/logic/controller/cart_controller.dart';
import '../../product/logic/controller/product_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
    Get.put(CategoryController());
    Get.put(MainController());
    Get.find<CategoryController>();
  }
}
