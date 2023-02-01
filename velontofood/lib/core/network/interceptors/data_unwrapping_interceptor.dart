import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:velontofood/core/util/common_functions.dart';

import '../../error/failure.dart';

final responseUnwrappingInterceptor = Provider<ResponseUnwrappingInterceptor>(
    (ref) => ResponseUnwrappingInterceptor(ref.read));

class ResponseUnwrappingInterceptor extends Interceptor {
  ResponseUnwrappingInterceptor(this.read);

  final Reader read;

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode != 200) {
      throw RemoteFailure(response.data['message']);
    }
    response.data = response.data;
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    printIfDebug('========== error ===========');
    if (err.response?.statusCode == 401) {
      // read(logoutControllerProvider).call(
      //     offline:
      //         true); //offline means to log out locally without logout request
    }
    printIfDebug(err.response?.toString());
    err.error = RemoteFailure(err.response?.data['message'] ?? err.message);
    handler.next(err);
  }
}
