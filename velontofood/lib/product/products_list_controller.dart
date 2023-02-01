

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velontofood/core/providers.dart';
import 'package:velontofood/product/product_model.dart';
import 'package:velontofood/product/products_api.dart';


final productList =
FutureProvider.autoDispose<List<ProductModel>>((ref) async {
  return await ProductsApi(ref.watch(dioProvider)).getProduct();
});
