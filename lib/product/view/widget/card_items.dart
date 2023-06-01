import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/constant/text_utils.dart';
import '../../logic/controller/cart_controller.dart';
import '../../logic/controller/product_controller.dart';
import '../../model/product_model.dart';

class CardItems extends StatelessWidget {
  CardItems({Key? key}) : super(key: key);

  final controller = Get.put(ProductController());
  final cartController = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(
            color: Colors.grey,
          ),
        );
      } else {
        return Expanded(
          child: GridView.builder(
            itemCount: controller.productList.length,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 0.8,
              mainAxisSpacing: 9.0,
              crossAxisSpacing: 8.0,
              maxCrossAxisExtent: 200,
            ),
            itemBuilder: (context, index) {
              return buildCardItems(
                  image: controller.productList[index].image,
                  price: controller.productList[index].price,
                  rate: controller.productList[index].rating.rate,
                  productId: controller.productList[index].id,
                  productModels: controller.productList[index],
                  onTap: () {
                    // Get.to(() => ProductDetailesScreen(
                    //       productModels: controller.productList[index],
                    //     ));
                  });
            },
          ),
        );
      }
    });
  }

  Widget buildCardItems({
    required String image,
    required double price,
    required double rate,
    required int productId,
    required ProductModels productModels,
    required Function() onTap,
  }) {
    return Padding(
        padding: const EdgeInsets.all(5),
        child: InkWell(
            onTap: onTap,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 3.0,
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: IconButton(
                      onPressed: () {
                        cartController.addProductToCart(productModels);
                      },
                      icon: const Icon(
                        Icons.shopping_cart,
                        color: Colors.black,
                        size: 19,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 140,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.network(
                      image,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ $price",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Colors.cyanAccent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 3, right: 2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextUtils(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  text: "$rate",
                                  color: Colors.white,
                                  underLine: TextDecoration.none,
                                ),
                                const Icon(
                                  Icons.star,
                                  size: 13,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}
