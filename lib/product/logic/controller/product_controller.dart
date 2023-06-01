import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import '../../model/product_model.dart';
import '../service/product_service.dart';


class ProductController extends GetxController {
  var productList = <ProductModels>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
      getProducts();
   }

    void getProducts() async {
      var products = await ProductServices.getProduct();

      try {
        isLoading(true);
        if (products.isNotEmpty) {
          productList.addAll(products);
        }
      } finally {
        isLoading(false);
      }
    }
    }

