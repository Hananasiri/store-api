import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../model/product_model.dart';


class ProductDetailesScreen extends StatelessWidget {
  final ProductModels productModels;
  const ProductDetailesScreen({Key? key,
  required this.productModels,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             //   ImageSliders(
             //     imageUrl:productModels.image,
             //   ),
             //  ClothesInfo(
             //    title: productModels.title,
             //    productId: productModels.id,
             //    rate: productModels.rating.rate,
             //    description: productModels.description,
             //  ),
             //  // SizeList(),
             // // const SizeList(),
             //  AddCart(
             //    price: productModels.price,
             //    productModels: productModels,
             //  ),
            ],
          ),
        ),
      ),
    );
  }
}
