import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

extension RefExtension on Ref {
  CancelToken cancelToken() {
    final token = CancelToken();
    onDispose(token.cancel);
    return token;
  }

  Future<void> debounce(
      {Duration duration = const Duration(milliseconds: 500)}) {
    final completer = Completer<void>();
    final timer = Timer(duration, () {
      if (!completer.isCompleted) {
        completer.completeError(StateError('Canceled'));
      }
    });
    return completer.future;
  }
}
