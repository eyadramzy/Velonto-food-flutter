import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'network/interceptors/data_unwrapping_interceptor.dart';
import 'network/network_info.dart';

final secureStorage = Provider<FlutterSecureStorage>((ref) => const FlutterSecureStorage());
final sharedPreferences =
    Provider<SharedPreferences>((ref) => throw UnimplementedError());
final baseUrl = Provider<String>((ref) => throw UnimplementedError());

final dioProvider = Provider.autoDispose<Dio>((ref) {
  Dio dio = Dio(BaseOptions(baseUrl: ref.watch(baseUrl)));
  dio.interceptors.add(ref.watch(responseUnwrappingInterceptor));
  dio.interceptors.add(
      PrettyDioLogger(requestHeader: true, requestBody: true, maxWidth: 100));
  return dio;
});

final internetConnectionCheckerProvider =
    Provider<InternetConnectionChecker>((ref) => InternetConnectionChecker());

final networkInfo = Provider<NetworkInfo>(
    (ref) => NetworkInfoImpl(ref.watch(internetConnectionCheckerProvider)));
