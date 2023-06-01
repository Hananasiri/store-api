import 'package:api_store/category/view/screen/category_screen.dart';
import 'package:get/get.dart';
import '../core/binding/product_bindings.dart';
import '../mainscreen/view/main_screen.dart';
import '../product/view/screen/product_screen.dart';

class AppRoutes {
  static final routes = [
    GetPage(
        name: Routes.homeScreen,
        page: () => const ProductScreen(),
        binding: ProductBinding()),
    GetPage(
        name: Routes.categoryScreen,
        page: () => const CategoryScreen(),
        binding: ProductBinding()),
    GetPage(
        name: Routes.mainScreen,
        page: () => MainScreen(),
        binding: ProductBinding()),
  ];
}

class Routes {
  static const homeScreen = '/home_screen';
  static const categoryScreen = '/category_screen';
  static const mainScreen = '/main_screen';
}
