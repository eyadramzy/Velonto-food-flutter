import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:velontofood/product/product_model.dart';

part 'products_api.g.dart';

@RestApi()
abstract class ProductsApi {
  factory ProductsApi(Dio dio, {String baseUrl}) = _ProductsApi;

  @GET('products')
  Future<List<ProductModel>> getProduct();
}
