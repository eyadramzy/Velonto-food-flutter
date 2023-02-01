import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velontofood/core/util/error_indicator.dart';
import 'package:velontofood/product/products_list_controller.dart';

class ProductPage extends ConsumerStatefulWidget {
  const ProductPage({
    Key? key,
  }) : super(key: key);
  static String id = "ProductPage";
  @override
  ConsumerState createState() => _ProductPageState();
}

class _ProductPageState extends ConsumerState<ProductPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(productList);
    return Scaffold(
      body: state.when(
        data: (data) {
          return ListView.separated(
              separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 16,
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              itemCount: data.length,
              itemBuilder: (context, index) => Text(data[index].title));
        },
        error: (error, trace) => ErrorIndicator(message: error.toString()),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
